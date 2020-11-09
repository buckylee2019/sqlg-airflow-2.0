
CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'MV_XXPLM_EC');
CREATE TABLE ODS.MV_XXPLM_EC (
       ECNO                                    VARCHAR2(96)
      ,SUBJECT                                 VARCHAR2(768)
      ,CHANGETYPE                              VARCHAR2(4000)
      ,DESCRIPTION                             VARCHAR2(4000)
      ,CREATOR                                 VARCHAR2(600)
      ,STATUS                                  VARCHAR2(600)
      ,CREATIONDATE                            DATE
      ,MODELNO                                 VARCHAR2(4000)
      ,ORG                                     VARCHAR2(4000)
      ,EFFECTIVEDATE                           DATE
      ,COMPLETEDDATE                           DATE
      ,ECPRIORITY                              VARCHAR2(600)
      ,ECACTIONPLAN                            VARCHAR2(4000)
      ,PMNAME                                  VARCHAR2(4000)
      ,PCCNAME                                 VARCHAR2(4000)
      ,QANAME                                  VARCHAR2(4000)
      ,DATA_DATE                               VARCHAR2(8)
      ,TBL_UPD_TIME                            DATE
      ,TBL_UPD_SRC                             VARCHAR2(100)
);

ALTER TABLE ODS.MV_XXPLM_EC nologging;



--Comments Create Script 
COMMENT ON TABLE ODS.MV_XXPLM_EC IS 'MV_XXPLM_EC';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.ECNO IS 'ECNO';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.SUBJECT IS 'SUBJECT';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.CHANGETYPE IS 'CHANGETYPE';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.DESCRIPTION IS 'DESCRIPTION';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.CREATOR IS 'CREATOR';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.STATUS IS 'STATUS';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.CREATIONDATE IS 'CREATIONDATE';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.MODELNO IS 'MODELNO';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.ORG IS 'ORG';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.EFFECTIVEDATE IS 'EFFECTIVEDATE';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.COMPLETEDDATE IS 'COMPLETEDDATE';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.ECPRIORITY IS 'ECPRIORITY';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.ECACTIONPLAN IS 'ECACTIONPLAN';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.PMNAME IS 'PMNAME';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.PCCNAME IS 'PCCNAME';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.QANAME IS 'QANAME';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.DATA_DATE IS 'DataDate';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.TBL_UPD_TIME IS 'Updated Time';
COMMENT ON COLUMN ODS.MV_XXPLM_EC.TBL_UPD_SRC IS 'Updated Source';

CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'MV_XXPLM_EC_TPX');
CREATE TABLE ODS.MV_XXPLM_EC_TPX AS SELECT * FROM SQLEXT.EXCEPTIONS WHERE 1=2
;




CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'MV_XXPLM_EC_TP1');
CREATE TABLE ODS.MV_XXPLM_EC_TP1 (
       ECNO                                    VARCHAR2(96)
      ,SUBJECT                                 VARCHAR2(768)
      ,CHANGETYPE                              VARCHAR2(4000)
      ,DESCRIPTION                             VARCHAR2(4000)
      ,CREATOR                                 VARCHAR2(600)
      ,STATUS                                  VARCHAR2(600)
      ,CREATIONDATE                            DATE
      ,MODELNO                                 VARCHAR2(4000)
      ,ORG                                     VARCHAR2(4000)
      ,EFFECTIVEDATE                           DATE
      ,COMPLETEDDATE                           DATE
      ,ECPRIORITY                              VARCHAR2(600)
      ,ECACTIONPLAN                            VARCHAR2(4000)
      ,PMNAME                                  VARCHAR2(4000)
      ,PCCNAME                                 VARCHAR2(4000)
      ,QANAME                                  VARCHAR2(4000)
);

ALTER TABLE ODS.MV_XXPLM_EC_TP1 nologging;



--Comments Create Script 
COMMENT ON TABLE ODS.MV_XXPLM_EC_TP1 IS 'MV_XXPLM_EC�Ȧs��';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.ECNO IS 'ECNO';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.SUBJECT IS 'SUBJECT';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.CHANGETYPE IS 'CHANGETYPE';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.DESCRIPTION IS 'DESCRIPTION';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.CREATOR IS 'CREATOR';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.STATUS IS 'STATUS';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.CREATIONDATE IS 'CREATIONDATE';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.MODELNO IS 'MODELNO';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.ORG IS 'ORG';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.EFFECTIVEDATE IS 'EFFECTIVEDATE';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.COMPLETEDDATE IS 'COMPLETEDDATE';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.ECPRIORITY IS 'ECPRIORITY';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.ECACTIONPLAN IS 'ECACTIONPLAN';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.PMNAME IS 'PMNAME';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.PCCNAME IS 'PCCNAME';
COMMENT ON COLUMN ODS.MV_XXPLM_EC_TP1.QANAME IS 'QANAME';



