
CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'FND_LOOKUP_VALUES');
CREATE TABLE ODS.FND_LOOKUP_VALUES (
       LOOKUP_TYPE                             VARCHAR2(30)
      ,LANGUAGE                                VARCHAR2(30)
      ,LOOKUP_CODE                             VARCHAR2(30)
      ,MEANING                                 VARCHAR2(80)
      ,DESCRIPTION                             VARCHAR2(240)
      ,ENABLED_FLAG                            VARCHAR2(1)
      ,START_DATE_ACTIVE                       DATE
      ,END_DATE_ACTIVE                         DATE
      ,CREATED_BY                              NUMBER(15, 0)
      ,CREATION_DATE                           DATE
      ,LAST_UPDATED_BY                         NUMBER(15, 0)
      ,LAST_UPDATE_LOGIN                       NUMBER(15, 0)
      ,LAST_UPDATE_DATE                        DATE
      ,SOURCE_LANG                             VARCHAR2(4)
      ,SECURITY_GROUP_ID                       NUMBER(15, 0)
      ,VIEW_APPLICATION_ID                     NUMBER(15, 0)
      ,TERRITORY_CODE                          VARCHAR2(2)
      ,ATTRIBUTE_CATEGORY                      VARCHAR2(30)
      ,ATTRIBUTE1                              VARCHAR2(150)
      ,ATTRIBUTE2                              VARCHAR2(150)
      ,ATTRIBUTE3                              VARCHAR2(150)
      ,ATTRIBUTE4                              VARCHAR2(150)
      ,ATTRIBUTE5                              VARCHAR2(150)
      ,ATTRIBUTE6                              VARCHAR2(150)
      ,ATTRIBUTE7                              VARCHAR2(150)
      ,ATTRIBUTE8                              VARCHAR2(150)
      ,ATTRIBUTE9                              VARCHAR2(150)
      ,ATTRIBUTE10                             VARCHAR2(150)
      ,ATTRIBUTE11                             VARCHAR2(150)
      ,ATTRIBUTE12                             VARCHAR2(150)
      ,ATTRIBUTE13                             VARCHAR2(150)
      ,ATTRIBUTE14                             VARCHAR2(150)
      ,ATTRIBUTE15                             VARCHAR2(150)
      ,TAG                                     VARCHAR2(150)
      ,LEAF_NODE                               VARCHAR2(1)
      ,DATA_DATE                               VARCHAR2(8)
      ,TBL_UPD_TIME                            DATE
      ,TBL_UPD_SRC                             VARCHAR2(100)
);

ALTER TABLE ODS.FND_LOOKUP_VALUES nologging;



--Comments Create Script 
COMMENT ON TABLE ODS.FND_LOOKUP_VALUES IS 'FND_LOOKUP_VALUES';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.LOOKUP_TYPE IS 'LOOKUP_TYPE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.LANGUAGE IS 'LANGUAGE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.LOOKUP_CODE IS 'LOOKUP_CODE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.MEANING IS 'MEANING';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.DESCRIPTION IS 'DESCRIPTION';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ENABLED_FLAG IS 'ENABLED_FLAG';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.START_DATE_ACTIVE IS 'START_DATE_ACTIVE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.END_DATE_ACTIVE IS 'END_DATE_ACTIVE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.CREATED_BY IS 'CREATED_BY';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.CREATION_DATE IS 'CREATION_DATE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.LAST_UPDATED_BY IS 'LAST_UPDATED_BY';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.LAST_UPDATE_LOGIN IS 'LAST_UPDATE_LOGIN';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.LAST_UPDATE_DATE IS 'LAST_UPDATE_DATE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.SOURCE_LANG IS 'SOURCE_LANG';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.SECURITY_GROUP_ID IS 'SECURITY_GROUP_ID';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.VIEW_APPLICATION_ID IS 'VIEW_APPLICATION_ID';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.TERRITORY_CODE IS 'TERRITORY_CODE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE_CATEGORY IS 'ATTRIBUTE_CATEGORY';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE1 IS 'ATTRIBUTE1';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE2 IS 'ATTRIBUTE2';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE3 IS 'ATTRIBUTE3';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE4 IS 'ATTRIBUTE4';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE5 IS 'ATTRIBUTE5';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE6 IS 'ATTRIBUTE6';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE7 IS 'ATTRIBUTE7';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE8 IS 'ATTRIBUTE8';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE9 IS 'ATTRIBUTE9';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE10 IS 'ATTRIBUTE10';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE11 IS 'ATTRIBUTE11';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE12 IS 'ATTRIBUTE12';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE13 IS 'ATTRIBUTE13';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE14 IS 'ATTRIBUTE14';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.ATTRIBUTE15 IS 'ATTRIBUTE15';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.TAG IS 'TAG';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.LEAF_NODE IS 'LEAF_NODE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.DATA_DATE IS 'DataDate';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.TBL_UPD_TIME IS 'Updated Time';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES.TBL_UPD_SRC IS 'Updated Source';

CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'FND_LOOKUP_VALUES_TPX');
CREATE TABLE ODS.FND_LOOKUP_VALUES_TPX AS SELECT * FROM SQLEXT.EXCEPTIONS WHERE 1=2
;




CALL SQLEXT.SP_DROP_IF_EXISTS ('ODS', 'FND_LOOKUP_VALUES_TP1');
CREATE TABLE ODS.FND_LOOKUP_VALUES_TP1 (
       LOOKUP_TYPE                             VARCHAR2(30)
      ,LANGUAGE                                VARCHAR2(30)
      ,LOOKUP_CODE                             VARCHAR2(30)
      ,MEANING                                 VARCHAR2(80)
      ,DESCRIPTION                             VARCHAR2(240)
      ,ENABLED_FLAG                            VARCHAR2(1)
      ,START_DATE_ACTIVE                       DATE
      ,END_DATE_ACTIVE                         DATE
      ,CREATED_BY                              NUMBER(15, 0)
      ,CREATION_DATE                           DATE
      ,LAST_UPDATED_BY                         NUMBER(15, 0)
      ,LAST_UPDATE_LOGIN                       NUMBER(15, 0)
      ,LAST_UPDATE_DATE                        DATE
      ,SOURCE_LANG                             VARCHAR2(4)
      ,SECURITY_GROUP_ID                       NUMBER(15, 0)
      ,VIEW_APPLICATION_ID                     NUMBER(15, 0)
      ,TERRITORY_CODE                          VARCHAR2(2)
      ,ATTRIBUTE_CATEGORY                      VARCHAR2(30)
      ,ATTRIBUTE1                              VARCHAR2(150)
      ,ATTRIBUTE2                              VARCHAR2(150)
      ,ATTRIBUTE3                              VARCHAR2(150)
      ,ATTRIBUTE4                              VARCHAR2(150)
      ,ATTRIBUTE5                              VARCHAR2(150)
      ,ATTRIBUTE6                              VARCHAR2(150)
      ,ATTRIBUTE7                              VARCHAR2(150)
      ,ATTRIBUTE8                              VARCHAR2(150)
      ,ATTRIBUTE9                              VARCHAR2(150)
      ,ATTRIBUTE10                             VARCHAR2(150)
      ,ATTRIBUTE11                             VARCHAR2(150)
      ,ATTRIBUTE12                             VARCHAR2(150)
      ,ATTRIBUTE13                             VARCHAR2(150)
      ,ATTRIBUTE14                             VARCHAR2(150)
      ,ATTRIBUTE15                             VARCHAR2(150)
      ,TAG                                     VARCHAR2(150)
      ,LEAF_NODE                               VARCHAR2(1)
);

ALTER TABLE ODS.FND_LOOKUP_VALUES_TP1 nologging;



--Comments Create Script 
COMMENT ON TABLE ODS.FND_LOOKUP_VALUES_TP1 IS 'FND_LOOKUP_VALUES�Ȧs��';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.LOOKUP_TYPE IS 'LOOKUP_TYPE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.LANGUAGE IS 'LANGUAGE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.LOOKUP_CODE IS 'LOOKUP_CODE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.MEANING IS 'MEANING';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.DESCRIPTION IS 'DESCRIPTION';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ENABLED_FLAG IS 'ENABLED_FLAG';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.START_DATE_ACTIVE IS 'START_DATE_ACTIVE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.END_DATE_ACTIVE IS 'END_DATE_ACTIVE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.CREATED_BY IS 'CREATED_BY';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.CREATION_DATE IS 'CREATION_DATE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.LAST_UPDATED_BY IS 'LAST_UPDATED_BY';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.LAST_UPDATE_LOGIN IS 'LAST_UPDATE_LOGIN';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.LAST_UPDATE_DATE IS 'LAST_UPDATE_DATE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.SOURCE_LANG IS 'SOURCE_LANG';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.SECURITY_GROUP_ID IS 'SECURITY_GROUP_ID';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.VIEW_APPLICATION_ID IS 'VIEW_APPLICATION_ID';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.TERRITORY_CODE IS 'TERRITORY_CODE';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE_CATEGORY IS 'ATTRIBUTE_CATEGORY';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE1 IS 'ATTRIBUTE1';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE2 IS 'ATTRIBUTE2';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE3 IS 'ATTRIBUTE3';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE4 IS 'ATTRIBUTE4';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE5 IS 'ATTRIBUTE5';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE6 IS 'ATTRIBUTE6';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE7 IS 'ATTRIBUTE7';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE8 IS 'ATTRIBUTE8';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE9 IS 'ATTRIBUTE9';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE10 IS 'ATTRIBUTE10';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE11 IS 'ATTRIBUTE11';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE12 IS 'ATTRIBUTE12';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE13 IS 'ATTRIBUTE13';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE14 IS 'ATTRIBUTE14';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.ATTRIBUTE15 IS 'ATTRIBUTE15';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.TAG IS 'TAG';
COMMENT ON COLUMN ODS.FND_LOOKUP_VALUES_TP1.LEAF_NODE IS 'LEAF_NODE';



