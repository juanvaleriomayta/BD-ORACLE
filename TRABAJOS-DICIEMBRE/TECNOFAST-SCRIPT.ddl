-- Generado por Oracle SQL Developer Data Modeler 17.2.0.188.1059
--   en:        2018-12-02 22:36:27 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE cargo (
    codcar   CHAR(3 BYTE) NOT NULL,
    nomcar   VARCHAR2(100 BYTE)
)
    LOGGING;

COMMENT ON COLUMN cargo.codcar IS
    'CODIGO DE CARGO';

COMMENT ON COLUMN cargo.nomcar IS
    'NOMBRE DE CARGO';

ALTER TABLE cargo ADD CONSTRAINT cargo_pk PRIMARY KEY ( codcar );

CREATE TABLE departamento (
    coddep   CHAR(3 BYTE) NOT NULL,
    nomdep   VARCHAR2(100 BYTE),
    codubi   CHAR(3 BYTE) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN departamento.coddep IS
    'CODIGO DE DEPARTAMENTO';

COMMENT ON COLUMN departamento.nomdep IS
    'NOMBRE DE DEPARTAMENTO';

ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY KEY ( coddep );

CREATE TABLE detalle_departamento (
    coddetdep     CHAR(4 BYTE) NOT NULL,
    fecindetdep   DATE NOT NULL,
    saldetdep     NUMBER(9,2) NOT NULL,
    segper        VARCHAR2(100 BYTE),
    coddep        CHAR(3 BYTE) NOT NULL,
    codcar        CHAR(3 BYTE) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN detalle_departamento.coddetdep IS
    'CODIGO DE DETALLE DEPARTAMENTO';

COMMENT ON COLUMN detalle_departamento.fecindetdep IS
    'FECHA DE INICIO DE DETALLE DEPARTAMENTO';

COMMENT ON COLUMN detalle_departamento.saldetdep IS
    'SALARIO DEL DETALLE DEPARTAMENTO';

COMMENT ON COLUMN detalle_departamento.segper IS
    'SEGURO  DE LA PERSONA';

ALTER TABLE detalle_departamento ADD CONSTRAINT detalle_departamento_pk PRIMARY KEY ( coddetdep );

CREATE TABLE detalle_familia (
    coddetfam   CHAR(4 BYTE) NOT NULL,
    pardetfam   VARCHAR2(100 BYTE),
    codper      CHAR(4 BYTE) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN detalle_familia.coddetfam IS
    'CODIGO DE DETALLE FAMILIAR';

COMMENT ON COLUMN detalle_familia.pardetfam IS
    'PARENTESCO DETALLE FAMILIAR';

ALTER TABLE detalle_familia ADD CONSTRAINT detalle_familia_pk PRIMARY KEY ( coddetfam );

CREATE TABLE detalle_proyecto (
    coddetpro   CHAR(4 BYTE) NOT NULL,
    hordetpro   CHAR(10 BYTE) NOT NULL,
    codpro      CHAR(3 BYTE) NOT NULL,
    codper      CHAR(4 BYTE) NOT NULL,
    codres      CHAR(3 BYTE) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN detalle_proyecto.coddetpro IS
    'CODIGO DE DETALLE DEL PROYECTO';

COMMENT ON COLUMN detalle_proyecto.hordetpro IS
    'CANTIDAD DE HORAS DE TRABAJOS DEL PROYECTO';

ALTER TABLE detalle_proyecto ADD CONSTRAINT detalle_proyecto_pk PRIMARY KEY ( coddetpro );

CREATE TABLE persona (
    codper      CHAR(4 BYTE) NOT NULL,
    nomper      VARCHAR2(100 BYTE),
    apepatper   VARCHAR2(100 BYTE),
    apematper   VARCHAR2(100 BYTE),
    fecnacper   DATE,
    dniper      CHAR(8 BYTE),
    dirper      VARCHAR2(150 BYTE),
    sexper      CHAR(1 BYTE),
    codubi      CHAR(3 BYTE) NOT NULL,
    codusu      CHAR(3 BYTE) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN persona.codper IS
    'CODIGO DE PERSONA';

COMMENT ON COLUMN persona.nomper IS
    'NOMBRE ';

COMMENT ON COLUMN persona.apepatper IS
    'APELLIDO PATERNO';

COMMENT ON COLUMN persona.apematper IS
    'APELLIDO MATERNO ';

COMMENT ON COLUMN persona.fecnacper IS
    'FECHA DE NACIMIENTO';

COMMENT ON COLUMN persona.dniper IS
    'NUMERO DE DNI';

COMMENT ON COLUMN persona.dirper IS
    'DIRECCION DE LA PERSONA';

COMMENT ON COLUMN persona.sexper IS
    'SEXO ';

ALTER TABLE persona ADD CONSTRAINT persona_pk PRIMARY KEY ( codper );

CREATE TABLE proyecto (
    codpro   CHAR(3 BYTE) NOT NULL,
    nompro   VARCHAR2(150 BYTE),
    codubi   CHAR(3 BYTE) NOT NULL,
    coddep   CHAR(3 BYTE) NOT NULL
)
    LOGGING;

COMMENT ON COLUMN proyecto.codpro IS
    'CODIGO DEL PROYECTO';

COMMENT ON COLUMN proyecto.nompro IS
    'NOMBRE DEL PROYECTO';

ALTER TABLE proyecto ADD CONSTRAINT proyecto_pk PRIMARY KEY ( codpro );

CREATE TABLE responsabilidad (
    codres    CHAR(3 BYTE) NOT NULL,
    descres   VARCHAR2(100 BYTE)
)
    LOGGING;

COMMENT ON COLUMN responsabilidad.codres IS
    'CODIGO DE RESPONSABILIDAD';

COMMENT ON COLUMN responsabilidad.descres IS
    'DESCRIPCION DE RESPONSABILIDAD';

ALTER TABLE responsabilidad ADD CONSTRAINT responsabilidad_pk PRIMARY KEY ( codres );

CREATE TABLE ubigeo (
    codubi    CHAR(3 BYTE) NOT NULL,
    distubi   VARCHAR2(100 BYTE),
    provubi   VARCHAR2(100 BYTE),
    deptubi   VARCHAR2(100 BYTE)
)
    LOGGING;

COMMENT ON COLUMN ubigeo.codubi IS
    'CODIGO DE UBIGEO';

COMMENT ON COLUMN ubigeo.distubi IS
    'DISTRITO';

COMMENT ON COLUMN ubigeo.provubi IS
    'PROVINCIA';

COMMENT ON COLUMN ubigeo.deptubi IS
    'DEPARTAMENTO';

ALTER TABLE ubigeo ADD CONSTRAINT ubigeo_pk PRIMARY KEY ( codubi );

CREATE TABLE usuario (
    codusu    CHAR(3 BYTE) NOT NULL,
    usuusu    VARCHAR2(100 BYTE),
    passusu   VARCHAR2(100 BYTE)
)
    LOGGING;

COMMENT ON COLUMN usuario.codusu IS
    'CODIGO DE USUARIO';

COMMENT ON COLUMN usuario.usuusu IS
    'USUARIO';

COMMENT ON COLUMN usuario.passusu IS
    'CONTRASEÑA DEL USUARIO';

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( codusu );

ALTER TABLE departamento
    ADD CONSTRAINT departamento_ubigeo_fk FOREIGN KEY ( codubi )
        REFERENCES ubigeo ( codubi )
    NOT DEFERRABLE;

ALTER TABLE detalle_departamento
    ADD CONSTRAINT detalle_departamento_cargo_fk FOREIGN KEY ( codcar )
        REFERENCES cargo ( codcar )
    NOT DEFERRABLE;

ALTER TABLE detalle_familia
    ADD CONSTRAINT detalle_familia_persona_fk FOREIGN KEY ( codper )
        REFERENCES persona ( codper )
    NOT DEFERRABLE;

ALTER TABLE detalle_proyecto
    ADD CONSTRAINT detalle_proyecto_persona_fk FOREIGN KEY ( codper )
        REFERENCES persona ( codper )
    NOT DEFERRABLE;

ALTER TABLE detalle_proyecto
    ADD CONSTRAINT detalle_proyecto_proyecto_fk FOREIGN KEY ( codpro )
        REFERENCES proyecto ( codpro )
    NOT DEFERRABLE;

ALTER TABLE detalle_proyecto
    ADD CONSTRAINT detalle_proyecto_respo_fk FOREIGN KEY ( codres )
        REFERENCES responsabilidad ( codres )
    NOT DEFERRABLE;

ALTER TABLE persona
    ADD CONSTRAINT persona_ubigeo_fk FOREIGN KEY ( codubi )
        REFERENCES ubigeo ( codubi )
    NOT DEFERRABLE;

ALTER TABLE persona
    ADD CONSTRAINT persona_usuario_fk FOREIGN KEY ( codusu )
        REFERENCES usuario ( codusu )
    NOT DEFERRABLE;

ALTER TABLE proyecto
    ADD CONSTRAINT proyecto_departamento_fk FOREIGN KEY ( coddep )
        REFERENCES departamento ( coddep )
    NOT DEFERRABLE;

ALTER TABLE proyecto
    ADD CONSTRAINT proyecto_ubigeo_fk FOREIGN KEY ( codubi )
        REFERENCES ubigeo ( codubi )
    NOT DEFERRABLE;



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             0
-- ALTER TABLE                             20
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
