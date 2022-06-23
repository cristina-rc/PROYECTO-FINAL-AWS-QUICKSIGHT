create table financiacion (
	id INT PRIMARY KEY,
	importe VARCHAR(6) NOT NULL,
	tipo VARCHAR(23)NOT NULL,
	banco VARCHAR(10) NOT NULL,
	fecha_vencimiento DATE NOT NULL,
	cif_proveedor VARCHAR(20) NOT NULL,
	FOREIGN KEY (cif_proveedor) REFERENCES proveedores(cif)
);
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (1, 300000, 'Préstamo ICO', 'La Caixa', '2015/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (2, 100000, 'Línea Descuento Pagarés', 'La Caixa', '2015/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (3, 400000, 'Préstamo ICO', 'La Caixa', '2016/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (4, 100000, 'Línea Descuento Pagarés', 'ING Direct', '2016/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (5, 400000, 'Línea Anticipo Confirming', 'La Caixa', '2016/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (6, 200000, 'Póliza Crédito', 'La Caixa', '2016/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (7, 500000, 'Préstamo ICO', 'La Caixa', '2017/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (8, 200000, 'Línea Descuento Pagarés', 'ING Direct', '2017/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (9, 400000, 'Línea Anticipo Confirming', 'La Caixa', '2017/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (10, 250000, 'Póliza Crédito', 'La Caixa', '2017/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (11, 300000, 'Préstamo ICO', 'La Caixa', '2018/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (12, 350000, 'Línea Descuento Pagarés', 'ING Direct', '2018/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (13, 500000, 'Línea Anticipo Confirming', 'La Caixa', '2018/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (14, 400000, 'Póliza Crédito', 'La Caixa', '2018/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (15, 300000, 'Préstamo ICO', 'La Caixa', '2019/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (16, 350000, 'Línea Descuento Pagarés', 'ING Direct', '2019/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (17, 500000, 'Línea Anticipo Confirming', 'La Caixa', '2019/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (18, 400000, 'Póliza Crédito', 'La Caixa', '2019/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (19, 300000, 'Póliza Crédito', 'BBVA', '2019/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (21, 350000, 'Línea Descuento Pagarés', 'ING Direct', '2020/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (22, 300000, 'Línea Anticipo Confirming', 'BBVA', '2020/12/31', 'B-0000000');
insert into financiacion (id, importe, tipo, banco, fecha_vencimiento, cif_proveedor) values (23, 200000, 'Póliza Crédito', 'La Caixa', '2020/12/31', 'B-0000000');
