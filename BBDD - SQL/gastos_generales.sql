create table gastos_generales (
	concepto VARCHAR(29) NOT NULL,
	base_imponible INT(5) NOT NULL,
	iva INT,
	fecha DATE NOT NULL,
	año INT NOT NULL,
	cif_proveedor VARCHAR(20),
	PRIMARY KEY (concepto, fecha, año),
	FOREIGN KEY (cif_proveedor) REFERENCES proveedores(cif)
);

insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Alquiler'	,	36000	,	7560	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Electricidad'	,	3250	,	 682.5	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Renting'	,	3600	,	756	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Limpieza'	,	1200	,	252	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gestoría'	,	14400	,	3024	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Telefonía e Internet'	,	2300	,	483	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Viajes y dietas'	,	7100	,	1491	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Seguros'	,	3500	,	735	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Mantenimiento Informático'	,	1800	,	378	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Prevención Riesgos Laborales'	,	2500	,	525	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Equipos informáticos'	,	15000	,	3150	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Suministros'	,	6500	,	1365	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos financieros'	,	4500	,	945	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Impuestos y tasas'	,	13500	,	2835	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos marketing y eventos'	,	3000	,	630	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos reclutamiento personal'	,	2000	,	420	,	 '2015/12/31'	,	2015	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Salarios y seguridad social'	,	279450	,	null	,	 '2015/12/31'	,	2015	,	null);
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Alquiler'	,	36000	,	7560	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Electricidad'	,	4600	,	966	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Renting'	,	19200	,	4032	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Limpieza'	,	1200	,	252	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gestoría'	,	22000	,	4620	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Telefonía e Internet'	,	3100	,	651	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Viajes y dietas'	,	19000	,	3990	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Seguros'	,	4600	,	966	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Mantenimiento Informático'	,	2700	,	567	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Prevención Riesgos Laborales'	,	3500	,	735	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Equipos informáticos'	,	6000	,	1260	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Suministros'	,	8900	,	1869	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos financieros'	,	8400	,	1764	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Impuestos y tasas'	,	9200	,	1932	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos marketing y eventos'	,	3400	,	714	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos reclutamiento personal'	,	3600	,	756	,	 '2016/12/31'	,	2016	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Salarios y seguridad social'	,	428900	,	null	,	 '2016/12/31'	,	2016	,	null);
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Alquiler'	,	48000	,	10080	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Electricidad'	,	8100	,	1701	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Renting'	,	36000	,	7560	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Limpieza'	,	1350	,	 283.5	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gestoría'	,	21600	,	4536	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Telefonía e Internet'	,	10200	,	2142	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Viajes y dietas'	,	36500	,	7665	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Seguros'	,	8650	,	 1816.5	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Mantenimiento Informático'	,	3600	,	756	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Prevención Riesgos Laborales'	,	4100	,	861	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Equipos informáticos'	,	12000	,	2520	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Suministros'	,	21000	,	4410	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos financieros'	,	14600	,	3066	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Impuestos y tasas'	,	25000	,	5250	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos marketing y eventos'	,	16500	,	3465	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos reclutamiento personal'	,	8000	,	1680	,	 '2017/12/31'	,	2017	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Salarios y seguridad social'	,	535550	,	null	,	 '2017/12/31'	,	2017	,	null);
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Alquiler'	,	60000	,	12600	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Electricidad'	,	15000	,	3150	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Renting'	,	50000	,	10500	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Limpieza'	,	2600	,	546	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gestoría'	,	30000	,	6300	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Telefonía e Internet'	,	18000	,	3780	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Viajes y dietas'	,	74000	,	15540	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Seguros'	,	15000	,	3150	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Mantenimiento Informático'	,	4800	,	1008	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Prevención Riesgos Laborales'	,	5300	,	1113	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Equipos informáticos'	,	16000	,	3360	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Suministros'	,	28000	,	5880	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos financieros'	,	32000	,	6720	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Impuestos y tasas'	,	28000	,	5880	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos marketing y eventos'	,	27500	,	5775	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos reclutamiento personal'	,	6000	,	1260	,	 '2018/12/31'	,	2018	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Salarios y seguridad social'	,	632750	,	null	,	 '2018/12/31'	,	2018	,	null);
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Alquiler'	,	60000	,	12600	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Electricidad'	,	12300	,	2583	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Renting'	,	39000	,	8190	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Limpieza'	,	2600	,	546	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gestoría'	,	31000	,	6510	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Telefonía e Internet'	,	16000	,	3360	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Viajes y dietas'	,	54000	,	11340	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Seguros'	,	13000	,	2730	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Mantenimiento Informático'	,	4200	,	882	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Prevención Riesgos Laborales'	,	4500	,	945	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Equipos informáticos'	,	12500	,	2625	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Suministros'	,	26000	,	5460	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos financieros'	,	28000	,	5880	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Impuestos y tasas'	,	22000	,	4620	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos marketing y eventos'	,	25000	,	5250	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos reclutamiento personal'	,	4600	,	966	,	 '2019/12/31'	,	2019	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Salarios y seguridad social'	,	727250	,	null	,	 '2019/12/31'	,	2019	,	null);
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Alquiler'	,	51000	,	10710	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Electricidad'	,	9000	,	1890	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Renting'	,	29000	,	6090	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Limpieza'	,	1350	,	 283.5	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gestoría'	,	36000	,	7560	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Telefonía e Internet'	,	15000	,	3150	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Viajes y dietas'	,	21000	,	4410	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Seguros'	,	9500	,	1995	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Mantenimiento Informático'	,	3200	,	672	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Prevención Riesgos Laborales'	,	3100	,	651	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Equipos informáticos'	,	7500	,	1575	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Suministros'	,	21000	,	4410	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos financieros'	,	31000	,	6510	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Impuestos y tasas'	,	32000	,	6720	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos marketing y eventos'	,	10000	,	2100	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Gastos reclutamiento personal'	,	0	,	0	,	 '2020/12/31'	,	2020	,	 'B-2177845');
insert into gastos_generales (concepto	,	 base_imponible	,	 iva	,	 fecha	,	año	,	 cif_proveedor) values ('Salarios y seguridad social'	,	210916	,	null	,	 '2020/12/31'	,	2020	,	null);
