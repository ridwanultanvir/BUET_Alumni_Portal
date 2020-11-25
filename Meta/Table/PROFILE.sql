/*
 Navicat Premium Data Transfer

 Source Server         : Django
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Schema         : DJANGO_DB

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 14/11/2020 01:11:36
*/


-- ----------------------------
-- Table structure for PROFILE
-- ----------------------------
DROP TABLE "DJANGO_DB"."PROFILE";
CREATE TABLE "DJANGO_DB"."PROFILE" (
  "STD_ID" NUMBER(7,0) NOT NULL,
  "HOUSE_NO" VARCHAR2(10 BYTE),
  "ROAD_NO" VARCHAR2(10 BYTE),
  "ZIP_CODE" VARCHAR2(10 BYTE),
  "CITY" VARCHAR2(30 BYTE),
  "COUNTRY" VARCHAR2(30 BYTE),
  "HOME_TOWN" VARCHAR2(100 BYTE),
  "PHOTO" VARCHAR2(100 BYTE),
  "FACEBOOK" VARCHAR2(100 BYTE),
  "TWITTER" VARCHAR2(100 BYTE),
  "LINKEDIN" VARCHAR2(100 BYTE),
  "GOOGLE_SCHOLAR" VARCHAR2(100 BYTE),
  "RESEARCHGATE" VARCHAR2(100 BYTE),
  "ABOUT" VARCHAR2(512 BYTE)
)
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
-- Records of PROFILE
-- ----------------------------
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705004', '34', '34', '1212', 'Dhaka', 'Bangladesh', 'Chitagang', 'alam_zA9Xyhu.jpg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1605001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705008', '37', '12', '1212', 'Dhaka', 'Bangladesh', 'Madaripur', '1705008_syvQOsb.jpg', 'https://www.facebook.com/Saifur.Rahman.Jony', 'https://twitter.com/Srj_007_', 'saifur-rahman-jony/', NULL, 'Saifur_Jony', 'This Saifur Rahman Jony. I am currently undergrad at CSE Depertment of BUET. I am interested in Artificial Intelligence, Machine Learning, Networking.');
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705045', NULL, NULL, NULL, NULL, NULL, NULL, 'ifto.jpg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705014', NULL, NULL, NULL, NULL, NULL, NULL, 'naeem_yBIHR81.jpg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705056', '2', '2', '1212', 'Naogaon', 'Bangladesh', 'Naogaon', 'apurba_yssaSqr.jpg', NULL, NULL, NULL, NULL, NULL, 'Hello, I am Apurba');
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705015', NULL, NULL, NULL, 'Dhaka', 'Bangladesh', NULL, 'zaber.jpg', 'https://www.facebook.com/profile.php?id=100008044450746', NULL, 'https://www.linkedin.com/in/zaber-ibn-abdul-hakim-024010185/', NULL, 'https://www.researchgate.net/profile/Zaber_Abdul_Hakim', 'This is Zaber. I am an ML enthusiasts.');
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705002', NULL, NULL, NULL, NULL, NULL, NULL, 'fahim.jpg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705098', NULL, NULL, NULL, NULL, NULL, 'Noakhali', 'sihat.jpg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1706017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "DJANGO_DB"."PROFILE" VALUES ('1705039', NULL, NULL, NULL, 'Dhaka', 'Bangladesh', NULL, 'tahmeed.jpg', 'facebook.com/tahmeed156', NULL, NULL, NULL, NULL, NULL);
