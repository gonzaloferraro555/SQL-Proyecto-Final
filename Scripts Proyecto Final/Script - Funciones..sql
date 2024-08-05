/*Funciones*/



/*Obtiene el promedio de deuda que los clientes tienen con la empresa, filtrando en la búsqueda y el cálculo
a aquellos clientes que si tienen deuda.*/
DELIMITER $$
CREATE FUNCTION promedio_saldo_ctacte()
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE total_clientes FLOAT;
    DECLARE promedio FLOAT;
    SET total_clientes = (SELECT COUNT(*) FROM cta_cte WHERE adeuda = "Si");
	SET promedio = (SELECT AVG(total_saldo) FROM cta_cte WHERE adeuda = "Si");
RETURN promedio;	
END$$

DELIMITER ;



/*Permite obtener el saldo de deuda de un cliente determinado, debiendo ingresar el número de cliente
a partir del cual queremos obtener la información.*/
DELIMITER $$
CREATE FUNCTION saldo_cliente (número_cliente INT)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
	declare total INTEGER;
    SET total = (SELECT total_saldo FROM cta_cte WHERE id_cliente = número_cliente);
	RETURN total;
END$$

DELIMITER ;


/*Obtiene el total adeudado de los clientes para aquellos que deban mal de $8.000. Este criterio
debería marcar la línea a partir de la cual los clientes son deudores de peso significativo, y la cifra elegida
fue definida como algo representativo, pero daría información de los saldos a cobrar de mayor peso dentro del total de la masa 
a cobrar.*/
DELIMITER $$
CREATE FUNCTION créditos_altos_acobrar ()
RETURNS DOUBLE
NO SQL
BEGIN
	declare total INTEGER;
    SET total = (SELECT SUM(total_saldo) FROM cta_cte WHERE total_saldo >8000);
	RETURN total;
END$$

DELIMITER ;

