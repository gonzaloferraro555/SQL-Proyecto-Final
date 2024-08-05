/*Stored Procedures*/

/* El procedimiento alamcenado venta, registra una venta en la tabla comprobantes_venta, a partir de información 
ingresada como parámetro. La inserción de una nueva venta, implica la actualización del a tabla cta_cte, dandole
un nuevo valor al campo "total_saldo" de la tabla mencionada, exactamente en el registro correspodiente al cliente
que registra la venta, siendo el campo identificador "id_cliente", que es completado con le parámetro de entrada
"cliente_nro". Luego se define un condicional, que permite actualizar el campo "adeuda" de la 
tabla cta_cte al string "Si", en caso de que haya estado anteriormente en valor "No" y el campo total_saldo que recientemente
se actualizó tenga un monto mayor a 0, en resumen actualizamos el campo "adeuda" en caso del que el cliente tenga un monto
adeudado mayor a 0 en la tabla cta_cte. Este procedimiento dispara los triggers de la tabla comprobantes_venta,
el "tr_add_facturas", actualizando la tabla de auditoría que registra aquellos usuarios que insertaron una venta en el sistema, 
y el "tr_checknegativos_facturas", que setea en 0 el monto de las inserciones cuyos importes de factura haya sido 
ingresado con monto negativo y con tipo de comprobante igual a 1, el cual representa "FACTURA A", lo que no es posible, 
el efecto buscado es impidir que se desvirtuen los saldo de cuenta corriente con inserciones de montos incorrectos.
También dispara un trigger llamdo "tr_update_estado" en la tabla cta_cte, cuyo efecto luego de generarse un UPDATE en la misma,
desenlazará una actualización en los campos "adeuda_cliente" y "saldo_ctacte" de la tabla estado_cliente, tomando sus valores 
de la tabla cta_cte, de los campos "adeuda" y "total_saldo", completando así el proceso de actualización del estado del cliente 
y de su saldo en cuenta corriente al generarse una venta. Por último, la inserción en comprobantes_venta, disparará el trigger
"tr_venta", que actualizará el campo "totaL_facturado" en la tabla cta_cte. 
Este procedimiento es el más complejo de la baso de datos,
en resumen chequea las ventas insertadas con montos negativos para rectificarlas, actualiza la tabla de auditoría con el usuario 
que genero la inserción de venta, actualiza los campos "adeuda_cliente" y "saldo_ctacte" de la tabla estado_cliente, y el campo 
"totaL_facturado" de la tabla cta_cte, utilizando 4 triggers que mantienen la integridad de los saldos y daltos almacenados del 
cliente con cada inserción.   */

DELIMITER $$
CREATE PROCEDURE `Venta`(IN cliente_nro INTEGER, IN tipo_comprob INTEGER,IN nro_comprob VARCHAR(20),
importe_comprob double)

BEGIN
	DECLARE condición1 double;
    DECLARE condición2 VARCHAR(2);
	INSERT INTO comprobantes_venta(id_cliente,id_tipo_comprobante,Nro_comprobante,
    importe_comprobante,fecha_comprobante_venta)
    VALUES (cliente_nro,tipo_comprob,nro_comprob,importe_comprob,current_date());
    UPDATE cta_cte
    SET total_saldo = totaL_facturado - total_pagado
    WHERE id_cliente = cliente_nro;
    SET condición1 = (SELECT total_saldo FROM cta_cte WHERE id_cliente = cliente_nro);
    SET condición2 = (SELECT adeuda FROM cta_cte WHERE id_cliente = cliente_nro);
    IF condición1 > 0 and
     condición2 = 'No' THEN
		UPDATE cta_cte
        SET adeuda  = 'Si'
        WHERE id_cliente = cliente_nro; 
	END IF;
END
$$


/*Funciona igual al procedimiento de venta, pero siguiendo al lógica del pago, por lo que el registro del pago se insertará
en la tabla pagos, y el campo "adeuda" de la tabla cta_cte se convertirá en "No", si es que tenía valor "Si", y todo el saldo 
adeudado ha sido cancelado. De igual forma que en el procedimiento "Venta", se dispararán: el trigger "tr_update_estado", que actuará 
ante el UPDATE de la tabla cta_cte, actualizando los campos de la tabla estado_cliente; el trigger "tr_add_pagos", que actualizará
la tabla de audtoría para usuarios que registran pagos; el trigger "tr_pago", que actualiza la columna "totaL_pagado" en la tabla cta_cte.
 */

