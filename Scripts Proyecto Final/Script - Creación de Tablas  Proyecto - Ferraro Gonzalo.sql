CREATE SCHEMA proyectofinal;

USE proyectofinal;

CREATE TABLE clientes (
	id_cliente 			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre_Apellido_Denominación 			VARCHAR(50) NOT NULL)
    ;
    
CREATE TABLE tipo_fiscal (
	id_tipo_fiscal 			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripción_fiscal 			VARCHAR(40) NOT NULL)
	;    
    
CREATE TABLE ficha_clientes (
	id_ficha_cliente 	INT NOT NULL AUTO_INCREMENT,
	id_cliente 			INT NOT NULL,
    dni_cliente			VARCHAR(13) NOT NULL,
    domicilio_cliente	VARCHAR(70),
	id_tipo_fiscal		INT NOT NULL,
    contacto_cliente	VARCHAR(40),
    PRIMARY KEY (id_ficha_cliente,dni_cliente),
    CONSTRAINT `FK_id_cliente` FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
	CONSTRAINT `FK_tipo_fiscal` FOREIGN KEY (id_tipo_fiscal) REFERENCES tipo_fiscal (id_tipo_fiscal)
    );

CREATE TABLE servicios_contratables (
	id_servicios 	INT NOT NULL AUTO_INCREMENT,
    descripción 	VARCHAR(400) NOT NULL,
	costo_servicio	REAL NOT NULL,
    PRIMARY KEY (id_servicios)
    );
    
CREATE TABLE estado_cliente (
	id_status_cliente 	INT NOT NULL AUTO_INCREMENT,
    id_cliente 			INT NOT NULL,
    estado_cliente		VARCHAR(10) NOT NULL,
    id_servicios 		INT NOT NULL,
    adeuda_cliente		VARCHAR(2),
    saldo_ctacte 		Real NOT NULL,
    PRIMARY KEY (id_status_cliente),
    CONSTRAINT `FK_id_cliente_estado` FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    CONSTRAINT `FK_id_servicios` FOREIGN KEY (id_servicios) REFERENCES servicios_contratables (id_servicios)
    );
    
CREATE TABLE bajas_tipo (
	id_tipo_baja 			INT NOT NULL AUTO_INCREMENT,
    descripción_baja			VARCHAR(50),
    PRIMARY KEY (id_tipo_baja)
    );



    
CREATE TABLE bajas (
	id_baja 			INT NOT NULL AUTO_INCREMENT,
    id_cliente 			INT NOT NULL,
    fecha_baja			DATE NOT NULL,
	id_tipo_baja 		INT NOT NULL,
    PRIMARY KEY (id_baja),
    CONSTRAINT `FK_id_cliente_bajas` FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    CONSTRAINT `FK_id_tipo_baja` FOREIGN KEY (id_tipo_baja) REFERENCES bajas_tipo (id_tipo_baja)
    );
    

CREATE TABLE comprobantes_tipo (
    id_tipo_comprobante 			INT NOT NULL AUTO_INCREMENT,
    descripción_tipo_comprobante	VARCHAR(30),
    PRIMARY KEY (id_tipo_comprobante)
    );

    
CREATE TABLE comprobantes_venta (
	id_comprobantes_venta 	INT NOT NULL AUTO_INCREMENT,
    id_cliente 				INT NOT NULL,
    id_tipo_comprobante 	INT NOT NULL,
    Nro_comprobante		 	VARCHAR(20) NOT NULL,
    importe_comprobante  	REAL NOT NULL,
    fecha_comprobante_venta		DATE NOT NULL,
    PRIMARY KEY (id_comprobantes_venta),
    CONSTRAINT `FK_id_cliente_comprobantes` FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    CONSTRAINT `FK_id_tipo_comprobante` FOREIGN KEY (id_tipo_comprobante) REFERENCES comprobantes_tipo (id_tipo_comprobante)
    );
    
