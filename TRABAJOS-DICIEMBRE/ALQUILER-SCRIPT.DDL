-- Generado por Oracle SQL Developer Data Modeler 17.2.0.188.1059
--   en:        2018-12-03 01:47:12 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alquiler (
    codalq   CHAR(5) NOT NULL,
    fecalq   DATE,
    codper   CHAR(5) NOT NULL,
    codpro   CHAR(5) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN alquiler.codalq IS
    'CODIGO ALQUILER';

COMMENT ON COLUMN alquiler.fecalq IS
    'FECHA DE ALQUILER';

ALTER TABLE alquiler ADD CONSTRAINT alquiler_pk PRIMARY KEY ( codalq );

CREATE TABLE detalle_alquiler (
    coddetalq      CHAR(5) NOT NULL,
    fecfindetalq   DATE,
    cosdetalq      VARCHAR2(100),
    estdetalq      VARCHAR2(100),
    codalq         CHAR(5) NOT NULL,
    codviv         CHAR(5) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN detalle_alquiler.coddetalq IS
    'CODIGO DETALLE ALQUILER';

COMMENT ON COLUMN detalle_alquiler.fecfindetalq IS
    'FECHA DE FINALIZACION DE DETALLE ALQUILER';

COMMENT ON COLUMN detalle_alquiler.cosdetalq IS
    'COSTO DE DETALLE ALQUILER';

COMMENT ON COLUMN detalle_alquiler.estdetalq IS
    'ESTADO DE DETALLE ALQUILER';

ALTER TABLE detalle_alquiler ADD CONSTRAINT detalle_alquiler_pk PRIMARY KEY ( coddetalq );

CREATE TABLE estado_vivienda (
    codestviv    CHAR(5) NOT NULL,
    descestviv   VARCHAR2(100)
)
    LOGGING;

COMMENT ON COLUMN estado_vivienda.codestviv IS
    'CODIGO DE ESTADO VIVIENDA';

COMMENT ON COLUMN estado_vivienda.descestviv IS
    'DESCRIPCION DE ESTADO VIVIENDA';

ALTER TABLE estado_vivienda ADD CONSTRAINT estado_vivienda_pk PRIMARY KEY ( codestviv );

CREATE TABLE persona (
    codper   CHAR(5) NOT NULL,
    nomper   VARCHAR2(100),
    apeper   VARCHAR2(100),
    dniper   CHAR(8),
    dirper   VARCHAR2(100),
    telper   CHAR(7),
    celper   CHAR(9),
    emaper   VARCHAR2(100),
    estper   VARCHAR2(100),
    usuper   VARCHAR2(100),
    pasper   VARCHAR2(100) NOT NULL,
    codubi   CHAR(5) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN persona.codper IS
    'CODIGO PERSONA';

COMMENT ON COLUMN persona.nomper IS
    'NOMBRE PERSONA';

COMMENT ON COLUMN persona.apeper IS
    'APELLIDO PERSONA';

COMMENT ON COLUMN persona.dniper IS
    'DNI PERSONA';

COMMENT ON COLUMN persona.dirper IS
    'DIRECCION PERSONA';

COMMENT ON COLUMN persona.telper IS
    'TELEFONO PERSONA';

COMMENT ON COLUMN persona.celper IS
    'CELULAR PERSONA';

COMMENT ON COLUMN persona.emaper IS
    'EMAIL PERSONA';

COMMENT ON COLUMN persona.estper IS
    'ESTADO DE LA PERSONA';

COMMENT ON COLUMN persona.usuper IS
    'USUARIO PERSONA';

COMMENT ON COLUMN persona.pasper IS
    'CONTRASEÑA PERSONA';

ALTER TABLE persona ADD CONSTRAINT persona_pk PRIMARY KEY ( codper );

CREATE TABLE propietario (
    codpro   CHAR(5) NOT NULL,
    nompro   VARCHAR2(100),
    apepro   VARCHAR2(100),
    dnipro   CHAR(8),
    telpro   CHAR(7),
    emapro   VARCHAR2(100),
    codubi   CHAR(5) NOT NULL,
    codper   CHAR(5) NOT NULL,
    codviv   CHAR(5) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN propietario.codpro IS
    'CODIGO DEL PROPIETARIO';

COMMENT ON COLUMN propietario.nompro IS
    'NOMBRE DEL PROPIETARIO';

COMMENT ON COLUMN propietario.apepro IS
    'APELLIDOS DEL PROPIETARIO';

COMMENT ON COLUMN propietario.dnipro IS
    'DNI PROPIETARIO';

COMMENT ON COLUMN propietario.telpro IS
    'TELEFONO PROPIETARIO';

COMMENT ON COLUMN propietario.emapro IS
    'CORREO PROPIETARIO';

ALTER TABLE propietario ADD CONSTRAINT propietario_pk PRIMARY KEY ( codpro );

CREATE TABLE tipo_vivienda (
    codtipviv    CHAR(5) NOT NULL,
    desctipviv   VARCHAR2(100)
)
    LOGGING;

COMMENT ON COLUMN tipo_vivienda.codtipviv IS
    'CODIGO TIPO VIVIENDA';

COMMENT ON COLUMN tipo_vivienda.desctipviv IS
    'DESCRIPCION VIVIENDA';

ALTER TABLE tipo_vivienda ADD CONSTRAINT tipo_vivienda_pk PRIMARY KEY ( codtipviv );

CREATE TABLE ubigeo (
    codubi   CHAR(5) NOT NULL,
    disubi   VARCHAR2(100),
    proubi   VARCHAR2(100),
    depubi   VARCHAR2(100)
)
    LOGGING;

COMMENT ON COLUMN ubigeo.codubi IS
    'CODIGO UBIGEO';

COMMENT ON COLUMN ubigeo.disubi IS
    'DISTRITO';

COMMENT ON COLUMN ubigeo.proubi IS
    'PROVINCIA';

COMMENT ON COLUMN ubigeo.depubi IS
    'DEPARTAMENTO';

ALTER TABLE ubigeo ADD CONSTRAINT ubigeo_pk PRIMARY KEY ( codubi );

CREATE TABLE vivienda (
    codviv      CHAR(5) NOT NULL,
    descviv     VARCHAR2(100),
    canhabviv   VARCHAR2(100),
    dirviv      VARCHAR2(100),
    fotviv      BLOB,
    codubi      CHAR(5) NOT NULL,
    codestviv   CHAR(5) NOT NULL,
    codtipviv   CHAR(5) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN vivienda.codviv IS
    'CODIGO VIVIENDA';

COMMENT ON COLUMN vivienda.descviv IS
    'DESCRIPCION VIVIENDA';

COMMENT ON COLUMN vivienda.canhabviv IS
    'CANTIDAD DE HABITANTES VIVENDA';

COMMENT ON COLUMN vivienda.dirviv IS
    'DIRECCION DE LA VIVIENDA';

COMMENT ON COLUMN vivienda.fotviv IS
    'FOTO DE LA VIVIENDA';

ALTER TABLE vivienda ADD CONSTRAINT vivienda_pk PRIMARY KEY ( codviv );

ALTER TABLE alquiler
    ADD CONSTRAINT alquiler_persona_fk FOREIGN KEY ( codper )
        REFERENCES persona ( codper )
    NOT DEFERRABLE;

ALTER TABLE alquiler
    ADD CONSTRAINT alquiler_propietario_fk FOREIGN KEY ( codpro )
        REFERENCES propietario ( codpro )
    NOT DEFERRABLE;

ALTER TABLE detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_alquiler_fk FOREIGN KEY ( codalq )
        REFERENCES alquiler ( codalq )
    NOT DEFERRABLE;

ALTER TABLE detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_vivienda_fk FOREIGN KEY ( codviv )
        REFERENCES vivienda ( codviv )
    NOT DEFERRABLE;

ALTER TABLE persona
    ADD CONSTRAINT persona_ubigeo_fk FOREIGN KEY ( codubi )
        REFERENCES ubigeo ( codubi )
    NOT DEFERRABLE;

ALTER TABLE propietario
    ADD CONSTRAINT propietario_persona_fk FOREIGN KEY ( codper )
        REFERENCES persona ( codper )
    NOT DEFERRABLE;

ALTER TABLE propietario
    ADD CONSTRAINT propietario_ubigeo_fk FOREIGN KEY ( codubi )
        REFERENCES ubigeo ( codubi )
    NOT DEFERRABLE;

ALTER TABLE propietario
    ADD CONSTRAINT propietario_vivienda_fk FOREIGN KEY ( codviv )
        REFERENCES vivienda ( codviv )
    NOT DEFERRABLE;

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_estado_vivienda_fk FOREIGN KEY ( codestviv )
        REFERENCES estado_vivienda ( codestviv )
    NOT DEFERRABLE;

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_tipo_vivienda_fk FOREIGN KEY ( codtipviv )
        REFERENCES tipo_vivienda ( codtipviv )
    NOT DEFERRABLE;

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_ubigeo_fk FOREIGN KEY ( codubi )
        REFERENCES ubigeo ( codubi )
    NOT DEFERRABLE;



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             19
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
