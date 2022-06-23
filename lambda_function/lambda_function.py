import sys
import os
#Librería utilizada para generar logs en CloudWatch en las ejecuciones de la función Lambda, y así poder depurar el código
import logging
logger = logging.getLogger()
logger.setLevel(logging.INFO)

if './optionalPackages' not in sys.path:
    sys.path.append('./optionalPackages')

import json, os, boto3, base64, time,re,urllib3, math

#Librerías usadas para decodificar el token en base64 de Cognito
from jose import jwk, jwt
from jose.utils import base64url_decode

#Definiremos las variables globales
def lambda_handler(event, context):
    awsAccountId = userName = email = cognitoGroup = groupName = dashboardRegion = identityRegion = quickSight = quickSightIdentity = \
    region = urlType = openIdToken = userRole = None

    #Se verifica que el token de cognito pasado por parámetro a la API REST es válido, y obtendremos el email y el grupo de cognito del usuario decodificando dicho token
    def checkTokenValidity():
        nonlocal userName, openIdToken, email, cognitoGroup
        try:
            stage = 'Before parsing payload'
            payload = json.loads(base64.b64decode(openIdToken.split('.')[1]+ "========"))
            logger.info(payload)
            email = payload['email']
            cognitoGroupZ = payload['cognito:groups']

            if 'authors' in cognitoGroupZ:
                cognitoGroup = 'authors'
            elif 'readers' in cognitoGroupZ:
                cognitoGroup = 'readers'
            else:
                mode='noGroupUser'

            logger.info(email)
            logger.info(cognitoGroup)
            
            return True

        except Exception as e:
            raise Exception('Invalid Token');

    #Se obtiene el listado de dashboards a los que el usuario tiene acceso. Si el usuario no existe, se creará el usuario, grupo, y se añadirá al usuario a dicho grupo
    def getDashboardList(recursionDepth):
        nonlocal awsAccountId, userName, email, dashboardRegion, identityRegion, quickSight
        
        try:
            logger.info('In getDashboardList function')
            #Si la recursión es mayor que 2, se lanzará una excepción
            if recursionDepth > 2:
                raise Exception('getDashboardList: Deeper recursion than expected')
            recursionDepth += 1
                            
            #Se obtiene el listado de Dashboards, mediante una llamada a la API, pasándole como parámetro el email del usuario de cognito, 
            #el cual coincidirá con el usuario dado de alta en QS

            response = quickSight.search_dashboards(
                            AwsAccountId = awsAccountId,
                            Filters = [
                                        {
                                            'Operator': 'StringEquals',
                                            'Name': 'QUICKSIGHT_USER',
                                            'Value': 'arn:aws:quicksight:' + identityRegion + ':' + awsAccountId + ':user/default/' + email
                                        }
                                    ]
                        )
            
            #Compilaremos la respuesta incluyendo únicamente los nombres e ids de los Dashboards
            repackedResponse={}
            repackedResponse['Dashboards']=[]
            for dashboard in response['DashboardSummaryList']:
                dashboardRepacked={}
                dashboardRepacked['Name']=dashboard['Name']
                dashboardRepacked['DashboardId']=dashboard['DashboardId']
                repackedResponse['Dashboards'].append(dashboardRepacked)
                
            logger.info(repackedResponse)
            
            #Retornaremos el listado de Dashboards
            return repackedResponse
            
        except quickSight.exceptions.ResourceNotFoundException as e:
            #Registraremos al usuario en QS si no existe
            registerUser()
            #Crearemos el grupo, y añadiremos al usuario en dicho grupo  
            createGroupMembership(1)
            #Haremos una llamada recursiva para obtener el listado de Dashboards una vez que el usuario ha sido creado en QS
            return getDashboardList(recursionDepth)
            
        except Exception as e:
            raise Exception('Lambda getDashboardList function:'+str(e))
    
    #Registraremos al usuario en Quicksight. Si el usuario pertenece al grupo de Cognito denominado 'authors', el rol con el que se registrará a este usuario en QS
    #será el de 'author', por lo que podrá crear en QS sus propios análisis y dashboards. En caso contrario (pertenezca al grupo de cognito 'readers'), el rol
    #con el que se registrará a este usuario en QS será el de 'reader', por lo que sólo podrá visualizar los dashboards a los que tenga accesos

    def registerUser():
        nonlocal awsAccountId, email, quickSightIdentity, cognitoGroup, userRole
        
        if cognitoGroup == 'authors':
            userRole = 'AUTHOR'

        else: #cognitoGroup == 'readers':
            userRole = 'READER'


        logger.info(userRole)  

        #Se procede al resigtro del usuario en QS con el rol correspondiente
        try:
            quickSightIdentity.register_user(
                IdentityType ='QUICKSIGHT',
                Email = email,
                UserRole = userRole,
                AwsAccountId = awsAccountId,
                Namespace = 'default',
                UserName = email
            )
   
        except Exception as e:
            raise Exception('Lambda registerUser function:'+str(e))
    
     #Se añadirá al usuario al grupo 'authors' o 'readers' de QS, dependiendo del grupo de cognito al que pertenezca el usuario 
     #Si el grupo no existe en QS, se creará
    def createGroupMembership(recursionDepth):
        nonlocal awsAccountId, userName, groupName, quickSightIdentity, cognitoGroup, email

        try:
            #Si la recursión es mayor que 2, lanzaremos una excepción
            if recursionDepth > 2:
                raise Exception('createGroupMembership: Deeper recursion than expected')
            recursionDepth += 1
    
            #Añadiremos al usuario al grupo de QS 'authors' or 'readers'
            quickSightIdentity.create_group_membership(
                AwsAccountId = awsAccountId,
                Namespace = 'default',
                MemberName = email,
                GroupName = cognitoGroup)
                
        except quickSight.exceptions.ResourceNotFoundException as e:
            #Si el grupo no existe en QS, lo crearemos
            quickSightIdentity.create_group(
                AwsAccountId = awsAccountId,
                Namespace = 'default',
                GroupName = cognitoGroup)

            #Tras crear el grupo, haremos una llamada recursiva para añadir al usuario al grupo correspondiente
            time.sleep(0.5) #añadimos una espera de medio segundo para añadir seguridad
            createGroupMembership(recursionDepth)
            
        except Exception as e:
            raise Exception('Lambda createGroupMembership function:'+str(e))

    #Obtenemos la URL dinámica del Dashboard seleccionado en nuestra página web estática, mediante una llamada a la API de QS (generate_embed_url_for_registered_useer)
    #para retornarla y poder embeber el dashboard en cuestión, o la consola de QS. 
    def getUrl(urlType):
        nonlocal awsAccountId, quickSight, identityRegion, email
       
        try:        
            
            repackedResponse={}

            #Si el usuario posee en QS el rol de 'reader', obtendremos una URL para embeber únicamente ese Dashboard
            if urlType == 'dashboard':    
                response = quickSight.generate_embed_url_for_registered_user(
                                AwsAccountId = awsAccountId,
                                UserArn = 'arn:aws:quicksight:'+ identityRegion + ':' + awsAccountId + ':user/default/' + email,
                                SessionLifetimeInMinutes = 600,
                                ExperienceConfiguration = {'Dashboard':{'InitialDashboardId': 'non-existent-id'}}
                            )
                            
                repackedResponse['DashboardEmbedUrl'] = response['EmbedUrl']
                repackedResponse['type'] = 'url'

            #Si el usuario posee en QS el rol de 'author', obtendremos una URL para embeber la consola completa de Quicksight
            if urlType == 'session':   
                response = quickSight.generate_embed_url_for_registered_user(
                                AwsAccountId = awsAccountId,
                                UserArn = 'arn:aws:quicksight:'+ identityRegion + ':' + awsAccountId + ':user/default/' + email,
                                SessionLifetimeInMinutes = 600,
                                ExperienceConfiguration = {'QuickSightConsole':{'InitialPath': '/start/favorites'}}
                            )

                repackedResponse['SessionEmbedUrl'] = response['EmbedUrl']
                repackedResponse['type'] = 'session'

            logger.info(repackedResponse)
 
            return repackedResponse
            
        except Exception as e:
            logger.info(e)
            raise Exception('Lambda getUrl function:'+str(e))

 #Lógica principal del Handler      
 
    try:
        logger.info(event)
        response={} 

        #Si el parámetro 'mode' que se nos pasa en la llamada a nuestra API REST corresponde con 'getDashboardList', o 'getUrl', 
        #se realizarán llamadas a la API de Quicksight para obtener el listado de Dashboards, a los
        #que tiene permiso de lectura el usuario, u obtendremos la URL para embeber un dashboard en concreto, retornando el 
        #resultado de esta llamada a nuestra página web estática

        if 'mode' in event['queryStringParameters'].keys():
            if event['queryStringParameters']['mode'] in ['getUrl','getDashboardList']:
                mode=event['queryStringParameters']['mode']
            else:
                mode='unsupportedValue'
               
        if mode in ['getUrl', 'getDashboardList']:
            logger.info(mode)
            try:

                #Obtenemos el AWS Account Id
                awsAccountId = context.invoked_function_arn.split(':')[4]
                region = context.invoked_function_arn.split(':')[3]
                stage = 'After getting account id'
                logger.info(stage)

                #Leemos las valores pasados a la función Lambda como query string parameters 
                openIdToken = event['queryStringParameters']['openIdToken']
                identityRegion = 'us-east-1'
                
                #Verificamos si existe un token, y extraemos algunos datos del payload
                if checkTokenValidity():
                    stage = 'After verifying token'
                    logger.info(stage)
                    #Creamos los clientes de Quicksight
                    quickSight = boto3.client('quicksight',region_name= 'us-east-1')
                    stage = 'After creating QuickSight client'
                    logger.info(stage)
                                        
                    quickSightIdentity = boto3.client('quicksight',region_name= 'us-east-1')
                    stage = 'After creating QuickSight client for Identity Region'
                    logger.info(stage)

                    #Según el modo que haya sido pasado por parámetro desde la llamada a la API, se invocará al método correspondiente
                    
                    if mode == 'getDashboardList':
                        stage = 'Before getDashboardList call'
                        logger.info(stage)
                        response = getDashboardList(1)
                        stage = 'After getDashboardList call'
                        logger.info(stage)

                    else: #mode == 'getUrl'
                        stage = 'Before getUrl call'
                        logger.info(stage)

                        #Si el usuario pertenece al grupo de cognito denominado 'authors', obtendremos una sesión con la consola completa de QS embebida
                        #En caso contrario (el usuario pertenezca al grupo 'readers'), obtendremos una URL para embeber únicamente ese Dashboard

                        if cognitoGroup == 'authors':
                            response = getUrl('session')
                            stage = 'After getUrl(session) call'
                            logger.info(stage)

                        else: #cognitoGroup == 'reader':
                            response = getUrl('dashboard')
                            stage = 'After getUrl(dashboard) call'
                            logger.info(stage)
            
            except Exception as e:
                raise Exception('Lambda handler function:'+stage+': '+str(e))
           
            #Retornamos la respuesta que nos devuelve la API de Quicksight a nuestra aplicación web estática
            #Para evitar errores de CORS, se incluirán los correspondientes headers
            return {'statusCode':200,
                    'headers': {"Access-Control-Allow-Origin": "*",
                                "Content-Type":"text/plain",
                                'Access-Control-Allow-Methods': 'GET, OPTIONS',
                                'Access-Control-Allow-Headers': 'Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers, Access-Control-Allow-Methods,Access-Control-Allow-Origin'
                                },
                    'body':json.dumps(response)
                    } 
        else: #En caso de error en el modo que se ha pasado en la llamada a la API, retornaremos un error con la lista de modos válidos
            return {'statusCode':400,
                    'headers': {"Access-Control-Allow-Origin": "*",
                                "Content-Type":"text/plain",
                                'Access-Control-Allow-Methods': 'GET, OPTIONS',
                                'Access-Control-Allow-Headers': 'Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers, Access-Control-Allow-Methods,Access-Control-Allow-Origin'
                                },
                    'body':json.dumps('Error: unsupported mode used. Valid values are getUrl, getDashboardList')
                    } 

    except Exception as e: #Capturamos excepciones
        return {'statusCode':400,
                'headers': {"Access-Control-Allow-Origin": "*",
                            "Content-Type":"text/plain",
                            'Access-Control-Allow-Methods': 'GET, OPTIONS',
                            "Access-Control-Allow-Headers": 'Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers, Access-Control-Allow-Methods,Access-Control-Allow-Origin'
                            },
                'body':json.dumps('Error: ' + str(e))
                }     