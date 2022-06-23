create table obras (
	id VARCHAR(8) PRIMARY KEY,
	cif_cliente VARCHAR(9) NOT NULL,
	descripcion VARCHAR(50),
	presupuesto VARCHAR(10),
	año INT NOT NULL,
	id_jefe_obra INT,
	CONSTRAINT cif_cliente_fk
		FOREIGN KEY (cif_cliente) 
		REFERENCES clientes(cif),
	CONSTRAINT id_jefe_obra_fk	
		FOREIGN KEY (id_jefe_obra) 
		REFERENCES RRHH(id)
);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2015001', 'A-6749071', '8454 Anniversary Drive', 402899.5, 2015, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2015002', 'A-6749071', '59 Scott Point', 708372.3100000001, 2015, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2015003', 'A-6749071', '9470 Weeping Birch Junction', 339519.26, 2015, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2015004', 'A-6749071', '67 Dapin Alley', 321813.39, 2015, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2015005', 'B-0053314', '67187 Hansons Drive', 654195.36, 2015, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2016001', 'A-6749071', '4 Cordelia Drive', 394530.32, 2016, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2016002', 'A-6749071', '2 Emmet Junction', 879058.27, 2016, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2016003', 'B-0053314', '46 Carberry Court', 290439.85, 2016, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2016004', 'A-6749071', '6679 Northfield Place', 511824.12, 2016, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2016005', 'A-6749071', '28690 Norway Maple Point', 499631.3, 2016, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2016006', 'B-0053314', '527 Bunting Court', 361977.02, 2016, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2016007', 'A-4173334', '613 Schmedeman Trail', 384213.16, 2016, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017001', 'A-4173334', '8109 Talisman Trail', 420649.13, 2017, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017002', 'A-6749071', '8101 Pepper Wood Way', 406863.36, 2017, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017003', 'B-0053314', '0 Thompson Trail', 547727.0699999999, 2017, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017004', 'A-6749071', '51919 Loomis Avenue', 736871.61, 2017, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017005', 'A-6749071', '53 Meadow Vale Place', 304365.92, 2017, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017006', 'B-0053314', '682 Delladonna Point', 337627.5, 2017, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017007', 'A-8855747', '84 Rieder Alley', 326649.45, 2017, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017009', 'B-0053314', '57624 Loomis Pass', 819235.33, 2017, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017010', 'A-6749071', '7330 Corscot Pass', 980450.34, 2017, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2017011', 'A-4173334', '1 Riverside Place', 1044401.49, 2017, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018001', 'B-7327135', '80 Maywood Junction', 602531.16, 2018, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018002', 'A-6749071', '45 Delaware Way', 610038.25, 2018, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018003', 'B-7674524', '1341 Carpenter Place', 1120694.1399999999, 2018, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018004', 'B-7327135', '046 Trailsway Avenue', 748664.5, 2018, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018005', 'B-6816903', '12 Pierstorff Hill', 931877.99, 2018, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018006', 'B-5905886', '08260 Bonner Trail', 684091.49, 2018, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018007', 'B-7674524', '8 Cody Junction', 1006123.9399999999, 2018, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018009', 'A-4173334', '772 Nelson Trail', 719852.26, 2018, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018010', 'B-6816903', '649 Ridgeview Hill', 1232074.0700000001, 2018, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018011', 'B-6816903', '709 Sloan Avenue', 657476.83, 2018, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2018012', 'B-6816903', '7 Sunbrook Street', 704686.76, 2018, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019001', 'A-7336842', '32633 Buell Pass', 798593.77, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019002', 'B-0053314', '2 Myrtle Hill', 915822.1800000001, 2019, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019003', 'A-8855747', '8 Kedzie Plaza', 742692.34, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019004', 'B-6816903', '89 Meadow Ridge Place', 393053.8, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019005', 'B-6816903', '81 Anzinger Hill', 89455.74, 2019, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019006', 'B-6816903', '18509 Texas Hill', 467194.69, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019007', 'B-6816903', '1339 Pierstorff Park', 326411.22, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019009', 'B-0053314', '609 Anderson Road', 415992.99, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019010', 'B-7674524', '6 Aberg Court', 551957.5, 2019, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019011', 'B-7327135', '6453 Jenifer Court', 768101.49, 2019, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019012', 'B-7327135', '0 5th Street', 672205.95, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019013', 'B-0315557', '5174 Memorial Park', 506467.16, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019014', 'B-0315557', '5260 Florence Junction', 730268.52, 2019, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2019015', 'B-6816903', '34 Larry Parkway', 509729.22, 2019, 8);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2020001', 'B-5905886', '3275 Scott Way', 464831.69, 2020, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2020002', 'B-5905886', '33504 Cody Way', 511405.04, 2020, 7);
insert into obras (id, cif_cliente, descripcion, presupuesto, año, id_jefe_obra) values ('O2020003', 'B-6816903', '36 Grasskamp Junction', 442643.73, 2020, 7);
