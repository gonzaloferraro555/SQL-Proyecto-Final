/*Triggers

*/

/*La inserción de una baja a un cliente no lo eliminará de la base de datos, sino que actualizará 
el campo "estado_cliente" de la tabla estado_cliente, modificando su valor de string a "No Activo".*/

CREATE TRIGGER tr_bajas
AFTER INSERT ON bajas
FOR EACH ROW
UPDATE estado_cliente
SET estado_cliente= "No Activo"
WHERE id_cliente=NEW.id_cliente;


/*La activación de este trigger ante la inserción de una venta, actualizará el campo 
"totaL_facturado"  de la tabla cta_cte. Lo particular de este trigger es que se activa
luego de la inserción de la venta en el stored procedure "Venta", y permite que la siguiente instrucción
del procedimiento se calcule con el valor actualizado del total facturado, 
es decir la actualización del campo "total_saldo" del a tabla cta_cte. */

CREATE TRIGGER tr_venta
AFTER INSERT ON comprobantes_venta
FOR EACH ROW
UPDATE cta_cte
SET totaL_facturado= (SELECT SUM(importe_comprobante) FROM comprobantes_venta
WHERE id_cliente=New.id_cliente)
WHERE id_cliente=New.id_cliente;

/*La activación de este trigger, ante la inserción de un pago, actualizará el campo ""totaL_pagado,
de la tabla cta_cte. Lo particular de este trigger es que se activa
luego de la inserción del pago en el stored procedure "Pago", y permite que la siguiente instrucción
del procedimiento se calcule con el valor actualizado del total facturado, 
es decir la actualización del campo "total_saldo" del a tabla cta_cte. */

CREATE TRIGGER tr_pago
AFTER INSERT ON pagos
FOR EACH ROW
UPDATE cta_cte
SET totaL_pagado= (SELECT SUM(importe_pago) FROM pagos
WHERE id_cliente=New.id_cliente)
WHERE id_cliente=New.id_cliente;



/*El trigger 'tr_add_pagos' inserta en la tabla de bitácora 'auditoría_pagos',
el registro de que usuario realizó la insersión, la fecha actual y la hora del momento
de la insersión, y el id de la inserción correspondiente a la tabla pagos, 
tabla donde se registran los pagos realizados por los clientes.*/

CREATE TRIGGER tr_add_pagos
AFTER INSERT ON pagos
FOR EACH ROW
INSERT INTO auditoría_pagos (usuario,fecha_aud,hora_aud,id_comprobante_pago)
VALUES (USER(),CURRENT_DATE(),CURRENT_TIME(),NEW.id_comprobantes_pago);


/*El trigger 'tr_checknegativos_facturas', verifica que una insersión en la tabla 
'comprobantes_venta' sea válida. En ésta tabla se insertan facturas de venta con 
importe positivo y cancelación  de las mismas facturas con importe negativo, dependiendo del tipo de comprobante, 
ya sea Factura (+), o Nota de Crédito (-). Dado esta característica el trigger debe
verificar que el tipo de comprobante corresponda a factura de venta, y por lo tanto impactar de manera positiva
en la tabla, y verificar que la inserción haya sido con valor negativo en el campo 'importe_factura'. 
Ante el cumplimiento de ambas condiciones, se rectifica el registro,
ya que debe ser si o si positivo, y se lo define en 0, para no afectar la tabla de comprobantes 
de venta con importes incorrectos. Lo que faltaría aquí es un S.P que devuelva un error,
para que el registro pueda insertarse como corresponde, notificando al usuario del tipo de 
error. */

DELIMITER $$
CREATE TRIGGER tr_checknegativos_facturas
BEFORE INSERT ON comprobantes_venta
FOR EACH ROW
BEGIN
	IF 	NEW.id_tipo_comprobante = 1 and NEW.importe_comprobante < 0 THEN
		SET NEW.importe_comprobante = 0;
	END IF;
END$$
 DELIMITER ; 
 
 
 /*El trigger 'tr_add_facturas' inserta en la tabla de bitácora 'auditoría_facturas',
el registro de que usuario realizó la insersión, la fecha actual y la hora del momento
de la insersión, y el id de la inserción correspondiente a la tabla comprobantes_venta, 
tabla donde se registran las facturas de venta de los clientes.*/

DELIMITER $$
CREATE TRIGGER tr_add_facturas
AFTER INSERT ON comprobantes_venta
FOR EACH ROW
BEGIN
INSERT INTO auditoría_facturas (usuario,fecha_aud,hora_aud,id_comprobante_venta)
VALUES (USER(),CURRENT_DATE(),CURRENT_TIME(),NEW.id_comprobantes_venta);
END$$

DELIMITER ; 
 
 
 
 /* Este trigger se dispará ante la actualización en la tabla cta_cte, la cual ocurre con los procedimientos
 "Venta" y "Pago". Su función es mantener la tabla estado_cliente actualizada, específicamente para los campos
 "adeuda_cliente", y "saldo_ctacte", ya que son los campos que podrían modificarse ante una nueva venta o un nuevo
 pago. El campo "estado_cliente" de la misma tabla, sólo se modifica ante la inserción de bajas, y su actuaización está a cargo
 del trigger "tr_bajas".*/
 
DELIMITER $$
CREATE TRIGGER tr_update_estado
AFTER UPDATE ON cta_cte
FOR EACH ROW
BEGIN
    IF NEW.adeuda = "Si" THEN
		UPDATE estado_cliente
		SET adeuda_cliente  = 'Si',saldo_ctacte = New.total_saldo
		WHERE id_cliente = New.id_cliente;
	ELSE
		IF NEW.adeuda = "No" THEN
        UPDATE estado_cliente
		SET adeuda_cliente  = 'No', saldo_ctacte = New.total_saldo
		WHERE id_cliente = New.id_cliente;
        END IF;
	END IF;
END$$
	DELIMITER ;
