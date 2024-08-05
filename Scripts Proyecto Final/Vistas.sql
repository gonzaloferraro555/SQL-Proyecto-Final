/*VISTAS*/


    

/*
Refleja la concentración de bajas en función del motivo de la misma,
lo que otorga información como insumo para el informe que detalle
los factores de mayor peso para los clientes,  a la hora de decidir darse de baja, pudiendo así 
aplicar modificaciones para disminuir los índices de baja de clientes con medidas más específicas.*/



CREATE OR REPLACE VIEW bajas_concentración AS
	(SELECT DISTINCT b.descripción_baja, COUNT(*)
    FROM bajas d JOIN bajas_tipo b ON (d.id_tipo_baja = b.id_tipo_baja)
    GROUP BY b.descripción_baja);
    





/*Refleja cual es el servicio que los clientes encuentran más atractivo, permitiendo ahondar
en los beneficios del mismo, o asimilar las restantes opciones con atractivos similares,
de manera tal que genere una atracción para clientes potenciales,o una potenciación de los servicios actualmente contratados
por un cliente ya existente.*/
CREATE OR REPLACE VIEW contratos_concentración AS
	(SELECT DISTINCT s.descripción, COUNT(*)
    FROM servicios_contratados a JOIN servicios_contratables s ON (a.id_servicios = s.id_servicios)
    GROUP BY s.descripción);
    





/*Detalla que proporción de los clientes actuales, ya sea activos o no, tienen
deuda con la empresa, ayudando a la proyección financiera y a la definición de
diferentes perfiles de riesgo de pago para cada cliente.*/
CREATE OR REPLACE VIEW	concentración_deuda AS
	(SELECT adeuda_cliente,COUNT(*)
    FROM estado_cliente 
    GROUP BY adeuda_cliente);
    




/*Detalla que medio de pago toma mayor preponderancia en los clientes, facilitando
la proyección del área financiera de la empresa, al tener un preconcepto o idea general de que tipo de
recursos tendrá en el corto plazo, en combinación con la propoción de clientes que adeuda con respecto al total, 
provenientes de la vista "concentración_deuda".*/
CREATE OR REPLACE VIEW pagos_concentración AS
	(SELECT DISTINCT d.descripción_tipo_pago, COUNT(*)
    FROM pagos l JOIN pagos_tipo d ON (l.id_tipo_pago = d.id_tipo_pago)
    GROUP BY d.descripción_tipo_pago);






/*Detalla la concentración de tipos fiscales en los clientes existentes, permite ponderar 
la composición de clientes en base a sus características, por consumidor final, o empresa, 
o pequeños emprendedores, lo que permitiría analizar a que tipos de clientes se está generando
mayor atracción y por qué razón.*/

CREATE OR REPLACE VIEW tipofiscal_concentración AS
	(SELECT DISTINCT d.descripción_fiscal, COUNT(*)
    FROM ficha_clientes  f JOIN tipo_fiscal d ON ( f.id_tipo_fiscal = d.id_tipo_fiscal)
    GROUP BY d.descripción_fiscal);





/*El detalle de esta vista dará información útil de cuales son los tipos de soporte más invocados
por los clientes al presentarse con inconvenientes, permitiendo enfocar los esfuerzos del área técnica
de la empresa de manera más focalizada en las áreas de mayor deficiencia en cuánto a funcionamiento.*/
CREATE OR REPLACE VIEW tiposoporte_concentración AS
	(SELECT DISTINCT j.descripción_tipo_soporte, COUNT(*)
    FROM registros_soporte  r JOIN  soporte_tipos j WHERE (r.id_tipo_soporte = j.id_tipo_soporte)
    GROUP BY j.descripción_tipo_soporte);




/*Da un detalle resumido del cliente de manera integral, combinando información de la tabla clientes, invocando de ella el Nombre del cliente,
obtenemos datos del tipo fical, propio de la tabla tipo_fiscal, e información de la tabla ficha_clientes y estado_cliente, 
de donde se obtiene información del cuit del cliente más su contacto, y de si el cliente adeuda más el monto adeudado, respectivamente.*/
CREATE OR REPLACE VIEW	 resumen_cliente AS
	(SELECT DISTINCT f.cuit,c.Nombre_Apellido_Denominación,f2.descripción_fiscal,f.contacto_cliente,a.adeuda_cliente,a.saldo_ctacte
    FROM ficha_clientes f 
    JOIN clientes c ON (f.id_cliente=c.id_cliente) 
    JOIN tipo_fiscal f2 ON (f.id_tipo_fiscal = f2.id_tipo_fiscal)
    JOIN estado_cliente a ON (f.id_cliente= a.id_cliente)) ;
    




/*La siguiente vista nos da información de los clientes con deuda, su monto, e información de contacto
para notificar a los mismos de su deuda  y cancelamiento de la misma. Se obtiene información del cuit del cliente proveniente
de la tabla ficha_clientes, el nombre o denominación del mismo de la tabla clientes, el tipo fiscal de la tabla tipo_fiscal y
el saldo adeudado proveniente de la tabla estado_cliente. La información es filtrada para aquellos registros en los cuales
el cliente adeuda en la tabla estado_cliente. */
CREATE OR REPLACE VIEW	 resumen_morosos AS
	(SELECT DISTINCT f.cuit,c.Nombre_Apellido_Denominación,f2.descripción_fiscal,f.contacto_cliente,a.saldo_ctacte
    FROM ficha_clientes f 
    JOIN clientes c ON (f.id_cliente=c.id_cliente) 
    JOIN tipo_fiscal f2 ON (f.id_tipo_fiscal = f2.id_tipo_fiscal)
    JOIN estado_cliente a ON (f.id_cliente= a.id_cliente)
    WHERE a.adeuda_cliente="Si") ;
    




/*Los clientes dados de baja no se eliminan de la base de dato, simplemente se modifica su estado
 a "No Activo", por lo que un cliente puede contar con varias bajas en su historial, Con esta vista obtendremos
 información de las bajas de los clientes, y sus causales, agrupando cada cliente, y detallando
 la cantidad de veces que se ha dado de baja por cada causal provista por la Base de Datos. La agrupación con
 el criterio de "p.cuit" es necesaria, ya que p.Nombre_Apellido_Denominación" no es una clave primaria, y podría
 haber repetidos en algún punto en la evolución de la Base de Datos.*/
CREATE OR REPLACE VIEW	 clientes_con_bajas AS
	(SELECT DISTINCT p.Nombre_Apellido_Denominación, p.cuit,c.descripción_baja,COUNT(*)
    FROM bajas  v JOIN clientes p ON (v.id_cliente=p.id_cliente) 
    JOIN bajas_tipo c ON (c.id_tipo_baja=v.id_tipo_baja)
    GROUP BY p.Nombre_Apellido_Denominación,p.cuit,c.descripción_baja);






    
