-- Generated by Oracle SQL Developer Data Modeler 18.3.0.268.1156
--   at:        2018-11-08 18:29:59 COT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE alquiler (
    codalq              INTEGER NOT NULL,
    fecinalq            DATE,
    persona_codper1     INTEGER NOT NULL,
    persona_passwper1   VARCHAR2(50) NOT NULL,
    persona_codubi1     CHAR(6) NOT NULL,
    persona_codper      INTEGER NOT NULL,
    persona_passwper    VARCHAR2(50) NOT NULL,
    persona_codubi      CHAR(6) NOT NULL
);

COMMENT ON COLUMN alquiler.codalq IS
    'Codigo de alquiler';

COMMENT ON COLUMN alquiler.fecinalq IS
    'Fecha del alquiler';

CREATE UNIQUE INDEX alquiler__idx ON
    alquiler (
        persona_codper
    ASC,
        persona_passwper
    ASC,
        persona_codubi
    ASC );

CREATE UNIQUE INDEX alquiler__idxv1 ON
    alquiler (
        persona_codper1
    ASC,
        persona_passwper1
    ASC,
        persona_codubi1
    ASC );

ALTER TABLE alquiler ADD CONSTRAINT alquiler_pk PRIMARY KEY ( codalq );

CREATE TABLE detalle_alquiler (
    coddetalq         INTEGER NOT NULL,
    fecfindetalq      DATE,
    costdetalq        NUMBER,
    estalqviv         INTEGER,
    alquiler_codalq   INTEGER NOT NULL,
    vivienda_codviv   INTEGER NOT NULL
);

COMMENT ON COLUMN detalle_alquiler.coddetalq IS
    'Codigo del detalle';

COMMENT ON COLUMN detalle_alquiler.fecfindetalq IS
    'Fecha fin del alquiler';

COMMENT ON COLUMN detalle_alquiler.costdetalq IS
    'Costo del alquiler';

COMMENT ON COLUMN detalle_alquiler.estalqviv IS
    'Estado del alquiler';

CREATE UNIQUE INDEX detalle_alquiler__idx ON
    detalle_alquiler (
        alquiler_codalq
    ASC );

CREATE UNIQUE INDEX detalle_alquiler__idxv1 ON
    detalle_alquiler (
        vivienda_codviv
    ASC );

ALTER TABLE detalle_alquiler ADD CONSTRAINT detalle_alquiler_pk PRIMARY KEY ( coddetalq );

CREATE TABLE estado_vivienda (
    codestviv    INTEGER NOT NULL,
    descestavi   VARCHAR2(100)
);

ALTER TABLE estado_vivienda ADD CONSTRAINT estado_vivienda_pk PRIMARY KEY ( codestviv );

CREATE TABLE persona (
    codper          INTEGER NOT NULL,
    nomper          VARCHAR2(50),
    apepatper       VARCHAR2(150),
    apematper       VARCHAR2(150),
    dniper          CHAR(8),
    dirper          VARCHAR2(150),
    telef1per       VARCHAR2(9),
    telef2per       VARCHAR2(9),
    emailper        VARCHAR2(80),
    estper          CHAR(1),
    usuarper        VARCHAR2(50),
    passwper        VARCHAR2(50) NOT NULL,
    ubigeo_codubi   CHAR(6) NOT NULL
);

COMMENT ON COLUMN persona.codper IS
    'Codigo de Persona';

COMMENT ON COLUMN persona.nomper IS
    'Nombre de persona';

COMMENT ON COLUMN persona.apepatper IS
    'Apellido paterno ';

COMMENT ON COLUMN persona.apematper IS
    'Apellido materno ';

COMMENT ON COLUMN persona.dniper IS
    'DNI de la persona';

COMMENT ON COLUMN persona.dirper IS
    'Direccion de la persona';

COMMENT ON COLUMN persona.telef1per IS
    'Telefono 1 de la persona';

COMMENT ON COLUMN persona.telef2per IS
    'Telefono 2 de la persona';

COMMENT ON COLUMN persona.emailper IS
    'Email de la persona';

COMMENT ON COLUMN persona.estper IS
    'Estado de la persona';

COMMENT ON COLUMN persona.usuarper IS
    'Usuario de la persona';

COMMENT ON COLUMN persona.passwper IS
    'Contrase�a de la persona';

ALTER TABLE persona
    ADD CONSTRAINT persona_pk PRIMARY KEY ( codper,
                                            passwper,
                                            ubigeo_codubi );

CREATE TABLE tipo_vivienda (
    codtipviv    INTEGER NOT NULL,
    desctipviv   VARCHAR2(100)
);

COMMENT ON COLUMN tipo_vivienda.codtipviv IS
    'Codigo de tipo de la vivienda';

COMMENT ON COLUMN tipo_vivienda.desctipviv IS
    'Descripcion de la vivienda';

ALTER TABLE tipo_vivienda ADD CONSTRAINT tipo_vivienda_pk PRIMARY KEY ( codtipviv );

