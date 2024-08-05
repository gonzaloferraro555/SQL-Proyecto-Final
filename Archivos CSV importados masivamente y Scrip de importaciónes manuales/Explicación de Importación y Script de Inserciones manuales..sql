/*   EXPLICACIÓN DE IMPORTACIÓN
La importación se realizo de manera masiva utilizando archivos de formato
csv. Use como herramienta el sitio "https://www.mockaroo.com/" que me permitió
generar información adaptada a mis tablas.
Este procedimiento se aplicó en las tablas  estado_cliente, clientes, cta_cte, registro_soporte, 
servicios_contratados, y ficha_clientes. Para las tablas "tipo_fiscal", "servicios_contratables", "bajas_tipo" ,
comprobantes_tipo, pagos_tipo, soportes_tipos y encuesta_tipos, opté por 
inserción manual de datos, ya que son opciones preestablecidas y definidas para el modelo de negocio. 
Las ventas de la tabla comprobantes_venta, los pagos de la tabla pagos, y las bajas de la tabla bajas fueron insertadas manualmente,
se detalla al final del archivo su inserción. El motivo de utilizar la inserción manual radica en que la información
debe respetar cierta lógica entre sí, por las fechas y efectos que cada inserción DEBE TENER en otras tablas, por lo que 
generar una inserción masiva a través de la página que utilice para las tablas "tipo" reflejaría información que no tiene
sentido entre las diferentes tablas para un mismo cliente. La idea fue obtener una representación fiel de la realidad de una empresa que 
está en marcha, y que debe contar con información de su actividad actual a cierto punto de su vida. Las facturas/ventas de cada cliente 
deben corresponderse con las fechas desde su contratación en adelante en la tabla servicios contratados, y hasta la baja del cliente, 
en caso de corresponder la baja del mismo. Las bajas no pueden ser anteriores a las fechas de contratación del servicio. Los pagos no 
deberían exceder los montos adeudados, las ventas no deben exceder la fecha actual y los tipos de comprobante deben corresponderse
con el tipo fiscal de cada cliente. Cabe mencionar que en la condición de la baja de un cliente, no se encuentra el condicionante de tener saldo 0, ya que un cliente puede darse de baja independientemente de su saldo en 
cuenta corriente, la deuda perdura, el cliente puede darse de baja como cliente activo, generando la cancelación del servicio 
y posteriores facturaciones.


 
 *La tabla estado_cliente fue creada inicialmente con la totalidad de los clientes en estado
 activo, y saldo 0 en deuda. Lo decidí de esta manera para luego importar algunas bajas que le 
 otorguen realidad a la situación, y las respectivas deudas de cada cliente. Esto impacta
 luego al insertar registros de venta o pagos, que actualizan la tabla estado_cliente,
 e impactan en el saldo de cada cliente (saldo_ctacte) y en si actualmente adeuda o no (adeuda_cliente).
 Estos cambios los detallaré con S.P que contentan triggers ante inserciones, para darle actualización
 a la información del cliente al cual corresponda la venta o el pago.
 
 *La tabla servicios_contratados, un cliente podría irse y volver a la empresa
 conservando su número de cliente en la tabla clientes, pero ocupando otro registro de id_contratos, 
 ya que id_cliente no es una PK, por lo que puede repetirse, es decir que un cliente puede irse con otra empresa, 
 y volver, pero no perderá su número original de cliente en la BD de la empresa, como ocurre en la realidad, 
 donde se conserva la información de clientes que se han ido.
 
 * 


*/

/*Detalle de inserciones manuales:*/
USE proyectofinal;

INSERT INTO tipo_fiscal(id_tipo_fiscal,descripción_fiscal)
VALUES	(1,"Responsable Inscripto"),
(2,"Monotributista"),
(3, "Exento"),
(4, "Consumidor Final");