DELIMITER $$
CREATE PROCEDURE `Pago`(IN cliente_nro INTEGER, IN tipo_pago INTEGER, IN tipo_comprob INTEGER,IN nro_comprob VARCHAR(20),
importe_comprob double)
BEGIN
	INSERT INTO pagos(id_cliente,id_tipo_pago,id_tipo_comprobante,Nro_comprobante,
    importe_pago,fecha_comprobante)
    VALUES (cliente_nro,tipo_pago,tipo_comprob,nro_comprob,importe_comprob,current_date());
    UPDATE cta_cte
    SET total_saldo = totaL_facturado - total_pagado
    WHERE id_cliente = cliente_nro;
    IF (SELECT total_saldo FROM cta_cte WHERE id_cliente = cliente_nro) <= 0 and
    (SELECT adeuda FROM cta_cte WHERE id_cliente = cliente_nro) = 'Si' THEN
		UPDATE cta_cte
        SET adeuda  = 'No'
        WHERE id_cliente = cliente_nro;
	END IF;
END
$$



/*El procedimiento de alta, generará inserciónes en la tablas clientes, ficha_clientes, tabla cta_cte 
y en la tabla estado_cliente. La inserción en la tabla clientes, podría haber disparado un trigger que generase otra inserción y 
desde allí comenzar un encadenamiento de inserciones mediante triggers, pero la finalidad de los mismos está centrada en acciones 
puntuales ante cierta ejecución de una instrucción DML, siendo lo más adecuado para este tipo de acciones consecutivas, la utilización
de un stored procedure, que refleje una transacción. A falta de tiempo la codificación no incluye "save point´s", pero deberían
asegurarse la integridad de las inserciones al agregarse un nuevo cliente, a través de triggers de validación en las inserciones
, y obviamente a través de los save point´s en luego de cada inserción. 
El procedimiento prevee mediante un condicional, que un cliente dado de baja anteriormente, (que no es eliminado de la base de datos), 
pueda ser dado de alta mediante la modificación del campo "estado_cliente" de la tabla estado_cliente al valor de string "Activo", si es que
al intentar darse de alta, su cuit ya existe en la base de datos. Para este condicional se utiliza el campo "cuit", ya que si bien en esta
base de datos no fue seteado como una primary key, refleja las características de una, siendo irrepetible. No haberla seteado en primary key
fue un error, ya que no se protege la duplicación del campo ante una inserción repetida, pero éste procedimiento protege la duplicación 
de clientes por número de cuit, ya que si éste ya existe, no se insertará el cliente, sino que se actualizará el estado del mismo en la base de 
datos.
*/
DELIMITER $$
CREATE PROCEDURE `AltaCliente`(IN Nombre_cliente VARCHAR(50),IN cuit_cliente VARCHAR(13), IN domicilio VARCHAR(70),
IN tipofiscal INTEGER, IN contacto VARCHAR(40))


BEGIN
	IF (SELECT count(*) FROM clientes WHERE cuit = cuit_cliente) =0 THEN
		INSERT INTO clientes(Nombre_Apellido_Denominación,cuit)
		VALUES (Nombre_cliente,cuit_cliente);
		SET @cliente_auxiliar = (SELECT id_cliente FROM clientes WHERE cuit = cuit_cliente);
		INSERT INTO ficha_clientes(id_cliente,cuit,domicilio_cliente,id_tipo_fiscal,contacto_cliente)
		VALUES (@cliente_auxiliar,cuit_cliente,domicilio,tipofiscal,contacto);
		INSERT INTO cta_cte (id_cliente,totaL_facturado,totaL_pagado,total_saldo,adeuda)
        VALUES (@cliente_auxiliar,0,0,0,'No');
		INSERT INTO estado_cliente (id_cliente,estado_cliente,adeuda_cliente,saldo_ctacte)
        VALUES (@cliente_auxiliar,'Activo','No',0); /*No definimos el tipo de servicio, esa sería la contratación, es posterior, otro S.P
        que definirá un contrato en la tabla servicios_contratados, y un tipo de servicio en la tabla estado_cliente.*/
	ELSE
		UPDATE estado_cliente
        SET estado_cliente ="Activo" WHERE id_cliente= @cliente_auxiliar;
	END IF;
END
$$




/*El procedimiento inserta en la tabla servicios_contratados el registro de un nuevo contrato, 
y actualiza el estado de cliente para detallar el servicio que éste ha contratado en el campo "id_servicio".*/
DELIMITER $$
CREATE PROCEDURE `Contrato`(IN idcliente INTEGER,IN idservicio INTEGER, fecha DATE)


BEGIN
		INSERT INTO servicios_contratados(id_cliente,id_servicios,fecha_contrato)
		VALUES (idcliente,idservicio,fecha);
        UPDATE estado_cliente
        SET id_servicios = idservicio WHERE id_cliente=idcliente;
END;
$$