
CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'MV_PROJECT_ACTIVITY');
CREATE TABLE ODS.MV_PROJECT_ACTIVITY (
       PROJECTNUMBER                           VARCHAR2(600)
      ,MODEL                                   VARCHAR2(600)
      ,STATUS                                  VARCHAR2(600)
      ,CREATED_DT                              DATE
      ,MODIFIED_DT                             DATE
      ,LINE_ID                                 NUMBER
      ,MILESTONE                               NUMBER(1, 0)
      ,ACTIVITY                                VARCHAR2(765)
      ,UNIT_DURATION                           VARCHAR2(600)
      ,PLAN_START                              DATE
      ,PLAN_END                                DATE
      ,DEADLINE                                DATE
      ,ACTUAL_START                            DATE
      ,ACTUAL_END                              DATE
      ,COMPLETE_RATE                           NUMBER
      ,UPDATE_CNT                              NUMBER
      ,CLASSNAMEKEYPARENTREFERENCE             VARCHAR2(600)
      ,IDA3PARENTREFERENCE                     NUMBER
      ,DATA_DATE                               VARCHAR2(8)
      ,TBL_UPD_TIME                            DATE
      ,TBL_UPD_SRC                             VARCHAR2(100)
);

ALTER TABLE ODS.MV_PROJECT_ACTIVITY nologging;



--Comments Create Script 
COMMENT ON TABLE ODS.MV_PROJECT_ACTIVITY IS 'MV_PROJECT_ACTIVITY';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.PROJECTNUMBER IS 'PROJECTNUMBER';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.MODEL IS 'MODEL';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.STATUS IS 'STATUS';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.CREATED_DT IS 'CREATED_DT';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.MODIFIED_DT IS 'MODIFIED_DT';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.LINE_ID IS 'LINE_ID';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.MILESTONE IS 'MILESTONE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.ACTIVITY IS 'ACTIVITY';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.UNIT_DURATION IS 'UNIT_DURATION';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.PLAN_START IS 'PLAN_START';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.PLAN_END IS 'PLAN_END';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.DEADLINE IS 'DEADLINE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.ACTUAL_START IS 'ACTUAL_START';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.ACTUAL_END IS 'ACTUAL_END';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.COMPLETE_RATE IS 'COMPLETE_RATE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.UPDATE_CNT IS 'UPDATE_CNT';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.CLASSNAMEKEYPARENTREFERENCE IS 'CLASSNAMEKEYPARENTREFERENCE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.IDA3PARENTREFERENCE IS 'IDA3PARENTREFERENCE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.DATA_DATE IS 'DataDate';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.TBL_UPD_TIME IS 'Updated Time';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY.TBL_UPD_SRC IS 'Updated Source';

CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'MV_PROJECT_ACTIVITY_TPX');
CREATE TABLE ODS.MV_PROJECT_ACTIVITY_TPX AS SELECT * FROM SQLEXT.EXCEPTIONS WHERE 1=2
;




CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'MV_PROJECT_ACTIVITY_TP1');
CREATE TABLE ODS.MV_PROJECT_ACTIVITY_TP1 (
       PROJECTNUMBER                           VARCHAR2(600)
      ,MODEL                                   VARCHAR2(600)
      ,STATUS                                  VARCHAR2(600)
      ,CREATED_DT                              DATE
      ,MODIFIED_DT                             DATE
      ,LINE_ID                                 NUMBER
      ,MILESTONE                               NUMBER(1, 0)
      ,ACTIVITY                                VARCHAR2(765)
      ,UNIT_DURATION                           VARCHAR2(600)
      ,PLAN_START                              DATE
      ,PLAN_END                                DATE
      ,DEADLINE                                DATE
      ,ACTUAL_START                            DATE
      ,ACTUAL_END                              DATE
      ,COMPLETE_RATE                           NUMBER
      ,UPDATE_CNT                              NUMBER
      ,CLASSNAMEKEYPARENTREFERENCE             VARCHAR2(600)
      ,IDA3PARENTREFERENCE                     NUMBER
);

ALTER TABLE ODS.MV_PROJECT_ACTIVITY_TP1 nologging;



--Comments Create Script 
COMMENT ON TABLE ODS.MV_PROJECT_ACTIVITY_TP1 IS 'MV_PROJECT_ACTIVITY�Ȧs��';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.PROJECTNUMBER IS 'PROJECTNUMBER';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.MODEL IS 'MODEL';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.STATUS IS 'STATUS';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.CREATED_DT IS 'CREATED_DT';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.MODIFIED_DT IS 'MODIFIED_DT';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.LINE_ID IS 'LINE_ID';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.MILESTONE IS 'MILESTONE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.ACTIVITY IS 'ACTIVITY';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.UNIT_DURATION IS 'UNIT_DURATION';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.PLAN_START IS 'PLAN_START';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.PLAN_END IS 'PLAN_END';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.DEADLINE IS 'DEADLINE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.ACTUAL_START IS 'ACTUAL_START';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.ACTUAL_END IS 'ACTUAL_END';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.COMPLETE_RATE IS 'COMPLETE_RATE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.UPDATE_CNT IS 'UPDATE_CNT';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.CLASSNAMEKEYPARENTREFERENCE IS 'CLASSNAMEKEYPARENTREFERENCE';
COMMENT ON COLUMN ODS.MV_PROJECT_ACTIVITY_TP1.IDA3PARENTREFERENCE IS 'IDA3PARENTREFERENCE';



