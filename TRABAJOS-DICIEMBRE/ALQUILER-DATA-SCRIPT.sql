--------------------------------------------------------
-- Archivo creado  - lunes-diciembre-03-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALQUILER
--------------------------------------------------------

  CREATE TABLE "ALQUILER" 
   (	"CODALQ" CHAR(5 BYTE), 
	"FECALQ" DATE, 
	"CODPER" CHAR(5 BYTE), 
	"CODPRO" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "CODALQ" IS 'CODIGO ALQUILER';
   COMMENT ON COLUMN "FECALQ" IS 'FECHA DE ALQUILER';
--------------------------------------------------------
--  DDL for Table DETALLE_ALQUILER
--------------------------------------------------------

  CREATE TABLE "DETALLE_ALQUILER" 
   (	"CODDETALQ" CHAR(5 BYTE), 
	"FECFINDETALQ" DATE, 
	"COSDETALQ" VARCHAR2(100 BYTE), 
	"ESTDETALQ" VARCHAR2(100 BYTE), 
	"CODALQ" CHAR(5 BYTE), 
	"CODVIV" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DETALLE_ALQUILER"."CODDETALQ" IS 'CODIGO DETALLE ALQUILER';
   COMMENT ON COLUMN "DETALLE_ALQUILER"."FECFINDETALQ" IS 'FECHA DE FINALIZACION DE DETALLE ALQUILER';
   COMMENT ON COLUMN "DETALLE_ALQUILER"."COSDETALQ" IS 'COSTO DE DETALLE ALQUILER';
   COMMENT ON COLUMN "DETALLE_ALQUILER"."ESTDETALQ" IS 'ESTADO DE DETALLE ALQUILER';
--------------------------------------------------------
--  DDL for Table ESTADO_VIVIENDA
--------------------------------------------------------

  CREATE TABLE "ESTADO_VIVIENDA" 
   (	"CODESTVIV" CHAR(5 BYTE), 
	"DESCESTVIV" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ESTADO_VIVIENDA"."CODESTVIV" IS 'CODIGO DE ESTADO VIVIENDA';
   COMMENT ON COLUMN "ESTADO_VIVIENDA"."DESCESTVIV" IS 'DESCRIPCION DE ESTADO VIVIENDA';
--------------------------------------------------------
--  DDL for Table PERSONA
--------------------------------------------------------

  CREATE TABLE "PERSONA" 
   (	"CODPER" CHAR(5 BYTE), 
	"NOMPER" VARCHAR2(100 BYTE), 
	"APEPER" VARCHAR2(100 BYTE), 
	"DNIPER" CHAR(8 BYTE), 
	"DIRPER" VARCHAR2(100 BYTE), 
	"TELPER" CHAR(7 BYTE), 
	"CELPER" CHAR(9 BYTE), 
	"EMAPER" VARCHAR2(100 BYTE), 
	"ESTPER" VARCHAR2(100 BYTE), 
	"USUPER" VARCHAR2(100 BYTE), 
	"PASPER" VARCHAR2(100 BYTE), 
	"CODUBI" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "PERSONA"."CODPER" IS 'CODIGO PERSONA';
   COMMENT ON COLUMN "PERSONA"."NOMPER" IS 'NOMBRE PERSONA';
   COMMENT ON COLUMN "PERSONA"."APEPER" IS 'APELLIDO PERSONA';
   COMMENT ON COLUMN "PERSONA"."DNIPER" IS 'DNI PERSONA';
   COMMENT ON COLUMN "PERSONA"."DIRPER" IS 'DIRECCION PERSONA';
   COMMENT ON COLUMN "PERSONA"."TELPER" IS 'TELEFONO PERSONA';
   COMMENT ON COLUMN "PERSONA"."CELPER" IS 'CELULAR PERSONA';
   COMMENT ON COLUMN "PERSONA"."EMAPER" IS 'EMAIL PERSONA';
   COMMENT ON COLUMN "PERSONA"."ESTPER" IS 'ESTADO DE LA PERSONA';
   COMMENT ON COLUMN "PERSONA"."USUPER" IS 'USUARIO PERSONA';
   COMMENT ON COLUMN "PERSONA"."PASPER" IS 'CONTRASE�A PERSONA';
--------------------------------------------------------
--  DDL for Table PROPIETARIO
--------------------------------------------------------

  CREATE TABLE "PROPIETARIO" 
   (	"CODPRO" CHAR(5 BYTE), 
	"NOMPRO" VARCHAR2(100 BYTE), 
	"APEPRO" VARCHAR2(100 BYTE), 
	"DNIPRO" CHAR(8 BYTE), 
	"TELPRO" CHAR(7 BYTE), 
	"EMAPRO" VARCHAR2(100 BYTE), 
	"CODUBI" CHAR(5 BYTE), 
	"CODPER" CHAR(5 BYTE), 
	"CODVIV" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "PROPIETARIO"."CODPRO" IS 'CODIGO DEL PROPIETARIO';
   COMMENT ON COLUMN "PROPIETARIO"."NOMPRO" IS 'NOMBRE DEL PROPIETARIO';
   COMMENT ON COLUMN "PROPIETARIO"."APEPRO" IS 'APELLIDOS DEL PROPIETARIO';
   COMMENT ON COLUMN "PROPIETARIO"."DNIPRO" IS 'DNI PROPIETARIO';
   COMMENT ON COLUMN "PROPIETARIO"."TELPRO" IS 'TELEFONO PROPIETARIO';
   COMMENT ON COLUMN "PROPIETARIO"."EMAPRO" IS 'CORREO PROPIETARIO';
--------------------------------------------------------
--  DDL for Table TIPO_VIVIENDA
--------------------------------------------------------

  CREATE TABLE "TIPO_VIVIENDA" 
   (	"CODTIPVIV" CHAR(5 BYTE), 
	"DESCTIPVIV" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TIPO_VIVIENDA"."CODTIPVIV" IS 'CODIGO TIPO VIVIENDA';
   COMMENT ON COLUMN "TIPO_VIVIENDA"."DESCTIPVIV" IS 'DESCRIPCION VIVIENDA';
--------------------------------------------------------
--  DDL for Table UBIGEO
--------------------------------------------------------

  CREATE TABLE "UBIGEO" 
   (	"CODUBI" CHAR(5 BYTE), 
	"DISUBI" VARCHAR2(100 BYTE), 
	"PROUBI" VARCHAR2(100 BYTE), 
	"DEPUBI" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "UBIGEO"."CODUBI" IS 'CODIGO UBIGEO';
   COMMENT ON COLUMN "UBIGEO"."DISUBI" IS 'DISTRITO';
   COMMENT ON COLUMN "UBIGEO"."PROUBI" IS 'PROVINCIA';
   COMMENT ON COLUMN "UBIGEO"."DEPUBI" IS 'DEPARTAMENTO';
--------------------------------------------------------
--  DDL for Table VIVIENDA
--------------------------------------------------------

  CREATE TABLE "VIVIENDA" 
   (	"CODVIV" CHAR(5 BYTE), 
	"DESCVIV" VARCHAR2(100 BYTE), 
	"CANHABVIV" VARCHAR2(100 BYTE), 
	"DIRVIV" VARCHAR2(100 BYTE), 
	"FOTVIV" BLOB, 
	"CODUBI" CHAR(5 BYTE), 
	"CODESTVIV" CHAR(5 BYTE), 
	"CODTIPVIV" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("FOTVIV") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "VIVIENDA"."CODVIV" IS 'CODIGO VIVIENDA';
   COMMENT ON COLUMN "VIVIENDA"."DESCVIV" IS 'DESCRIPCION VIVIENDA';
   COMMENT ON COLUMN "VIVIENDA"."CANHABVIV" IS 'CANTIDAD DE HABITANTES VIVENDA';
   COMMENT ON COLUMN "VIVIENDA"."DIRVIV" IS 'DIRECCION DE LA VIVIENDA';
   COMMENT ON COLUMN "VIVIENDA"."FOTVIV" IS 'FOTO DE LA VIVIENDA';
REM INSERTING into ALQUILER
SET DEFINE OFF;
Insert into ALQUILER (CODALQ,FECALQ,CODPER,CODPRO) values ('CA001',to_date('12/12/15','DD/MM/RR'),'P001 ','PRO01');
Insert into ALQUILER (CODALQ,FECALQ,CODPER,CODPRO) values ('CA002',to_date('10/10/17','DD/MM/RR'),'P002 ','PRO02');
Insert into ALQUILER (CODALQ,FECALQ,CODPER,CODPRO) values ('CA003',to_date('09/04/11','DD/MM/RR'),'P003 ','PRO03');
Insert into ALQUILER (CODALQ,FECALQ,CODPER,CODPRO) values ('CA004',to_date('26/09/18','DD/MM/RR'),'P004 ','PRO04');
Insert into ALQUILER (CODALQ,FECALQ,CODPER,CODPRO) values ('CA005',to_date('29/01/12','DD/MM/RR'),'P005 ','PRO05');
REM INSERTING into DETALLE_ALQUILER
SET DEFINE OFF;
Insert into DETALLE_ALQUILER (CODDETALQ,FECFINDETALQ,COSDETALQ,ESTDETALQ,CODALQ,CODVIV) values ('DA001',to_date('12/12/18','DD/MM/RR'),'150','PAGADO','CA001','V001 ');
Insert into DETALLE_ALQUILER (CODDETALQ,FECFINDETALQ,COSDETALQ,ESTDETALQ,CODALQ,CODVIV) values ('DA002',to_date('12/02/08','DD/MM/RR'),'350','FALTA PAGAR','CA002','V002 ');
Insert into DETALLE_ALQUILER (CODDETALQ,FECFINDETALQ,COSDETALQ,ESTDETALQ,CODALQ,CODVIV) values ('DA003',to_date('12/12/19','DD/MM/RR'),'250','PAGADO','CA003','V003 ');
Insert into DETALLE_ALQUILER (CODDETALQ,FECFINDETALQ,COSDETALQ,ESTDETALQ,CODALQ,CODVIV) values ('DA004',to_date('02/12/20','DD/MM/RR'),'50','FALTA PAGAR','CA004','V004 ');
Insert into DETALLE_ALQUILER (CODDETALQ,FECFINDETALQ,COSDETALQ,ESTDETALQ,CODALQ,CODVIV) values ('DA005',to_date('10/10/19','DD/MM/RR'),'300','FALTA PAGAR','CA005','V005 ');
REM INSERTING into ESTADO_VIVIENDA
SET DEFINE OFF;
Insert into ESTADO_VIVIENDA (CODESTVIV,DESCESTVIV) values ('1    ','OCUPADO');
Insert into ESTADO_VIVIENDA (CODESTVIV,DESCESTVIV) values ('2    ','DESOCUPADO');
Insert into ESTADO_VIVIENDA (CODESTVIV,DESCESTVIV) values ('3    ','EN ARREGLOS');
REM INSERTING into PERSONA
SET DEFINE OFF;
Insert into PERSONA (CODPER,NOMPER,APEPER,DNIPER,DIRPER,TELPER,CELPER,EMAPER,ESTPER,USUPER,PASPER,CODUBI) values ('P004 ','PEDRO','ALAMO SALCHON','96523250','LOS CHOCOLATEROS DE LAS LOMA','0129999','965202509','palamo@gmail.com','A','USUPEDRO','DSFJSBDJGFJDBKFJS4654','4    ');
Insert into PERSONA (CODPER,NOMPER,APEPER,DNIPER,DIRPER,TELPER,CELPER,EMAPER,ESTPER,USUPER,PASPER,CODUBI) values ('P001 ','JUAN','GONZALES VALLE','75826932','SAN PEDRO DE LUCA','0123604','019526999','jgonzales@outlook.com','A','USUJUAN','JHWFKJWEF84VER18E98','1    ');
Insert into PERSONA (CODPER,NOMPER,APEPER,DNIPER,DIRPER,TELPER,CELPER,EMAPER,ESTPER,USUPER,PASPER,CODUBI) values ('P002 ','JOSE','PEREZ LUYO','85210236','LA MOLINA','0112350','965236520','jperez@gmail.com','A','USUJOSE','EFER515151651GER1G6E1G1','2    ');
Insert into PERSONA (CODPER,NOMPER,APEPER,DNIPER,DIRPER,TELPER,CELPER,EMAPER,ESTPER,USUPER,PASPER,CODUBI) values ('P003 ','LUIS','REJAS CAMA','96520125','LAS BANDERITAS','0123600','956320124','lrejas@hotmail.com','A','USULUIS','SDJHFJEFJE8949V494REG','3    ');
Insert into PERSONA (CODPER,NOMPER,APEPER,DNIPER,DIRPER,TELPER,CELPER,EMAPER,ESTPER,USUPER,PASPER,CODUBI) values ('P005 ','ISSAC','CACHAY GUILLER','01268250','LOS PELONES DE LOS MOLDES','0126963','965230150','icachay@hotmail.com','A','USUISSAC','DWFFJIWOIFJW5894984984','5    ');
REM INSERTING into PROPIETARIO
SET DEFINE OFF;
Insert into PROPIETARIO (CODPRO,NOMPRO,APEPRO,DNIPRO,TELPRO,EMAPRO,CODUBI,CODPER,CODVIV) values ('PRO01','JULIAN','MERO NU�EZ','85201209','0123602','jmero@outlook.com','1    ','P001 ','V001 ');
Insert into PROPIETARIO (CODPRO,NOMPRO,APEPRO,DNIPRO,TELPRO,EMAPRO,CODUBI,CODPER,CODVIV) values ('PRO02','JHON','SALCHON CUSCANO','52039699','0125698','jsalchon@hotmail.com','2    ','P002 ','V002 ');
Insert into PROPIETARIO (CODPRO,NOMPRO,APEPRO,DNIPRO,TELPRO,EMAPRO,CODUBI,CODPER,CODVIV) values ('PRO03','MARIA','PELE QUISPE','20136502','0129209','mpele@gmail.com','3    ','P003 ','V003 ');
Insert into PROPIETARIO (CODPRO,NOMPRO,APEPRO,DNIPRO,TELPRO,EMAPRO,CODUBI,CODPER,CODVIV) values ('PRO04','MARTA','BORJAS MARTINEZ','52136202','2365201','mborjas@gmail.com','4    ','P004 ','V004 ');
Insert into PROPIETARIO (CODPRO,NOMPRO,APEPRO,DNIPRO,TELPRO,EMAPRO,CODUBI,CODPER,CODVIV) values ('PRO05','SAUL','MAYTA SANCHEZ','85212203','2018000','smayta@hotmail.com','5    ','P005 ','V005 ');
REM INSERTING into TIPO_VIVIENDA
SET DEFINE OFF;
Insert into TIPO_VIVIENDA (CODTIPVIV,DESCTIPVIV) values ('TV001','CABAÑA');
Insert into TIPO_VIVIENDA (CODTIPVIV,DESCTIPVIV) values ('TV002','CASA DEPLAYA');
Insert into TIPO_VIVIENDA (CODTIPVIV,DESCTIPVIV) values ('TV003','CASA HOGAR');
Insert into TIPO_VIVIENDA (CODTIPVIV,DESCTIPVIV) values ('TV004','HOTEL');
Insert into TIPO_VIVIENDA (CODTIPVIV,DESCTIPVIV) values ('TV005','CONDOMINIO');
REM INSERTING into UBIGEO
SET DEFINE OFF;
Insert into UBIGEO (CODUBI,DISUBI,PROUBI,DEPUBI) values ('1    ','SAN VICENTE','CAÑETE','LIMA');
Insert into UBIGEO (CODUBI,DISUBI,PROUBI,DEPUBI) values ('2    ','SAN LUIS','CAÑETE','LIMA');
Insert into UBIGEO (CODUBI,DISUBI,PROUBI,DEPUBI) values ('3    ','QUILMANA','CAÑETE','LIMA');
Insert into UBIGEO (CODUBI,DISUBI,PROUBI,DEPUBI) values ('4    ','ATE','LIMA','LIMA');
Insert into UBIGEO (CODUBI,DISUBI,PROUBI,DEPUBI) values ('5    ','NUEVO IMPERIAL','CAÑETE','LIMA');
REM INSERTING into VIVIENDA
SET DEFINE OFF;
Insert into VIVIENDA (CODVIV,DESCVIV,CANHABVIV,DIRVIV,CODUBI,CODESTVIV,CODTIPVIV) values ('V001 ','CASA DE MADERA','10','LAS PALMERAS','1    ','1    ','TV001');
Insert into VIVIENDA (CODVIV,DESCVIV,CANHABVIV,DIRVIV,CODUBI,CODESTVIV,CODTIPVIV) values ('V002 ','CASA DE 3 PISO CON TERRAZAS','25','LOS OLIVOS','2    ','2    ','TV002');
Insert into VIVIENDA (CODVIV,DESCVIV,CANHABVIV,DIRVIV,CODUBI,CODESTVIV,CODTIPVIV) values ('V003 ','CASA DE PLAYA PARA PLAYEROS','29','LOMAS TURBAS','3    ','3    ','TV003');
Insert into VIVIENDA (CODVIV,DESCVIV,CANHABVIV,DIRVIV,CODUBI,CODESTVIV,CODTIPVIV) values ('V004 ','CASA DE CONDOMINIO','33','SAN MERITO','3    ','3    ','TV004');
Insert into VIVIENDA (CODVIV,DESCVIV,CANHABVIV,DIRVIV,CODUBI,CODESTVIV,CODTIPVIV) values ('V005 ','CASA PARA FAMILIARES A LARGO TIEMPO','5','LOS CANARIOS DE SILVESTRE','3    ','3    ','TV005');
--------------------------------------------------------
--  DDL for Index DETALLE_ALQUILER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DETALLE_ALQUILER_PK" ON "DETALLE_ALQUILER" ("CODDETALQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PERSONA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERSONA_PK" ON "PERSONA" ("CODPER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ESTADO_VIVIENDA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ESTADO_VIVIENDA_PK" ON "ESTADO_VIVIENDA" ("CODESTVIV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index VIVIENDA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VIVIENDA_PK" ON "VIVIENDA" ("CODVIV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ALQUILER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALQUILER_PK" ON "ALQUILER" ("CODALQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PROPIETARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROPIETARIO_PK" ON "PROPIETARIO" ("CODPRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UBIGEO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UBIGEO_PK" ON "UBIGEO" ("CODUBI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TIPO_VIVIENDA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TIPO_VIVIENDA_PK" ON "TIPO_VIVIENDA" ("CODTIPVIV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TIPO_VIVIENDA
--------------------------------------------------------

  ALTER TABLE "TIPO_VIVIENDA" ADD CONSTRAINT "TIPO_VIVIENDA_PK" PRIMARY KEY ("CODTIPVIV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TIPO_VIVIENDA" MODIFY ("CODTIPVIV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ESTADO_VIVIENDA
--------------------------------------------------------

  ALTER TABLE "ESTADO_VIVIENDA" ADD CONSTRAINT "ESTADO_VIVIENDA_PK" PRIMARY KEY ("CODESTVIV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ESTADO_VIVIENDA" MODIFY ("CODESTVIV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UBIGEO
--------------------------------------------------------

  ALTER TABLE "UBIGEO" ADD CONSTRAINT "UBIGEO_PK" PRIMARY KEY ("CODUBI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UBIGEO" MODIFY ("CODUBI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETALLE_ALQUILER
--------------------------------------------------------

  ALTER TABLE "DETALLE_ALQUILER" ADD CONSTRAINT "DETALLE_ALQUILER_PK" PRIMARY KEY ("CODDETALQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DETALLE_ALQUILER" MODIFY ("CODVIV" NOT NULL ENABLE);
  ALTER TABLE "DETALLE_ALQUILER" MODIFY ("CODALQ" NOT NULL ENABLE);
  ALTER TABLE "DETALLE_ALQUILER" MODIFY ("CODDETALQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROPIETARIO
--------------------------------------------------------

  ALTER TABLE "PROPIETARIO" ADD CONSTRAINT "PROPIETARIO_PK" PRIMARY KEY ("CODPRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROPIETARIO" MODIFY ("CODVIV" NOT NULL ENABLE);
  ALTER TABLE "PROPIETARIO" MODIFY ("CODPER" NOT NULL ENABLE);
  ALTER TABLE "PROPIETARIO" MODIFY ("CODUBI" NOT NULL ENABLE);
  ALTER TABLE "PROPIETARIO" MODIFY ("CODPRO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALQUILER
--------------------------------------------------------

  ALTER TABLE "ALQUILER" ADD CONSTRAINT "ALQUILER_PK" PRIMARY KEY ("CODALQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ALQUILER" MODIFY ("CODPRO" NOT NULL ENABLE);
  ALTER TABLE "ALQUILER" MODIFY ("CODPER" NOT NULL ENABLE);
  ALTER TABLE "ALQUILER" MODIFY ("CODALQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSONA
--------------------------------------------------------

  ALTER TABLE "PERSONA" MODIFY ("CODUBI" NOT NULL ENABLE);
  ALTER TABLE "PERSONA" MODIFY ("PASPER" NOT NULL ENABLE);
  ALTER TABLE "PERSONA" MODIFY ("CODPER" NOT NULL ENABLE);
  ALTER TABLE "PERSONA" ADD CONSTRAINT "PERSONA_PK" PRIMARY KEY ("CODPER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIVIENDA
--------------------------------------------------------

  ALTER TABLE "VIVIENDA" ADD CONSTRAINT "VIVIENDA_PK" PRIMARY KEY ("CODVIV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "VIVIENDA" MODIFY ("CODTIPVIV" NOT NULL ENABLE);
  ALTER TABLE "VIVIENDA" MODIFY ("CODESTVIV" NOT NULL ENABLE);
  ALTER TABLE "VIVIENDA" MODIFY ("CODUBI" NOT NULL ENABLE);
  ALTER TABLE "VIVIENDA" MODIFY ("CODVIV" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ALQUILER
--------------------------------------------------------

  ALTER TABLE "ALQUILER" ADD CONSTRAINT "ALQUILER_PERSONA_FK" FOREIGN KEY ("CODPER")
	  REFERENCES "PERSONA" ("CODPER") ENABLE;
  ALTER TABLE "ALQUILER" ADD CONSTRAINT "ALQUILER_PROPIETARIO_FK" FOREIGN KEY ("CODPRO")
	  REFERENCES "PROPIETARIO" ("CODPRO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETALLE_ALQUILER
--------------------------------------------------------

  ALTER TABLE "DETALLE_ALQUILER" ADD CONSTRAINT "DETALLE_ALQUILER_ALQUILER_FK" FOREIGN KEY ("CODALQ")
	  REFERENCES "ALQUILER" ("CODALQ") ENABLE;
  ALTER TABLE "DETALLE_ALQUILER" ADD CONSTRAINT "DETALLE_ALQUILER_VIVIENDA_FK" FOREIGN KEY ("CODVIV")
	  REFERENCES "VIVIENDA" ("CODVIV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERSONA
--------------------------------------------------------

  ALTER TABLE "PERSONA" ADD CONSTRAINT "PERSONA_UBIGEO_FK" FOREIGN KEY ("CODUBI")
	  REFERENCES "UBIGEO" ("CODUBI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROPIETARIO
--------------------------------------------------------

  ALTER TABLE "PROPIETARIO" ADD CONSTRAINT "PROPIETARIO_PERSONA_FK" FOREIGN KEY ("CODPER")
	  REFERENCES "PERSONA" ("CODPER") ENABLE;
  ALTER TABLE "PROPIETARIO" ADD CONSTRAINT "PROPIETARIO_UBIGEO_FK" FOREIGN KEY ("CODUBI")
	  REFERENCES "UBIGEO" ("CODUBI") ENABLE;
  ALTER TABLE "PROPIETARIO" ADD CONSTRAINT "PROPIETARIO_VIVIENDA_FK" FOREIGN KEY ("CODVIV")
	  REFERENCES "VIVIENDA" ("CODVIV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIVIENDA
--------------------------------------------------------

  ALTER TABLE "VIVIENDA" ADD CONSTRAINT "VIVIENDA_ESTADO_VIVIENDA_FK" FOREIGN KEY ("CODESTVIV")
	  REFERENCES "ESTADO_VIVIENDA" ("CODESTVIV") ENABLE;
  ALTER TABLE "VIVIENDA" ADD CONSTRAINT "VIVIENDA_TIPO_VIVIENDA_FK" FOREIGN KEY ("CODTIPVIV")
	  REFERENCES "TIPO_VIVIENDA" ("CODTIPVIV") ENABLE;
  ALTER TABLE "VIVIENDA" ADD CONSTRAINT "VIVIENDA_UBIGEO_FK" FOREIGN KEY ("CODUBI")
	  REFERENCES "UBIGEO" ("CODUBI") ENABLE;
