create table RRHH (
	id INT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50),
	direccion VARCHAR(50),
	fecha_nacimiento DATE,
	email VARCHAR(50),
	salario INT NOT NULL,
	seguridad_social INT NOT NULL,
	fecha_incorporacion DATE NOT NULL,
	fecha_baja DATE,
	puesto VARCHAR(50) NOT NULL,
	tipo_contrato VARCHAR(50) NOT NULL,
	formacion VARCHAR(50)
);
insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (1, 'Tom', 'Klemt', '91 Menomonie Point', '1976/11/23', 'jklemt0@seattletimes.com', 55000, 19250, '2015/01/01', null, 'Director General', 'Indefinido', 'Ingeniero Civil');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (2, 'Louis', 'Puckring', '9372 Annamark Trail', '1988/11/18', 'cpuckring1@purevolume.com', 45000, 15750, '2015/06/01', null, 'Director Financiero - RRHH', 'Indefinido', 'Administración de Empresas');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (3, 'Mélodie', 'Corsan', '65097 Fairview Terrace', '1991/11/20', 'acorsan2@barnesandnoble.com', 30000, 8750, '2016/10/17', null, 'Técnico Administrativo', 'Indefinido', 'Administración de Empresas');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (4, 'Maïlys', 'Weaver', '87 Sage Avenue', '1985/4/26', 'sweaver3@ocn.ne.jp', 21000, 7350, '2017/03/05', '2019/12/31', 'Técnico Administrativo', 'Indefinido', 'Técnico Superior Contabilidad y Finanzas');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (5, 'Célestine', 'Bardey', '9 Cottonwood Place', '1981/9/23', 'jbardey4@google.ru', 45000, 15750, '2015/01/01', null, 'Director de Producción', 'Indefinido', 'Arquitecto Técnico');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (6, 'Lài', 'Colter', '31164 Sauthoff Alley', '1983/11/25', 'dcolter5@booking.com', 30000, 10500, '2015/01/01', null, 'Jefe de Obra', 'Obra y Servicio', 'Arquitecto Técnico');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (7, 'Pò', 'Schade', '4881 American Way', '1988/4/29', 'cschade6@xrea.com', 32000, 11200, '2015/01/01', null, 'Jefe de Obra', 'Indefinido', 'Arquitecto Técnico');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (8, 'Eugénie', 'Gurys', '18423 Graedel Crossing', '1980/10/5', 'bgurys7@cargocollective.com', 35000, 12250, '2015/01/01', null, 'Jefe de Obra', 'Indefinido', 'Ingeniero Civil');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (9, 'Séréna', 'Huddle', '17 Dennis Point', '1989/11/30', 'mhuddle8@parallels.com', 24000, 8400, '2018/10/22', null, 'Jefe de Producción', 'Indefinido', 'Arquitecto Técnico');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (10, 'George', 'Auston', '065 Darwin Place', '1992/8/15', 'lauston9@ebay.co.uk', 24000, 8400, '2019/05/23', '2019/12/31', 'Jefe de Producción', 'Obra y Servicio', 'Arquitecto Técnico');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (11, 'José', 'Gavaran', '12 Ilene Trail', '1986/6/19', 'igavarana@cnn.com', 25000, 8750, '2018/09/06', '2019/12/31', 'Encargado de Obra', 'Obra y Servicio', 'Graduado Escolar');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (12, 'Märta', 'Proger', '90618 Buell Crossing', '1976/7/8', 'mprogerb@last.fm', 27000, 9450, '2016/08/06', null, 'Encargado de Obra', 'Indefinido', 'Graduado Escolar');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (13, 'Angus', 'Wroe', '33762 Rieder Terrace', '1982/1/22', 'bwroec@npr.org', 30000, 10500, '2015/06/12', null, 'Encargado de Obra', 'Indefinido', 'Técnico Superior Albañilería');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (14, 'Ophélie', 'Dahlgren', '59896 Kipling Junction', '1981/7/24', 'jdahlgrend@seesaa.net', 23000, 8050, '2017/06/07', null, 'Capataz', 'Obra y Servicio', 'Graduado Escolar');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (15, 'Kai', 'Colchett', '2 Florence Junction', '1972/12/22', 'mcolchette@dailymail.co.uk', 23000, 8050, '2018/05/03', '2019/12/31', 'Capataz', 'Obra y Servicio', 'Técnico Superior Electricidad');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (16, 'Delmar', 'Easton', '11 International Lane', '1993/7/26', 'aeastonf@yahoo.com', 21000, 7350, '2019/06/01', null, 'Técnico de Estudios', 'Indefinido', 'Diseñador de Interiores');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (17, 'Gaétane', 'Cavil', '8 Porter Plaza', '1978/6/9', 'mcavilg@alibaba.com', 25000, 8750, '2019/06/01', null, 'Técnico de Estudios', 'Indefinido', 'Arquitecto Técnico');

insert into RRHH (id, nombre, apellidos, direccion, fecha_nacimiento, email, salario, seguridad_social, fecha_incorporacion, fecha_baja, puesto, tipo_contrato, formacion) values (18, 'Réservés', 'Scarce', '68 High Crossing Pass', '1967/9/2', 'ascarceh@howstuffworks.com', 25000, 8750, '2016/08/30', null, 'Gruista', 'Obra y Servicio', 'Operador Grúa Torre');
