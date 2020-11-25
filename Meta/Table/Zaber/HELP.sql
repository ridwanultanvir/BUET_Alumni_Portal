DJANGO_DBcoding         : 65001

 Date: 18/11/2020 22:30:39
*/


-- ----------------------------
-- Table structure for HELP
-- ----------------------------
DROP TABLE "DJANGO_DB"."HELP";
CREATE TABLE "DJANGO_DB"."HELP" (
  "POST_ID" NUMBER(5,0) NOT NULL,
  "TYPE_OF_HELP" VARCHAR2(10 BYTE) NOT NULL,
  "REASON" VARCHAR2(50 BYTE) NOT NULL,
  "CELL_NO" VARCHAR2(15 BYTE)
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
-- Records of HELP
-- ----------------------------
INSERT INTO "DJANGO_DB"."HELP" VALUES ('6', 'help 1', 'reason 1', '12345');
INSERT INTO "DJANGO_DB"."HELP" VALUES ('21', 'TOH 2', 'Reason 2', '123456');
INSERT INTO "DJANGO_DB"."HELP" VALUES ('50', 'h', 'r', '111');
INSERT INTO "DJANGO_DB"."HELP" VALUES ('52', 'sdkjc', 'zdkfnvc', 'fdsvnk');
INSERT INTO "DJANGO_DB"."HELP" VALUES ('62', 'helpme', 'noreason', '1234');

-- ----------------------------
-- Primary Key structure for table HELP
-- ----------------------------
ALTER TABLE "DJANGO_DB"."HELP" ADD CONSTRAINT "HELP_PK" PRIMARY KEY ("POST_ID");

-- ----------------------------
-- Checks structure for table HELP
-- ----------------------------
ALTER TABLE "DJANGO_DB"."HELP" ADD CONSTRAINT "SYS_C0016070" CHECK ("POST_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DJANGO_DB"."HELP" ADD CONSTRAINT "SYS_C0016071" CHECK ("TYPE_OF_HELP" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DJANGO_DB"."HELP" ADD CONSTRAINT "SYS_C0016072" CHECK ("REASON" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
