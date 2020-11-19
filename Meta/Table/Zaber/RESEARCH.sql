/*
 Navicat Premium Data Transfer

 Source Server         : PROJ
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Schema         : DJANGO_DB

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 18/11/2020 22:31:46
*/


-- ----------------------------
-- Table structure for RESEARCH
-- ----------------------------
DROP TABLE "DJANGO_DB"."RESEARCH";
CREATE TABLE "DJANGO_DB"."RESEARCH" (
  "POST_ID" NUMBER(5,0) NOT NULL,
  "TOPIC_NAME" VARCHAR2(100 BYTE) NOT NULL,
  "DATE_OF_PUBLICATION" DATE,
  "JOURNAL" VARCHAR2(50 BYTE),
  "DOI" VARCHAR2(100 BYTE)
)
TABLESPACE "DJANGO_DB_TBSP_PERM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of RESEARCH
-- ----------------------------
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('10', 'research 1', TO_DATE('2020-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Elsevier', 'doi 1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('42', 'Deep', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'J1', 'D1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('43', 'Deep', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'J1', 'D1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('44', 'Deep', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'J1', 'D1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('45', 'Deep', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'J1', 'D1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('46', 'Deep', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'J1', 'D1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('47', 'Deep', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'J1', 'D1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('48', 'Deep', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'J1', 'D1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('49', 'Deep', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'J1', 'D1');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('51', 'dskjna', TO_DATE('2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'DKNE', 'DJCND');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('63', 'nothing', TO_DATE('2020-11-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'nothung', ':D');
INSERT INTO "DJANGO_DB"."RESEARCH" VALUES ('61', 'bla bla', TO_DATE('2020-11-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'jrnl', 'die');

-- ----------------------------
-- Primary Key structure for table RESEARCH
-- ----------------------------
ALTER TABLE "DJANGO_DB"."RESEARCH" ADD CONSTRAINT "RESEARCH_PK" PRIMARY KEY ("POST_ID");

-- ----------------------------
-- Checks structure for table RESEARCH
-- ----------------------------
ALTER TABLE "DJANGO_DB"."RESEARCH" ADD CONSTRAINT "SYS_C0016076" CHECK ("POST_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DJANGO_DB"."RESEARCH" ADD CONSTRAINT "SYS_C0016077" CHECK ("TOPIC_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