CREATE TABLE pagos_tipo (
    id_tipo_pago 			INT NOT NULL AUTO_INCREMENT,
    descripción_tipo_pago	VARCHAR(20),
    PRIMARY KEY (id_tipo_pago)
    );
    
CREATE TABLE pagos (
	id_comprobantes_pago 	INT NOT NULL AUTO_INCREMENT,
    id_cliente 			INT NOT NULL,
    id_tipo_pago     	INT NOT NULL,
    id_tipo_comprobante INT NOT NULL,
    Nro_comprobante		VARCHAR(20) NOT NULL,
    importe_pago  		REAL NOT NULL,
    fecha_comprobante	DATE NOT NULL,
    PRIMARY KEY (id_comprobantes_pago),
    CONSTRAINT `FK_id_cliente_pagos` FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    CONSTRAINT `FK_id_tipo_comprobantepago` FOREIGN KEY (id_tipo_comprobante) REFERENCES comprobantes_tipo (id_tipo_comprobante),
    CONSTRAINT `FK_id_tipo_pago` FOREIGN KEY (id_tipo_pago) REFERENCES pagos_tipo (id_tipo_pago)
    );
    
CREATE TABLE cta_cte (
	id_cta_cte 			INT NOT NULL AUTO_INCREMENT,
    id_cliente 			INT NOT NULL,
    totaL_facturado     REAL NOT NULL,
    totaL_pagado    	REAL NOT NULL,
    total_saldo			REAL,
	adeuda				VARCHAR(2),
    PRIMARY KEY (id_cta_cte),
    CONSTRAINT `FK_id_cliente_ctacte` FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
    );
    
    
CREATE TABLE soporte_tipos (
    id_tipo_soporte			INT NOT NULL AUTO_INCREMENT,
    descripción_tipo_soporte	VARCHAR(25),
    PRIMARY KEY (id_tipo_soporte)
    );
    
CREATE TABLE encuesta_tipos (
    id_calificación			INT NOT NULL AUTO_INCREMENT,
    descripción_tipo_encuesta	VARCHAR(60),
    PRIMARY KEY (id_calificación)
    );
    

CREATE TABLE registros_soporte (
	id_soporte 		INT NOT NULL AUTO_INCREMENT,
    id_cliente 			INT NOT NULL,
    id_tipo_soporte			INT NOT NULL,
    contacto_cliente	VARCHAR(20),
    descripción_soporte		VARCHAR(100),
    fecha_soporte	DATE NOT NULL,
    id_calificación INT,
    motivo_calificación VARCHAR (300),
    PRIMARY KEY (id_soporte),
    CONSTRAINT `FK_id_cliente_soporte` FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    CONSTRAINT `FK_id_tipo_soporte` FOREIGN KEY (id_tipo_soporte) REFERENCES soporte_tipos (id_tipo_soporte),
    CONSTRAINT `FK_id_calificación` FOREIGN KEY (id_calificación) REFERENCES encuesta_tipos (id_calificación)
    );
    
CREATE TABLE servicios_contratados (
	id_contratos 	INT NOT NULL AUTO_INCREMENT,
    id_cliente 		INT NOT NULL,
    id_servicios 	INT NOT NULL,
	fecha_contrato	DATE NOT NULL,
    PRIMARY KEY (id_contratos),
    CONSTRAINT `FK_id_cliente_servicio_contratado` FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    CONSTRAINT `FK_id_servicio` FOREIGN KEY (id_servicios) REFERENCES servicios_contratables (id_servicios)
    );
    
CREATE TABLE auditoría_pagos (
	id_aud INT PRIMARY KEY auto_increment,
    usuario VARCHAR(20),
    fecha_aud DATE,
    hora_aud TIME,
	id_comprobante_pago INTEGER);
    
    
CREATE TABLE auditoría_facturas (
	id_aud INT PRIMARY KEY auto_increment,
    usuario VARCHAR(20),
    fecha_aud DATE,
    hora_aud TIME,
    id_comprobante_venta INTEGER);    