CREATE TABLE ubigeo (
    codubi    CHAR(6) NOT NULL,
    distubi   VARCHAR2(100),
    provubi   VARCHAR2(100),
    dptoubi   VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
);

COMMENT ON COLUMN ubigeo.codubi IS
    'Codigo del ubigeo';

COMMENT ON COLUMN ubigeo.distubi IS
    'Distrito ';

COMMENT ON COLUMN ubigeo.provubi IS
    'Provincia';

COMMENT ON COLUMN ubigeo.dptoubi IS
    'Departamento ';

ALTER TABLE ubigeo ADD CONSTRAINT ubigeo_pk PRIMARY KEY ( codubi );

CREATE TABLE vivienda (
    codviv                      INTEGER NOT NULL,
    descviv                     VARCHAR2(150),
    canthabviv                  INTEGER,
    dirviv                      VARCHAR2(150),
    fotoviv                     BLOB,
    estado_vivienda_codestviv   INTEGER NOT NULL,
    tipo_vivienda_codtipviv     INTEGER NOT NULL,
    ubigeo_codubi               CHAR(6) NOT NULL
);

COMMENT ON COLUMN vivienda.descviv IS
    'Descripcion de la vivienda';

COMMENT ON COLUMN vivienda.canthabviv IS
    'Cantidad de habitantes en la vivienda';

COMMENT ON COLUMN vivienda.dirviv IS
    'Direccion de la vivienda';

COMMENT ON COLUMN vivienda.fotoviv IS
    'Foto de la vivienda';

CREATE UNIQUE INDEX vivienda__idx ON
    vivienda (
        estado_vivienda_codestviv
    ASC );

CREATE UNIQUE INDEX vivienda__idxv1 ON
    vivienda (
        tipo_vivienda_codtipviv
    ASC );

CREATE UNIQUE INDEX vivienda__idxv2 ON
    vivienda (
        ubigeo_codubi
    ASC );

ALTER TABLE vivienda ADD CONSTRAINT vivienda_pk PRIMARY KEY ( codviv );

ALTER TABLE alquiler
    ADD CONSTRAINT alquiler_persona_fk FOREIGN KEY ( persona_codper,
                                                     persona_passwper,
                                                     persona_codubi )
        REFERENCES persona ( codper,
                             passwper,
                             ubigeo_codubi );

ALTER TABLE alquiler
    ADD CONSTRAINT alquiler_persona_fkv2 FOREIGN KEY ( persona_codper1,
                                                       persona_passwper1,
                                                       persona_codubi1 )
        REFERENCES persona ( codper,
                             passwper,
                             ubigeo_codubi );

ALTER TABLE detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_alquiler_fk FOREIGN KEY ( alquiler_codalq )
        REFERENCES alquiler ( codalq );

ALTER TABLE detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_vivienda_fk FOREIGN KEY ( vivienda_codviv )
        REFERENCES vivienda ( codviv );

ALTER TABLE persona
    ADD CONSTRAINT persona_ubigeo_fk FOREIGN KEY ( ubigeo_codubi )
        REFERENCES ubigeo ( codubi );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_estado_vivienda_fk FOREIGN KEY ( estado_vivienda_codestviv )
        REFERENCES estado_vivienda ( codestviv );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_tipo_vivienda_fk FOREIGN KEY ( tipo_vivienda_codtipviv )
        REFERENCES tipo_vivienda ( codtipviv );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_ubigeo_fk FOREIGN KEY ( ubigeo_codubi )
        REFERENCES ubigeo ( codubi );

ALTER TABLE alquiler
    ADD CONSTRAINT alquiler_persona_fk FOREIGN KEY ( persona_codper,
                                                     persona_passwper,
                                                     persona_codubi )
        REFERENCES persona ( codper,
                             passwper,
                             ubigeo_codubi );

ALTER TABLE alquiler
    ADD CONSTRAINT alquiler_persona_fkv2 FOREIGN KEY ( persona_codper1,
                                                       persona_passwper1,
                                                       persona_codubi1 )
        REFERENCES persona ( codper,
                             passwper,
                             ubigeo_codubi );

ALTER TABLE detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_alquiler_fk FOREIGN KEY ( alquiler_codalq )
        REFERENCES alquiler ( codalq );

ALTER TABLE detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_vivienda_fk FOREIGN KEY ( vivienda_codviv )
        REFERENCES vivienda ( codviv );

ALTER TABLE persona
    ADD CONSTRAINT persona_ubigeo_fk FOREIGN KEY ( ubigeo_codubi )
        REFERENCES ubigeo ( codubi );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_estado_vivienda_fk FOREIGN KEY ( estado_vivienda_codestviv )
        REFERENCES estado_vivienda ( codestviv );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_tipo_vivienda_fk FOREIGN KEY ( tipo_vivienda_codtipviv )
        REFERENCES tipo_vivienda ( codtipviv );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_ubigeo_fk FOREIGN KEY ( ubigeo_codubi )
        REFERENCES ubigeo ( codubi );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             7
-- ALTER TABLE                             23
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
-- CREATE MATERIALIZED VIEW LOG             0
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
-- ERRORS                                   1
-- WARNINGS                                 0