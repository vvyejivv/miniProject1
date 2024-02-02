--------------------------------------------------------
--  ������ ������ - �ݿ���-2��-02-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table KYJ_MENU
--------------------------------------------------------

  CREATE TABLE "ADMIN"."KYJ_MENU" 
   (	"SCM_SHOPNAME" VARCHAR2(100 BYTE), 
	"SCM_TYPE" VARCHAR2(100 BYTE), 
	"SCM_MENU" VARCHAR2(100 BYTE), 
	"SCM_PRICE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KYJ_ORDER
--------------------------------------------------------

  CREATE TABLE "ADMIN"."KYJ_ORDER" 
   (	"USER_ID" VARCHAR2(100 BYTE), 
	"SCM_TYPE" VARCHAR2(100 BYTE), 
	"CODE" NUMBER(10,0), 
	"SCM_SHOPNAME" VARCHAR2(100 BYTE), 
	"ORDER_DATE" VARCHAR2(100 BYTE), 
	"TOTAL_PRICE" VARCHAR2(20 BYTE), 
	"ORDER_DELIVERY" VARCHAR2(20 BYTE), 
	"SCM_MENU" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KYJ_SCM
--------------------------------------------------------

  CREATE TABLE "ADMIN"."KYJ_SCM" 
   (	"USER_ID" VARCHAR2(100 BYTE), 
	"SCM_SHOPNAME" VARCHAR2(100 BYTE), 
	"SCM_NUMBER" VARCHAR2(100 BYTE), 
	"USER_NAME" VARCHAR2(100 BYTE), 
	"USER_ADDRESS" VARCHAR2(200 BYTE), 
	"SCM_TYPE" VARCHAR2(100 BYTE), 
	"CODE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KYJ_USER
--------------------------------------------------------

  CREATE TABLE "ADMIN"."KYJ_USER" 
   (	"USER_ID" VARCHAR2(100 BYTE), 
	"USER_PW" VARCHAR2(100 BYTE), 
	"USER_NAME" VARCHAR2(100 BYTE), 
	"USER_NIKNAME" VARCHAR2(100 BYTE), 
	"USER_PHONE" VARCHAR2(100 BYTE), 
	"USER_EMAIL" VARCHAR2(100 BYTE), 
	"USER_GENDER" VARCHAR2(100 BYTE), 
	"USER_ADDRESS" VARCHAR2(200 BYTE), 
	"CODE" VARCHAR2(20 BYTE), 
	"CSM_TYPE" VARCHAR2(100 BYTE), 
	"SCM_TYPE" VARCHAR2(100 BYTE), 
	"CNT" NUMBER DEFAULT 0, 
	"USER_DATE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ADMIN"."KYJ_USER"."USER_ID" IS '���̵�';
   COMMENT ON COLUMN "ADMIN"."KYJ_USER"."USER_PW" IS '��й�ȣ';
REM INSERTING into ADMIN.KYJ_MENU
SET DEFINE OFF;
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���̺������Ľ�Ÿ','�Ͻ�','����ũ���Ľ�Ÿ','15000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���̺������Ľ�Ÿ','�Ͻ�','�����Ը�Ÿ����','13000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����̵�����ī��','ī��','�����ѾƸ޸�ī��','4000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����̵�����ī��','ī��','���̱ۼ�Ʈ','3500');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����̵�����ī��','ī��','���ݸ�����ũ','7000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('������������','�ѽ�','������','8000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('������������','�ѽ�','Ƣ��','7000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('������������','�ѽ�','����','5000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ູ������','���','�����Ը�Ÿ����','12000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ູ������','���','���۷δ�����','15000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ູ������','���','ġ��ũ����Ʈ����','18000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����������','�Ͻ�','�����Ѽ�Ʈ','20000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����������','�Ͻ�','�ʹ�����','15000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����������','�Ͻ�','�����Ʈ','18000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ູ���ܹ���','���','�ܹ��ż�Ʈ','12000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ູ���ܹ���','���','ġ�����','10000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ູ���ܹ���','���','������ũ����','15000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ҹ��Ѷ�����','�ѽ�','�����̼�Ʈ','8000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ҹ��Ѷ�����','�ѽ�','����Ƣ��','6000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�ҹ��Ѷ�����','�ѽ�','��쵿','7000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���ö��Ǹ�','�ѽ�','���ö���ƮA','10000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���ö��Ǹ�','�ѽ�','���ö���ƮB','12000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���ö��Ǹ�','�ѽ�','��似Ʈ','8000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���䷹�κ���','ī��','�Ƹ޸�ī��','3500');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���䷹�κ���','ī��','ī���','4500');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���䷹�κ���','ī��','���Ͻ�����','6000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���ο����Ĵ�','�ѽ�','����Ʈ','18000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���ο����Ĵ�','�ѽ�','��ȸ�����','15000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���ο����Ĵ�','�ѽ�','����������','20000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����޻�ī��','ī��','���̽����ݸ�','4000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����޻�ī��','ī��','ġ������ũ','7000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����޻�ī��','ī��','����Ǫġ��','5500');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����޴µ��','���','�������','15000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����޴µ��','���','ġ��','18000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����޴µ��','���','���������','12000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('���̺������Ľ�Ÿ','�Ͻ�','�Ұ���Ľ�Ÿ','12000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����ʹ�','�Ͻ�','���ü�Ʈ','25000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����ʹ�','�Ͻ�','��ġ����','15000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����ʹ�','�Ͻ�','�����','18000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����ī��','ī��','�Ƹ޸�ī��','3500');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����ī��','ī��','ī���','4500');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('����ī��','ī��','ũ�οͻ�','6000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����ǰ�����','�ѽ�','������','12000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����ǰ�����','�ѽ�','���뱹','10000');
Insert into ADMIN.KYJ_MENU (SCM_SHOPNAME,SCM_TYPE,SCM_MENU,SCM_PRICE) values ('�����ǰ�����','�ѽ�','�����屹','15000');
REM INSERTING into ADMIN.KYJ_ORDER
SET DEFINE OFF;
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('moonl','�Ͻ�',2,'�����ʹ�','2024-02-03','18000',null,'�����ʹ�');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('blues','���',2,'����޴µ��','2024-02-04','15000',null,'�����Ʈ');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('rosec','ī��',2,'���Ŀ��','2024-02-05','5000',null,'�Ƹ޸�ī��');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('sunfl','�ѽ�',2,'����������','2024-02-01','10000',null,'�����');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('sunfl','�ѽ�',2,'����������','2024-02-01','12000',null,'������');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('sunfl','�ѽ�',2,'����������','2024-02-01','8000',null,'���');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('breez','���',2,'�ູ������','2024-02-02','25000',null,'���۷δ�����');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('moonl','�Ͻ�',2,'�����ʹ�','2024-02-03','18000',null,'�����ʹ�');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('blues','���',2,'����޴µ��','2024-02-04','15000',null,'�����Ʈ');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('rosec','ī��',2,'���Ŀ��','2024-02-05','5000',null,'�Ƹ޸�ī��');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('starl','�Ͻ�',2,'��������','2024-02-06','22000',null,'���');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('windy','ī��',2,'�����޻�ī��','2024-02-07','12000',null,'ī���');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('bright','���',2,'���̺������Ľ�Ÿ','2024-02-08','18000',null,'ũ���Ľ�Ÿ');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('clear','�Ͻ�',2,'���ο����Ĵ�','2024-02-09','30000',null,'�Ͻ�����');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('cosmic','ī��',2,'�����̵�����ī��','2024-02-10','8000',null,'ī��Ḷ���ƶ�');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('sunfl','�ѽ�',2,'���ö��Ǹ�','2024-02-11','10000',null,'�������̱��');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('breez','���',2,'�ູ������','2024-02-12','27000',null,'ġ��ũ����Ʈ����');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('moonl','�Ͻ�',2,'�����ʹ�','2024-02-13','20000',null,'����Ƣ���');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('blues','���',2,'����޴µ��','2024-02-14','17000',null,'ġ��');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('rosec','ī��',2,'���Ŀ��','2024-02-15','5500',null,'īǪġ��');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('starl','�Ͻ�',2,'��������','2024-02-16','24000',null,'�쵿');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('windy','ī��',2,'�����޻�ī��','2024-02-17','13000',null,'���ν����');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('bright','���',2,'���̺������Ľ�Ÿ','2024-02-18','19000',null,'����ũ���Ľ�Ÿ');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('clear','�Ͻ�',2,'���ο����Ĵ�','2024-02-19','32000',null,'�ʹ�����');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('cosmic','ī��',2,'�����̵�����ī��','2024-02-20','8500',null,'ī���ī');
Insert into ADMIN.KYJ_ORDER (USER_ID,SCM_TYPE,CODE,SCM_SHOPNAME,ORDER_DATE,TOTAL_PRICE,ORDER_DELIVERY,SCM_MENU) values ('sunfl','�ѽ�',2,'���ö��Ǹ�','2024-02-21','12000',null,'ġ����񵵽ö�');
REM INSERTING into ADMIN.KYJ_SCM
SET DEFINE OFF;
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('sss789','��ŭ�����������Բ�','7890123456','�����','������ ���� ��ȣ�� 23-23','�߽�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('emw789','����������','6789012345','�̼���','����� ���ı� �ø��ȷ� 6-6','�Ͻ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('rwn123','�ູ���ܹ���','7890123456','��ä��','����� ������ õȣ�� 7-7','���','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('lly456','�ҹ��Ѷ�����','8901234567','������','����� ������ ���׷� 8-8','�ѽ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('dvd789','���ö��Ǹ�','9012345678','���ϸ�','����� �߶��� ���� 9-9','�ѽ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('sm102','���䷹�κ���','0123456789','���μ�','����� ������ ȭ��� 10-10','ī��','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('joh123','���ο����Ĵ�','1234567890','��ö��','����� ������ ���μ��� 1-1','�ѽ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('jan456','�����޻�ī��','2345678901','���ϸ�','����� ���ϱ� ���̷� 2-2','ī��','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('bob123','����޴µ��','3456789012','�輭��','����� ���α� ��ȭ�� 3-3','���','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('sus789','���̺������Ľ�Ÿ','4567890123','���ϴ�','���ʱ� �Ķ���̽��� 4-4','�Ͻ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('ale567','�����̵�����ī��','5678901234','������','����� ������ ������ 5-5','ī��','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('srl234','������������','5678901234','����','�λ�� ���� �߾Ӵ�� 11-11','�ѽ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('wkd789','�ູ������','6789012345','����','�뱸�� �߱� ��ȭ����� 12-12','���','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('hts456','�����ʹ�','7890123456','���½�','��õ�� ������ �ֻ��� 13-13','�Ͻ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('pks789','����ī��','8901234567','�ڰ��','������ ���� �Ҽ��� 14-14','ī��','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('sbg123','�����ǰ�����','9012345678','������','���ֽ� �߶��� ����� 15-15','�ѽ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('mrn102','���Ŀ��','0123456789','�ζ�','���� ���� �ø��ȷ� 16-16','ī��','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('skt456','�ູ��ȸ��','1234567890','������','�뱸�� ���� ��ȭ��� 17-17','�Ͻ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('jsm789','��������','2345678901','������','û�ֽ� ���μ�ȯ�� 18-18','���','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('mju123','���ִ¼��κ�','3456789012','���ָ�','������ ������� 19-19','�ѽ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('jyp567','������ī��','4567890123','������','������ �߱� �����ŷ� 20-20','ī��','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('hjw456','�ູ���߱���','6789012345','�����','�λ�� �ؿ�뱸 �ؿ��� 22-22','�߽�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('lsh123','���ִ¶��','8901234567','�̼���','��õ�� ������ �۵��� 24-24','�Ͻ�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('kdg102','������߱���','0123456789','�赿��','���� ���� ��ȣ�� 25-25','�߽�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('jsy890','��ſ�¥���','5678901234','�����','���ֽ� ���� �縲�� 21-21','�߽�','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('asdsa132','�߿���','9874563210','�����','��õ�� ������','���','1');
Insert into ADMIN.KYJ_SCM (USER_ID,SCM_SHOPNAME,SCM_NUMBER,USER_NAME,USER_ADDRESS,SCM_TYPE,CODE) values ('test123','�۸۾�','6547891234','������','��õ�� ������','ī��','1');
REM INSERTING into ADMIN.KYJ_USER
SET DEFINE OFF;
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('doyeon3','pqr123','�赵��','������','010-3456-7890','kim@example.com','����','����� ������ ��ȭ�� 4-4','2','�Ͻ�',null,0,'19901020');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('admin','1234','������','������','010-1190-0112','kim_yeji97@naver.com','����','��õ�� ������','0',null,null,0,null);
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('serene5','xyz789','�ڼ���',null,'010-2345-6789','park@example.com','����','����� ���α� ��ȭ�� 3-3','1',null,'ī��',0,'19871203');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('jihoon4','mno456','������','���ƾ�','010-4567-8901','lee@example.com','����','����� ������ ������ 5-5','2','�ѽ�',null,0,'19880508');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('eunseo5','uvw789','������',null,'010-5678-9012','cho@example.com','����','����� ���ı� �ſ��� 6-6','1',null,'ī��',0,null);
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('minjae6','xyz123','�̹���',null,'010-6789-0123','lee@example.com','����','����� ������ õȣ�� 7-7','1',null,'�߽�',0,null);
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('yunji7','abc789','������','������','010-7890-1234','seo@example.com','����','����� ������ ȭ� 8-8','2','ī��','0',null,'19970321');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('jsy890','abc12','�����',null,'010-1111-2222','jsy@example.com','����','���ֽ� ���� �縲�� 21-21','1',null,'�߽�',0,'19900101');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('hjw456','def34','�����',null,'010-3333-4444','hjw@example.com','����','�λ�� �ؿ�뱸 �ؿ��� 22-22','1',null,'�߽�',0,'19900202');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('sss789','ghi56','�����',null,'010-5555-6666','sss@example.com','����','������ ���� ��ȣ�� 23-23','1',null,'�߽�',0,'19900303');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('lsh123','jkl78','�̼���',null,'010-7777-8888','lsh@example.com','����','��õ�� ������ �۵��� 24-24','1',null,'�Ͻ�',0,'19900404');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('kdg102','mno90','�赿��',null,'010-9999-0000','kdg@example.com','����','���� ���� ��ȣ�� 25-25','1',null,'�߽�',0,'19900505');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('emw789','abc12','�̼���',null,'010-9876-5432','emw789@example.com','����','����� ���ı� �ø��ȷ� 6-6','1',null,'�Ͻ�',0,'19851203');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('rwn123','def34','��ä��',null,'010-8765-4321','rwn123@example.com','����','����� ������ õȣ�� 7-7','1',null,'���',0,'19900415');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('lly456','ghi56','������',null,'010-7654-3210','lly456@example.com','����','����� ������ ���׷� 8-8','1',null,'�ѽ�',0,'19871230');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('dvd789','jkl78','���ϸ�',null,'010-6543-2109','dvd789@example.com','����','����� �߶��� ���� 9-9','1',null,'�ѽ�',0,'19920118');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('sm102','mno90','���μ�',null,'010-5432-1098','sm102@example.com','����','����� ������ ȭ��� 10-10','1',null,'ī��',0,'19891225');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('joh123','pqr12','��ö��',null,'010-4321-0987','joh123@example.com','����','����� ������ ���μ��� 1-1','1',null,'�ѽ�',0,'19930520');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('jan456','stu34','���ϸ�',null,'010-3210-9876','jan456@example.com','����','����� ���ϱ� ���̷� 2-2','1',null,'ī��',0,'19980214');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('bob123','vwx56','�輭��',null,'010-2109-8765','bob123@example.com','����','����� ���α� ��ȭ�� 3-3','1',null,'���',0,'19911101');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('sus789','yz01','���ϴ�',null,'010-1098-7654','sus789@example.com','����','���ʱ� �Ķ���̽��� 4-4','1',null,'�Ͻ�',0,'19940807');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('ale567','abc23','������',null,'010-8765-4321','ale567@example.com','����','����� ������ ������ 5-5','1',null,'ī��',0,'19971122');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('srl234','bcd45','����',null,'010-7654-3210','srl234@example.com','����','�λ�� ���� �߾Ӵ�� 11-11','1',null,'�ѽ�',0,'19900615');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('wkd789','efg67','����',null,'010-6543-2109','wkd789@example.com','����','�뱸�� �߱� ��ȭ����� 12-12','1',null,'���',0,'19870228');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('hts456','hij89','���½�',null,'010-5432-1098','hts456@example.com','����','��õ�� ������ �ֻ��� 13-13','1',null,'�Ͻ�',0,'19851212');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('pks789','klm01','�ڰ��',null,'010-4321-0987','pks789@example.com','����','������ ���� �Ҽ��� 14-14','1',null,'ī��',0,'19900304');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('sbg123','nop23','������',null,'010-3210-9876','sbg123@example.com','����','���ֽ� �߶��� ����� 15-15','1',null,'�ѽ�',0,'19920917');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('mrn102','qrs45','�ζ�',null,'010-2109-8765','mrn102@example.com','����','���� ���� �ø��ȷ� 16-16','1',null,'ī��',0,'19961208');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('skt456','tuv67','������',null,'010-1098-7654','skt456@example.com','����','�뱸�� ���� ��ȭ��� 17-17','1',null,'�Ͻ�',0,'19950321');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('jsm789','wxy89','������',null,'010-0987-6543','jsm789@example.com','����','û�ֽ� ���μ�ȯ�� 18-18','1',null,'���',0,'19930405');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('mju123','zab01','���ָ�',null,'010-9876-5432','mju123@example.com','����','������ ������� 19-19','1',null,'�ѽ�',0,'19901218');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('jyp567','bcd12','������',null,'010-8765-4321','jyp567@example.com','����','������ �߱� �����ŷ� 20-20','1',null,'ī��',0,'19881002');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('sunfl','abc01','�迵��','����','010-1589-4723','sunflower@example.com','����','���� ������ ���ﵿ 123-45','2','�ѽ�',null,0,'19900101');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('breez','def02','��ö��','�ٶ�','010-2473-9851','breezechel@example.com','����','���� ���ϱ� �̾Ƶ� 678-90','2','�߽�',null,0,'19851215');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('moonl','ghi03','�ڹ̿�','�޺�','010-3698-5142','moonlightpark@example.com','����','�λ� ������ �λ���з� 1-1','2','�Ͻ�',null,0,'19901010');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('blues','jkl04','������','û��','010-4815-9263','bluesky@example.com','����','�뱸 ������ ��굿 987-65','2','���',null,0,'19891230');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('rosec','mno05','������','���','010-5937-2485','rosecharm@example.com','����','��õ ������ ������ 2-2','2','ī��',null,0,'19930322');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('starl','pqr06','�����','����','010-6058-3624','starlight@example.com','����','���� ���� �絿�� 3-3','2','�Ͻ�',null,0,'19901111');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('windy','stu07','�����','�ٶ�','010-7169-4735','windykim@example.com','����','���� �߱� ��ȭ�� 4-4','2','ī��',null,0,'19950405');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('bright','vwx08','������','��','010-8270-5846','brightpark@example.com','����','��� ���� ������ 5-5','2','���',null,0,'19920918');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('clear','yz09','�����','����','010-9381-6957','clearkim@example.com','����','���� �ȴޱ� �Ǳ��� 6-6','2','�Ͻ�',null,0,'19971027');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('cosmic','abc10','���ؿ�','����','010-0492-8063','cosmiclee@example.com','����','û�� ��籸 ���̱� 7-7','2','ī��',null,0,'19920809');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('mellow','def11','��̿�','��ο�','010-1122-3344','mellowrose@example.com','����','â�� ��â�� �߾Ӵ�� 8-8','2','���',null,0,'19940404');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('ocean','ghi12','��ٴ�','����','010-2233-4455','oceanwave@example.com','����','���� �ϻ걸 ���ַ� 9-9','2','�Ͻ�',null,0,'19910915');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('sunset','jkl13','���ؿ�','����','010-3344-5566','sunsetlee@example.com','����','���� �߾ӷ� 10-10','2','�ѽ�',null,0,'19941226');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('velvet','mno14','�ڽð�','����','010-4455-6677','velvetpark@example.com','����','���� ������ 11-11','2','ī��',null,0,'19900208');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('serene','pqr15','�ſ���','����','010-5566-7788','sereneshin@example.com','����','���� �������� �߾ӷ� 12-12','2','ī��',null,0,'19931119');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('twilight','stu16','���¾�','Ʈ���϶���','010-6677-8899','twilightlee@example.com','����','���� ��ȱ� ������ 13-13','2','�Ͻ�',null,0,'19920730');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('whisper','vwx17','�����','������','010-7788-9900','whisperkim@example.com','����','���� �ﱹ�� 14-14','2','�ѽ�',null,0,'19950910');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('lullaby','yz18','���¸�','�������','010-8899-0011','lullabylee@example.com','����','���� ���ϱ� ���Ϸ� 15-15','2','�Ͻ�',null,0,'19920321');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('azure','abc19','���ϳ�','���','010-9900-1122','azurecho@example.com','����','���� �߾ӽ���� 16-16','2','ī��',null,0,'19900702');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('crystal','def20','�����','ũ����Ż','010-0011-2233','crystal@example.com','����','��ȭ�� ��ȭ�� ��ȭ�� 17-17','2','���',null,0,'19930713');
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('zxc1234','1234','���׽�Ʈ','�׽�Ʈ','010-5789-9542','test@test.com','����','�׽�Ʈ�ּ�','2','�Ͻ�','null',0,null);
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('asdsa132','1234','�����','null','010-5959-9595','didhddl@didhd.com','����','��õ�� ������','1','null','���',0,null);
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('test123','1234','������','null','010-8765-3348','ajdajddl@ajdajd.com','����','��õ�� ������','1','null','ī��',0,null);
Insert into ADMIN.KYJ_USER (USER_ID,USER_PW,USER_NAME,USER_NIKNAME,USER_PHONE,USER_EMAIL,USER_GENDER,USER_ADDRESS,CODE,CSM_TYPE,SCM_TYPE,CNT,USER_DATE) values ('test98787975','1234','�̵��','���','010-1267-9842','dlelql@elql.com','����','��õ������ ��籸','2','�߽�','null',0,'20240202');
--------------------------------------------------------
--  DDL for Index KYJ_SCM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."KYJ_SCM_PK" ON "ADMIN"."KYJ_SCM" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KYJ_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."KYJ_USER_PK" ON "ADMIN"."KYJ_USER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table KYJ_MENU
--------------------------------------------------------

  ALTER TABLE "ADMIN"."KYJ_MENU" MODIFY ("SCM_SHOPNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KYJ_ORDER
--------------------------------------------------------

  ALTER TABLE "ADMIN"."KYJ_ORDER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KYJ_SCM
--------------------------------------------------------

  ALTER TABLE "ADMIN"."KYJ_SCM" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."KYJ_SCM" ADD CONSTRAINT "KYJ_SCM_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KYJ_USER
--------------------------------------------------------

  ALTER TABLE "ADMIN"."KYJ_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."KYJ_USER" ADD CONSTRAINT "KYJ_USER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."KYJ_USER" MODIFY ("USER_PW" NOT NULL ENABLE);