INSERT INTO servicios_contratables (id_servicios,descripción,costo_servicio)
VALUES (1, "-Internet 300 mb-  Velocidad de bajada de hasta 300 megas y de
subida de hasta 30 megas , $800 de ahorro en tu factura de Internet si tu línea es Personal, 
5 gb por mes sin cargo para compartir, 10 GB de regalo por mes durante 6 meses
WhatsApp gratis + Llamadas ilimitadas",5000),
(2, "-Internet 100 mb-  Velocidad de bajada de hasta 100 megas y de
subida de hasta 20 megas , $800 de ahorro en tu factura de Internet si tu línea es Personal, 
5 gb por mes sin cargo para compartir, 10 GB de regalo por mes durante 6 meses
WhatsApp gratis + Llamadas ilimitadas",3800),
(3, "-Internet 50 mb-  Velocidad de bajada de hasta 100 megas y de
subida de hasta 10 megas , $800 de ahorro en tu factura de Internet si tu línea es Personal, 
+ Llamadas ilimitadas",2900);

INSERT INTO bajas_tipo(id_tipo_baja,descripción_baja)
VALUES	(1,"Alto costo del servicio"),
(2,"Cambio de domicilio/ciudad del usuario."),
(3, "Problemas de fluidez en la prestación."),
(4, "Problemas técnicos recurrentes."),
(5, "Paquete de velocidad insuficiente."),
(6,"Aumento de la tarifa sin previo aviso."),
(7,"Problemas de atención al cliente");


INSERT INTO comprobantes_tipo(id_tipo_comprobante,descripción_tipo_comprobante)
VALUES	(1,"FACTURA A"),
(2,"FACTURA B"),
(3, "NOTA DE DÉBITO"),
(4, "NOTA DE CRÉDITO"),
(5, "RECIBO");

INSERT INTO pagos_tipo(id_tipo_pago,descripción_tipo_pago)
VALUES	(1,"EFECTIVO"),
(2,"TARJETA DE DÉBITO"),
(3, "TARJETA DE CRÉDITO");

INSERT INTO soporte_tipos(id_tipo_soporte,descripción_tipo_soporte)
VALUES	(1,"Señal correcta pero red en baja velocidad."),
(2,"Señal de Wi-Fi débil."),
(3, "Problemas de conectividad por dispositivos físicos."),
(4, "Problemas con la visita técnica o instalación de equipos."),
(5, "Errores en la facturación."),
(6, "Problemas con la cuenta corriente o el pago.");


INSERT INTO encuesta_tipos(id_calificación,descripción_tipo_encuesta)
VALUES	(1,"Pesima"),
(2,"Intermedia."),
(3, "Normal."),
(4, "Buena."),
(5, "Excelente.");


/*Inserción de Bajas*/

INSERT INTO bajas (id_cliente,fecha_baja,id_tipo_baja)
VALUES
(11,"2023/5/6",6),
(75,"2023/5/5",5),
(46,"2023/4/2",2),
(18,"2023/4/5",5),
(89,"2023/3/6",6),
(81,"2023/3/1",1),
(20,"2023/3/7",7),
(38,"2023/4/4",4),
(50,"2023/2/2",2);

/*Inserción se Pagos*/

Call Pago(1,1,5,1,3800);
Call Pago(1,1,5,2,3800);
Call Pago(1,1,5,3,3800);
Call Pago(2,1,5,1,2900);
Call Pago(2,3,5,2,2900);
Call Pago(3,3,5,1,5000);
Call Pago(3,3,5,2,5000);
Call Pago(3,3,5,3,5000);
Call Pago(4,2,5,1,2900);
Call Pago(4,1,5,2,2900);
Call Pago(4,1,5,3,2900);
Call Pago(5,1,5,1,3800);
Call Pago(5,2,5,2,3800);
Call Pago(5,3,5,3,3800);
Call Pago(6,3,5,1,3800);
Call Pago(7,1,5,1,5000);
Call Pago(8,2,5,1,2900);
Call Pago(9,1,5,1,3800);
Call Pago(10,1,5,1,2900);
Call Pago(10,2,5,2,2900);
Call Pago(11,2,5,1,3800);
Call Pago(11,1,5,2,3800);
Call Pago(11,3,5,3,3800);
Call Pago(12,2,5,1,3800);
Call Pago(12,1,5,2,3800);
Call Pago(12,3,5,3,3800);
Call Pago(13,1,5,1,2900);
Call Pago(14,3,5,1,3800);
Call Pago(15,2,5,1,5000);
Call Pago(15,3,5,2,5000);
Call Pago(15,1,5,3,5000);
Call Pago(16,2,5,1,3800);
Call Pago(16,1,5,2,3800);
Call Pago(16,2,5,3,3800);
Call Pago(17,3,5,1,5000);
Call Pago(17,3,5,2,5000);
Call Pago(18,1,5,1,3800);
Call Pago(18,1,5,2,3800);
Call Pago(18,1,5,3,3800);
Call Pago(19,3,5,1,3800);
Call Pago(19,2,5,2,3800);
Call Pago(19,3,5,3,3800);
Call Pago(20,3,5,1,5000);
Call Pago(20,3,5,2,5000);
Call Pago(21,2,5,1,3800);
Call Pago(21,3,5,2,3800);
Call Pago(22,1,5,1,2900);
Call Pago(22,1,5,2,2900);
Call Pago(22,1,5,3,2900);
Call Pago(23,2,5,1,2900);
Call Pago(23,2,5,2,2900);
Call Pago(23,3,5,3,2900);
Call Pago(24,1,5,1,3800);
Call Pago(24,2,5,2,3800);
Call Pago(24,2,5,3,3800);
Call Pago(25,1,5,1,5000);
Call Pago(25,1,5,2,5000);
Call Pago(26,3,5,1,5000);
Call Pago(26,1,5,2,5000);
Call Pago(26,3,5,3,5000);
Call Pago(27,3,5,1,3800);
Call Pago(28,2,5,1,2900);
Call Pago(28,1,5,2,2900);
Call Pago(28,2,5,3,2900);
Call Pago(29,1,5,1,5000);
Call Pago(29,3,5,2,5000);
Call Pago(29,1,5,3,5000);
Call Pago(30,1,5,1,5000);
Call Pago(30,1,5,2,5000);
Call Pago(30,3,5,3,5000);
Call Pago(31,2,5,1,3800);
Call Pago(31,3,5,2,3800);
Call Pago(31,1,5,3,3800);
Call Pago(32,3,5,1,5000);
Call Pago(32,3,5,2,5000);
Call Pago(33,2,5,1,5000);
Call Pago(33,3,5,2,5000);
Call Pago(34,3,5,1,5000);
Call Pago(34,2,5,2,5000);
Call Pago(35,3,5,1,3800);
Call Pago(35,1,5,2,3800);
Call Pago(35,3,5,3,3800);
Call Pago(36,2,5,1,2900);
Call Pago(36,2,5,2,2900);
Call Pago(37,1,5,1,2900);
Call Pago(37,2,5,2,2900);
Call Pago(37,1,5,3,2900);
Call Pago(37,1,5,4,2900);
Call Pago(37,1,5,5,2900);
Call Pago(38,3,5,1,3800);
Call Pago(38,1,5,2,3800);
Call Pago(38,2,5,3,3800);
Call Pago(39,1,5,1,2900);
Call Pago(40,2,5,1,2900);
Call Pago(40,1,5,2,2900);
Call Pago(40,1,5,3,2900);
Call Pago(41,1,5,1,2900);
Call Pago(41,3,5,2,2900);
Call Pago(41,1,5,3,2900);
Call Pago(42,3,5,1,2900);
Call Pago(42,1,5,2,2900);
Call Pago(42,3,5,3,2900);
Call Pago(43,1,5,1,2900);
Call Pago(43,2,5,2,2900);
Call Pago(44,1,5,1,5000);
Call Pago(44,1,5,2,5000);
Call Pago(44,3,5,3,5000);
Call Pago(44,3,5,4,5000);
Call Pago(45,3,5,1,5000);
Call Pago(46,2,5,1,5000);
Call Pago(46,2,5,2,5000);
Call Pago(46,3,5,3,5000);
Call Pago(47,3,5,1,3800);
Call Pago(47,1,5,2,3800);
Call Pago(47,1,5,3,3800);
Call Pago(48,3,5,1,5000);
Call Pago(48,1,5,2,5000);
Call Pago(48,2,5,3,5000);
Call Pago(48,2,5,4,5000);
Call Pago(48,3,5,5,5000);
Call Pago(49,2,5,1,3800);
Call Pago(49,3,5,2,3800);
Call Pago(49,3,5,3,3800);
Call Pago(50,3,5,1,2900);
Call Pago(51,1,5,1,5000);
Call Pago(51,3,5,2,5000);
Call Pago(52,3,5,1,3800);
Call Pago(53,3,5,1,2900);
Call Pago(54,2,5,1,2900);
Call Pago(54,3,5,2,2900);
Call Pago(54,2,5,3,2900);
Call Pago(55,1,5,1,2900);
Call Pago(55,1,5,2,2900);
Call Pago(56,3,5,1,5000);
Call Pago(56,3,5,2,5000);
Call Pago(57,3,5,1,3800);
Call Pago(58,2,5,1,5000);
Call Pago(58,1,5,2,5000);
Call Pago(58,1,5,3,5000);
Call Pago(59,1,5,1,2900);
Call Pago(60,2,5,1,5000);
Call Pago(60,1,5,2,5000);
Call Pago(61,2,5,1,5000);
Call Pago(61,3,5,2,5000);
Call Pago(61,3,5,3,5000);
Call Pago(62,2,5,1,5000);
Call Pago(63,1,5,1,5000);
Call Pago(63,3,5,2,5000);
Call Pago(64,3,5,1,3800);
Call Pago(64,2,5,2,3800);
Call Pago(64,3,5,3,3800);
Call Pago(64,3,5,4,3800);
Call Pago(64,3,5,5,3800);
Call Pago(65,2,5,1,2900);
Call Pago(65,1,5,2,2900);
Call Pago(65,3,5,3,2900);
Call Pago(66,2,5,1,2900);
Call Pago(66,3,5,2,2900);
Call Pago(67,1,5,1,5000);
Call Pago(67,3,5,2,5000);
Call Pago(68,3,5,1,2900);
Call Pago(68,1,5,2,2900);
Call Pago(69,3,5,1,3800);
Call Pago(69,2,5,2,3800);
Call Pago(69,2,5,3,3800);
Call Pago(70,3,5,1,5000);
Call Pago(70,2,5,2,5000);
Call Pago(71,1,5,1,2900);
Call Pago(71,2,5,2,2900);
Call Pago(71,3,5,3,2900);
Call Pago(71,3,5,4,2900);
Call Pago(71,3,5,5,2900);
Call Pago(72,3,5,1,3800);
Call Pago(73,2,5,1,5000);
Call Pago(73,2,5,2,5000);
Call Pago(73,1,5,3,5000);
Call Pago(73,1,5,4,5000);
Call Pago(73,2,5,5,5000);
Call Pago(74,1,5,1,3800);
Call Pago(74,3,5,2,3800);
Call Pago(75,1,5,1,2900);
Call Pago(75,1,5,2,2900);
Call Pago(76,1,5,1,3800);
Call Pago(76,2,5,2,3800);
Call Pago(77,1,5,1,2900);
Call Pago(77,2,5,2,2900);
Call Pago(77,1,5,3,2900);
Call Pago(78,1,5,1,5000);
Call Pago(78,1,5,2,5000);
Call Pago(78,1,5,3,5000);
Call Pago(79,2,5,1,5000);
Call Pago(79,3,5,2,5000);
Call Pago(79,2,5,3,5000);
Call Pago(80,1,5,1,3800);
Call Pago(80,1,5,2,3800);
Call Pago(80,2,5,3,3800);
Call Pago(81,3,5,1,5000);
Call Pago(81,3,5,2,5000);
Call Pago(82,1,5,1,2900);
Call Pago(82,3,5,2,2900);
Call Pago(82,2,5,3,2900);
Call Pago(83,2,5,1,3800);
Call Pago(83,2,5,2,3800);
Call Pago(84,1,5,1,5000);
Call Pago(86,2,5,1,5000);
Call Pago(87,1,5,1,5000);
Call Pago(87,2,5,2,5000);
Call Pago(87,1,5,3,5000);
Call Pago(87,1,5,4,5000);
Call Pago(87,3,5,5,5000);
Call Pago(88,3,5,1,3800);
Call Pago(88,1,5,2,3800);
Call Pago(88,2,5,3,3800);
Call Pago(89,2,5,1,2900);
Call Pago(89,1,5,2,2900);
Call Pago(90,2,5,1,2900);
Call Pago(90,3,5,2,2900);
Call Pago(91,1,5,1,2900);
Call Pago(91,3,5,2,2900);
Call Pago(91,3,5,3,2900);
Call Pago(91,3,5,4,2900);
Call Pago(91,1,5,5,2900);
Call Pago(92,3,5,1,2900);
Call Pago(92,3,5,2,2900);
Call Pago(92,1,5,3,2900);
Call Pago(93,2,5,1,5000);
Call Pago(93,2,5,2,5000);
Call Pago(93,3,5,3,5000);
Call Pago(93,3,5,4,5000);
Call Pago(93,1,5,5,5000);
Call Pago(94,2,5,1,2900);
Call Pago(94,1,5,2,2900);
Call Pago(95,3,5,1,2900);
Call Pago(95,1,5,2,2900);
Call Pago(95,1,5,3,2900);
Call Pago(96,1,5,1,5000);
Call Pago(96,3,5,2,5000);
Call Pago(96,1,5,3,5000);
Call Pago(97,2,5,1,2900);
Call Pago(97,1,5,2,2900);



/*Inserción de ventas
Las ventas fueron insertadas utilizando un procedimiento "Venta", que incluída
como parámetro la fecha de la factura, para darle mayor realismo al estado actual de la 
empresa. Una vez insertados los registros de inicio, el procedimiento fue modificado
para que no haya parámetro del tipo "date" al invocar el procedimiento, sino que dicho valor se autocomplete insertadondese
el resultado de la función current_dale(), tal como se puede ver en el código del stored procedure "Venta". */
Call Venta(1,2,1,3800,"2023/1/15");
Call Venta(1,2,2,3800,"2023/2/15") ;
Call Venta(1,2,3,3800,"2023/3/15") ;
Call Venta(1,2,4,3800,"2023/4/15") ;
Call Venta(2,2,1,2900,"2023/1/15") ;
Call Venta(2,2,2,2900,"2023/2/15") ;
Call Venta(3,2,1,5000,"2023/1/15") ;
Call Venta(3,2,2,5000,"2023/2/15") ;
Call Venta(3,2,3,5000,"2023/3/15") ;
Call Venta(4,2,1,2900,"2023/1/15") ;
Call Venta(4,2,2,2900,"2023/2/15") ;
Call Venta(4,2,3,2900,"2023/3/15") ;
Call Venta(4,2,4,2900,"2023/4/15") ;
Call Venta(5,2,1,3800,"2023/1/15") ;
Call Venta(5,2,2,3800,"2023/2/15") ;
Call Venta(5,2,3,3800,"2023/3/15") ;
Call Venta(5,2,4,3800,"2023/4/15") ;
Call Venta(5,2,5,3800,"2023/5/15") ;
Call Venta(6,2,1,3800,"2023/1/15") ;
Call Venta(7,2,1,5000,"2023/1/15") ;
Call Venta(8,2,1,2900,"2023/1/15") ;
Call Venta(9,2,1,3800,"2023/1/15") ;
Call Venta(10,1,1,2900,"2023/1/15") ;
Call Venta(10,1,2,2900,"2023/2/15") ;
Call Venta(11,2,1,3800,"2023/1/15") ;
Call Venta(11,2,2,3800,"2023/2/15") ;
Call Venta(11,2,3,3800,"2023/3/15") ;
Call Venta(11,2,4,3800,"2023/4/15") ;
Call Venta(12,2,1,3800,"2023/1/15") ;
Call Venta(12,2,2,3800,"2023/2/15") ;
Call Venta(12,2,3,3800,"2023/3/15") ;
Call Venta(12,2,4,3800,"2023/4/15") ;
Call Venta(13,2,1,2900,"2023/1/15") ;
Call Venta(14,2,1,3800,"2023/1/15") ;
Call Venta(14,2,2,3800,"2023/2/15") ;
Call Venta(14,2,3,3800,"2023/3/15") ;
Call Venta(14,2,4,3800,"2023/4/15") ;
Call Venta(15,2,1,5000,"2023/1/15") ;
Call Venta(15,2,2,5000,"2023/2/15") ;
Call Venta(15,2,3,5000,"2023/3/15") ;
Call Venta(16,2,1,3800,"2023/1/15") ;
Call Venta(16,2,2,3800,"2023/2/15") ;
Call Venta(16,2,3,3800,"2023/3/15") ;
Call Venta(17,2,1,5000,"2023/1/15") ;
Call Venta(17,2,2,5000,"2023/2/15") ;
Call Venta(18,2,1,3800,"2023/1/15") ;
Call Venta(18,2,2,3800,"2023/2/15") ;
Call Venta(18,2,3,3800,"2023/3/15") ;
Call Venta(19,1,1,3800,"2023/1/15") ;
Call Venta(19,1,2,3800,"2023/2/15") ;
Call Venta(19,1,3,3800,"2023/3/15") ;
Call Venta(19,1,4,3800,"2023/4/15") ;
Call Venta(19,1,5,3800,"2023/5/15") ;
Call Venta(20,2,1,5000,"2023/1/15") ;
Call Venta(20,2,2,5000,"2023/2/15") ;
Call Venta(21,2,1,3800,"2023/1/15") ;
Call Venta(21,2,2,3800,"2023/2/15") ;
Call Venta(22,1,1,2900,"2023/1/15") ;
Call Venta(22,1,2,2900,"2023/2/15") ;
Call Venta(22,1,3,2900,"2023/3/15") ;
Call Venta(23,2,1,2900,"2023/1/15") ;
Call Venta(23,2,2,2900,"2023/2/15") ;
Call Venta(23,2,3,2900,"2023/3/15") ;
Call Venta(23,2,4,2900,"2023/4/15") ;
Call Venta(24,2,1,3800,"2023/1/15") ;
Call Venta(24,2,2,3800,"2023/2/15") ;
Call Venta(24,2,3,3800,"2023/3/15") ;
Call Venta(25,2,1,5000,"2023/1/15") ;
Call Venta(25,2,2,5000,"2023/2/15") ;
Call Venta(25,2,3,5000,"2023/3/15") ;
Call Venta(25,2,4,5000,"2023/4/15") ;
Call Venta(25,2,5,5000,"2023/5/15") ;
Call Venta(26,2,1,5000,"2023/1/15") ;
Call Venta(26,2,2,5000,"2023/2/15") ;
Call Venta(26,2,3,5000,"2023/3/15") ;
Call Venta(27,2,1,3800,"2023/1/15") ;
Call Venta(28,2,1,2900,"2023/1/15") ;
Call Venta(28,2,2,2900,"2023/2/15") ;
Call Venta(28,2,3,2900,"2023/3/15") ;
Call Venta(28,2,4,2900,"2023/4/15") ;
Call Venta(28,2,5,2900,"2023/5/15") ;
Call Venta(29,1,1,5000,"2023/1/15") ;
Call Venta(29,1,2,5000,"2023/2/15") ;
Call Venta(29,1,3,5000,"2023/3/15") ;
Call Venta(29,1,4,5000,"2023/4/15") ;
Call Venta(30,2,1,5000,"2023/1/15") ;
Call Venta(30,2,2,5000,"2023/2/15") ;
Call Venta(30,2,3,5000,"2023/3/15") ;
Call Venta(30,2,4,5000,"2023/4/15") ;
Call Venta(30,2,5,5000,"2023/5/15") ;
Call Venta(31,2,1,3800,"2023/1/15") ;
Call Venta(31,2,2,3800,"2023/2/15") ;
Call Venta(31,2,3,3800,"2023/3/15") ;
Call Venta(32,2,1,5000,"2023/1/15") ;
Call Venta(32,2,2,5000,"2023/2/15") ;
Call Venta(33,2,1,5000,"2023/1/15") ;
Call Venta(33,2,2,5000,"2023/2/15") ;
Call Venta(33,2,3,5000,"2023/3/15") ;
Call Venta(34,2,1,5000,"2023/1/15") ;
Call Venta(34,2,2,5000,"2023/2/15") ;
Call Venta(34,2,3,5000,"2023/3/15") ;
Call Venta(35,2,1,3800,"2023/1/15") ;
Call Venta(35,2,2,3800,"2023/2/15") ;
Call Venta(35,2,3,3800,"2023/3/15") ;
Call Venta(36,2,1,2900,"2023/1/15") ;
Call Venta(36,2,2,2900,"2023/2/15") ;
Call Venta(37,2,1,2900,"2023/1/15") ;
Call Venta(37,2,2,2900,"2023/2/15") ;
Call Venta(37,2,3,2900,"2023/3/15") ;
Call Venta(37,2,4,2900,"2023/4/15") ;
Call Venta(37,2,5,2900,"2023/5/15") ;
Call Venta(38,2,1,3800,"2023/1/15") ;
Call Venta(38,2,2,3800,"2023/2/15") ;
Call Venta(38,2,3,3800,"2023/3/15") ;
Call Venta(39,2,1,2900,"2023/1/15") ;
Call Venta(40,2,1,2900,"2023/1/15") ;
Call Venta(40,2,2,2900,"2023/2/15") ;
Call Venta(40,2,3,2900,"2023/3/15") ;
Call Venta(41,2,1,2900,"2023/1/15") ;
Call Venta(41,2,2,2900,"2023/2/15") ;
Call Venta(41,2,3,2900,"2023/3/15") ;
Call Venta(42,1,1,2900,"2023/1/15") ;
Call Venta(42,1,2,2900,"2023/2/15") ;
Call Venta(42,1,3,2900,"2023/3/15") ;
Call Venta(43,2,1,2900,"2023/1/15") ;
Call Venta(43,2,2,2900,"2023/2/15") ;
Call Venta(44,1,1,5000,"2023/1/15") ;
Call Venta(44,1,2,5000,"2023/2/15") ;
Call Venta(44,1,3,5000,"2023/3/15") ;
Call Venta(44,1,4,5000,"2023/4/15") ;
Call Venta(45,2,1,5000,"2023/1/15") ;
Call Venta(46,2,1,5000,"2023/1/15") ;
Call Venta(46,2,2,5000,"2023/2/15") ;
Call Venta(46,2,3,5000,"2023/3/15") ;
Call Venta(47,2,1,3800,"2023/1/15") ;
Call Venta(47,2,2,3800,"2023/2/15") ;
Call Venta(47,2,3,3800,"2023/3/15") ;
Call Venta(47,2,4,3800,"2023/4/15") ;
Call Venta(48,2,1,5000,"2023/1/15") ;
Call Venta(48,2,2,5000,"2023/2/15") ;
Call Venta(48,2,3,5000,"2023/3/15") ;
Call Venta(48,2,4,5000,"2023/4/15") ;
Call Venta(48,2,5,5000,"2023/5/15") ;
Call Venta(49,2,1,3800,"2023/1/15") ;
Call Venta(49,2,2,3800,"2023/2/15") ;
Call Venta(49,2,3,3800,"2023/3/15") ;
Call Venta(49,2,4,3800,"2023/4/15") ;
Call Venta(50,2,1,2900,"2023/1/15") ;
Call Venta(51,2,1,5000,"2023/1/15") ;
Call Venta(51,2,2,5000,"2023/2/15") ;
Call Venta(51,2,3,5000,"2023/3/15") ;
Call Venta(51,2,4,5000,"2023/4/15") ;
Call Venta(51,2,5,5000,"2023/5/15") ;
Call Venta(52,2,1,3800,"2023/1/15") ;
Call Venta(53,2,1,2900,"2023/1/15") ;
Call Venta(54,1,1,2900,"2023/1/15") ;
Call Venta(54,1,2,2900,"2023/2/15") ;
Call Venta(54,1,3,2900,"2023/3/15") ;
Call Venta(54,1,4,2900,"2023/4/15") ;
Call Venta(54,1,5,2900,"2023/5/15") ;
Call Venta(55,2,1,2900,"2023/1/15") ;
Call Venta(55,2,2,2900,"2023/2/15") ;
Call Venta(56,2,1,5000,"2023/1/15") ;
Call Venta(56,2,2,5000,"2023/2/15") ;
Call Venta(57,2,1,3800,"2023/1/15") ;
Call Venta(57,2,2,3800,"2023/2/15") ;
Call Venta(57,2,3,3800,"2023/3/15") ;
Call Venta(57,2,4,3800,"2023/4/15") ;
Call Venta(58,2,1,5000,"2023/1/15") ;
Call Venta(58,2,2,5000,"2023/2/15") ;
Call Venta(58,2,3,5000,"2023/3/15") ;
Call Venta(59,1,1,2900,"2023/1/15") ;
Call Venta(60,2,1,5000,"2023/1/15") ;
Call Venta(60,2,2,5000,"2023/2/15") ;
Call Venta(61,2,1,5000,"2023/1/15") ;
Call Venta(61,2,2,5000,"2023/2/15") ;
Call Venta(61,2,3,5000,"2023/3/15") ;
Call Venta(62,1,1,5000,"2023/1/15") ;
Call Venta(63,2,1,5000,"2023/1/15") ;
Call Venta(63,2,2,5000,"2023/2/15") ;
Call Venta(63,2,3,5000,"2023/3/15") ;
Call Venta(63,2,4,5000,"2023/4/15") ;
Call Venta(63,2,5,5000,"2023/5/15") ;
Call Venta(64,2,1,3800,"2023/1/15") ;
Call Venta(64,2,2,3800,"2023/2/15") ;
Call Venta(64,2,3,3800,"2023/3/15") ;
Call Venta(64,2,4,3800,"2023/4/15") ;
Call Venta(64,2,5,3800,"2023/5/15") ;
Call Venta(65,1,1,2900,"2023/1/15") ;
Call Venta(65,1,2,2900,"2023/2/15") ;
Call Venta(65,1,3,2900,"2023/3/15") ;
Call Venta(66,2,1,2900,"2023/1/15") ;
Call Venta(66,2,2,2900,"2023/2/15") ;
Call Venta(67,2,1,5000,"2023/1/15") ;
Call Venta(67,2,2,5000,"2023/2/15") ;
Call Venta(68,2,1,2900,"2023/1/15") ;
Call Venta(68,2,2,2900,"2023/2/15") ;
Call Venta(69,2,1,3800,"2023/1/15") ;
Call Venta(69,2,2,3800,"2023/2/15") ;
Call Venta(69,2,3,3800,"2023/3/15") ;
Call Venta(69,2,4,3800,"2023/4/15") ;
Call Venta(69,2,5,3800,"2023/5/15") ;
Call Venta(70,2,1,5000,"2023/1/15") ;
Call Venta(70,2,2,5000,"2023/2/15") ;
Call Venta(71,1,1,2900,"2023/1/15") ;
Call Venta(71,1,2,2900,"2023/2/15") ;
Call Venta(71,1,3,2900,"2023/3/15") ;
Call Venta(71,1,4,2900,"2023/4/15") ;
Call Venta(71,1,5,2900,"2023/5/15") ;
Call Venta(72,1,1,3800,"2023/1/15") ;
Call Venta(73,2,1,5000,"2023/1/15") ;
Call Venta(73,2,2,5000,"2023/2/15") ;
Call Venta(73,2,3,5000,"2023/3/15") ;
Call Venta(73,2,4,5000,"2023/4/15") ;
Call Venta(73,2,5,5000,"2023/5/15") ;
Call Venta(74,2,1,3800,"2023/1/15") ;
Call Venta(74,2,2,3800,"2023/2/15") ;
Call Venta(75,2,1,2900,"2023/1/15") ;
Call Venta(75,2,2,2900,"2023/2/15") ;
Call Venta(75,2,3,2900,"2023/3/15") ;
Call Venta(75,2,4,2900,"2023/4/15") ;
Call Venta(76,2,1,3800,"2023/1/15") ;
Call Venta(76,2,2,3800,"2023/2/15") ;
Call Venta(77,1,1,2900,"2023/1/15") ;
Call Venta(77,1,2,2900,"2023/2/15") ;
Call Venta(77,1,3,2900,"2023/3/15") ;
Call Venta(78,1,1,5000,"2023/1/15") ;
Call Venta(78,1,2,5000,"2023/2/15") ;
Call Venta(78,1,3,5000,"2023/3/15") ;
Call Venta(79,2,1,5000,"2023/1/15") ;
Call Venta(79,2,2,5000,"2023/2/15") ;
Call Venta(79,2,3,5000,"2023/3/15") ;
Call Venta(80,1,1,3800,"2023/1/15") ;
Call Venta(80,1,2,3800,"2023/2/15") ;
Call Venta(80,1,3,3800,"2023/3/15") ;
Call Venta(81,1,1,5000,"2023/1/15") ;
Call Venta(81,1,2,5000,"2023/2/15") ;
Call Venta(82,2,1,2900,"2023/1/15") ;
Call Venta(82,2,2,2900,"2023/2/15") ;
Call Venta(82,2,3,2900,"2023/3/15") ;
Call Venta(83,2,1,3800,"2023/1/15") ;
Call Venta(83,2,2,3800,"2023/2/15") ;
Call Venta(84,2,1,5000,"2023/1/15") ;
Call Venta(84,2,2,5000,"2023/2/15") ;
Call Venta(84,2,3,5000,"2023/3/15") ;
Call Venta(84,2,4,5000,"2023/4/15") ;
Call Venta(85,2,1,2900,"2023/1/15") ;
Call Venta(85,2,2,2900,"2023/2/15") ;
Call Venta(85,2,3,2900,"2023/3/15") ;
Call Venta(85,2,4,2900,"2023/4/15") ;
Call Venta(85,2,5,2900,"2023/5/15") ;
Call Venta(86,2,1,5000,"2023/1/15") ;
Call Venta(87,2,1,5000,"2023/1/15") ;
Call Venta(87,2,2,5000,"2023/2/15") ;
Call Venta(87,2,3,5000,"2023/3/15") ;
Call Venta(87,2,4,5000,"2023/4/15") ;
Call Venta(87,2,5,5000,"2023/5/15") ;
Call Venta(88,2,1,3800,"2023/1/15") ;
Call Venta(88,2,2,3800,"2023/2/15") ;
Call Venta(88,2,3,3800,"2023/3/15") ;
Call Venta(88,2,4,3800,"2023/4/15") ;
Call Venta(89,2,1,2900,"2023/1/15") ;
Call Venta(89,2,2,2900,"2023/2/15") ;
Call Venta(90,2,1,2900,"2023/1/15") ;
Call Venta(90,2,2,2900,"2023/2/15") ;
Call Venta(91,2,1,2900,"2023/1/15") ;
Call Venta(91,2,2,2900,"2023/2/15") ;
Call Venta(91,2,3,2900,"2023/3/15") ;
Call Venta(91,2,4,2900,"2023/4/15") ;
Call Venta(91,2,5,2900,"2023/5/15") ;
Call Venta(92,2,1,2900,"2023/1/15") ;
Call Venta(92,2,2,2900,"2023/2/15") ;
Call Venta(92,2,3,2900,"2023/3/15") ;
Call Venta(92,2,4,2900,"2023/4/15") ;
Call Venta(93,2,1,5000,"2023/1/15") ;
Call Venta(93,2,2,5000,"2023/2/15") ;
Call Venta(93,2,3,5000,"2023/3/15") ;
Call Venta(93,2,4,5000,"2023/4/15") ;
Call Venta(93,2,5,5000,"2023/5/15") ;
Call Venta(94,2,1,2900,"2023/1/15") ;
Call Venta(94,2,2,2900,"2023/2/15") ;
Call Venta(95,1,1,2900,"2023/1/15") ;
Call Venta(95,1,2,2900,"2023/2/15") ;
Call Venta(95,1,3,2900,"2023/3/15") ;
Call Venta(95,1,4,2900,"2023/4/15") ;
Call Venta(96,2,1,5000,"2023/1/15") ;
Call Venta(96,2,2,5000,"2023/2/15") ;
Call Venta(96,2,3,5000,"2023/3/15") ;
Call Venta(96,2,4,5000,"2023/4/15") ;
Call Venta(97,1,1,2900,"2023/1/15") ;
Call Venta(97,1,2,2900,"2023/2/15") ;
Call Venta(97,1,3,2900,"2023/3/15") ;
