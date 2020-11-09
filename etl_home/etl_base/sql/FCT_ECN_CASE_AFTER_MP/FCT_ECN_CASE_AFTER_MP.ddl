
CALL SQLEXT.SP_DROP_IF_EXISTS ('DM', 'FCT_ECN_CASE_AFTER_MP');
CREATE TABLE DM.FCT_ECN_CASE_AFTER_MP (
       PROJECT_CODE                            VARCHAR2(30) NOT NULL
      ,BUSINESS_GROUP                          VARCHAR2(30) NOT NULL
      ,PO_CUSTOMER_CODE                        VARCHAR2(30) NOT NULL
      ,MODEL                                   VARCHAR2(30) NOT NULL
      ,MANUFACTURING_PLANT                     VARCHAR2(30) NOT NULL
      ,CREATIONDATE                            DATE NOT NULL
      ,ECN_CASE_AFTER_MP                       NUMBER
      ,DATA_DATE                               VARCHAR2(8)
      ,TBL_UPD_TIME                            DATE
      ,TBL_UPD_SRC                             VARCHAR2(100)
);

ALTER TABLE DM.FCT_ECN_CASE_AFTER_MP nologging;

--PK Create Script
ALTER TABLE DM.FCT_ECN_CASE_AFTER_MP ADD CONSTRAINT FCT_ECN_CASE_AFTER_MP_X PRIMARY KEY(PROJECT_CODE,BUSINESS_GROUP,PO_CUSTOMER_CODE,MODEL,MANUFACTURING_PLANT,CREATIONDATE) INITIALLY IMMEDIATE;

--Comments Create Script 
COMMENT ON TABLE DM.FCT_ECN_CASE_AFTER_MP IS '量產後工程變更通知數';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.PROJECT_CODE IS '專案代碼';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.BUSINESS_GROUP IS '標準-事業群';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.PO_CUSTOMER_CODE IS '下單客戶代碼';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.MODEL IS 'Model';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.MANUFACTURING_PLANT IS '標準-製造廠';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.CREATIONDATE IS 'CREATIONDATE';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.ECN_CASE_AFTER_MP IS '量產後工程變更通知數';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.DATA_DATE IS 'DataDate';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.TBL_UPD_TIME IS 'Updated Time';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP.TBL_UPD_SRC IS 'Updated Source';

CALL SQLEXT.SP_DROP_IF_EXISTS ('DM', 'FCT_ECN_CASE_AFTER_MP_TPX');
CREATE TABLE DM.FCT_ECN_CASE_AFTER_MP_TPX AS SELECT * FROM SQLEXT.EXCEPTIONS WHERE 1=2
;




CALL SQLEXT.SP_DROP_IF_EXISTS ('DM', 'FCT_ECN_CASE_AFTER_MP_TP1');
CREATE TABLE DM.FCT_ECN_CASE_AFTER_MP_TP1 (
       PROJECT_CODE                            VARCHAR2(30) NOT NULL
      ,BUSINESS_GROUP                          VARCHAR2(30) NOT NULL
      ,PO_CUSTOMER_CODE                        VARCHAR2(30) NOT NULL
      ,MODEL                                   VARCHAR2(30) NOT NULL
      ,MANUFACTURING_PLANT                     VARCHAR2(30) NOT NULL
      ,CREATIONDATE                            DATE NOT NULL
      ,ECN_CASE_AFTER_MP                       NUMBER
);

ALTER TABLE DM.FCT_ECN_CASE_AFTER_MP_TP1 nologging;

--PK Create Script
ALTER TABLE DM.FCT_ECN_CASE_AFTER_MP_TP1 ADD CONSTRAINT FCT_ECN_CASE_AFTER_MP_TP1_X PRIMARY KEY(PROJECT_CODE,BUSINESS_GROUP,PO_CUSTOMER_CODE,MODEL,MANUFACTURING_PLANT,CREATIONDATE) INITIALLY IMMEDIATE;

--Comments Create Script 
COMMENT ON TABLE DM.FCT_ECN_CASE_AFTER_MP_TP1 IS '量產後工程變更通知數暫存檔';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP_TP1.PROJECT_CODE IS '專案代碼';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP_TP1.BUSINESS_GROUP IS '標準-事業群';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP_TP1.PO_CUSTOMER_CODE IS '下單客戶代碼';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP_TP1.MODEL IS 'Model';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP_TP1.MANUFACTURING_PLANT IS '標準-製造廠';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP_TP1.CREATIONDATE IS 'CREATIONDATE';
COMMENT ON COLUMN DM.FCT_ECN_CASE_AFTER_MP_TP1.ECN_CASE_AFTER_MP IS '量產後工程變更通知數';



