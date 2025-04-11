insert into proovedores (nombre ,direccion, telefono) values 
( 'samsung','cucuta #24-3',3005283),
('apple','bogota #67-2',3145283),
('xiomi','medellin #46-7',31352683),
('readmi','cucuta #23-7',3125212),
('huawei','bogota #56-9',31152611),
('blackberry','pereira-34-23',3105210),
('iphone','cucuta #45-5',3095289),
('cartio','bucaramanga #23-9',3085688),
('palio','bolivar #45-2',3075267),
('estra','ocaña #34-2',3065266),
('Ext','venezuela #45-7',3055285),
('tuoi','cartagena #43-2',30452684),
('hori','cucuta #23-2',3035269),
('carti','cucuta #48-6',3015262),
('lg','bogota #21-5',3025283);





insert into producto (nombre ,descripcion,categoria, precio,stock,id_proveedor) values 
('computador1','rapido y capacidad maxima', 'tecnologico',100.23, 7 ,1),
('telefono1','capacidad y ram 4','tecnologico',170.23, 3 ,2),
('impresora h','rapida y adpatable ','tecnologico',86.23, 6 ,3),
('telefono2','capacidad y ram 4','tecnologico',130.23, 17 ,4),
('camara c','rapido y capacidad maxima','tecnologico',90.23, 27 ,5),
('computador2','rapido y capacidad maxima','tecnologico',150.23, 5 ,6),
('computador3','rapido y capacidad maxima', 'tecnologico',60.23, 4 ,7),
('telefono3','capacidad y ram 4','tecnologico',120.23, 13 ,9),
('impresora xl','rapido y capacidad maxima','tecnologico',100.23, 12 ,8),
('telefono4','rapido y capacidad maxima','tecnologico',160.23, 11 ,10),
('mouse','eficiencia de trabajo','tecnologico',90.23,12 ,11),
('impresora lx','rapido y capacidad maxima','tecnologico',200.23, 7 ,12),
('telefono5','rapido y flexible','tecnologico',50.23, 17 ,13),
('camara d','captura imagenes bonitas HD','tecnologico',80.23, 47 ,14),
('computador4','rapido y capacidad maxima','tecnologico',134.23, 27 ,15);


insert into cliente (nombre ,apellido, telefono,direccion,cedula) values 
('yeferson','solano',8927373,'barrio perla',2416655),
('camilo','machuca',4367373,'barrio union',2416644),
('jerxon','correa',4727373,'barrio camilo torres',2416633),
('jhonier','lozano',1637373,'barrio limon',2416622),
('luis','perez',3427373,'la uno',2416611),
('carlos','quinter',4527373,'la esperanza',2416671),
('maria','valdez',3327373,'las minas',2416672),
('valerie','lasso',1102733,'barrio leon',2416673),
('estefanu','soto',2027373,'barrio perla',2416674),
('yesica','perez',1027373,'barrio perla',2416675),
('alejandra','machuca',2027373,'barrio union',2416676),
('zully','ortiz',7027373,'barrio limon',2416677),
('luis','henao',8027373,'barrio limon',2416678),
('valentina','molina',5027373,'barrio perla',2416679),
('maria','torres',9027373,'barrio perla',2416670);

insert into registro_compra (fecha_compra ,id_cliente) values 
('2024-02-13',1),
('2025-02-03',2),
('2025-04-01',3),
('2024-08-13',4),
('2025-02-13',1),
('2025-02-13',5),
('2025-02-13',5),
('2024-08-23',6),
('2024-12-03',7),
('2025-01-13',8),
('2025-05-13',9),
('2025-04-03',10),
('2025-05-03',11),
('2025-03-04',12),
('2025-01-03',13);


insert into detalle_compra (id_producto ,id_regitroCompra,quantity,precio_total,forma_pago) values 
(1,2,4,300.34,'efectivo'),
(2,2,2,150.34,'efectivo'),
(3,3,4,210.34,'efectivo'),
(4,4,2,150.34,'tarjeta de credito'),
(3,5,4,90.34,'tarjeta de credito'),
(6,6,2,150.34,'otro'),
(7,7,4,120.34,'efectivo'),
(2,8,1,140.34,'efectivo'),
(3,9,4,130.34,'efectivo'),
(10,10,3,150.34,'otro'),
(11,11,4,120.34,'tarjeta de credito'),
(1,12,2,170.34,'efectivo'),
(13,13,6,320.34,'otro'),
(1,14,2,100.34,'tarjeta de credito'),
(15,15,1,50.34,'otro');

