
ALTER TABLE ODS.Z_CDOCUMENT_CHECKING_RULE_TP1 DISABLE CONSTRAINT Z_CDOCUMENT_CHECKING_RULE_TP1_X;
TRUNCATE TABLE ODS.Z_CDOCUMENT_CHECKING_RULE_TP1;

INSERT /*+ append */ INTO ODS.Z_CDOCUMENT_CHECKING_RULE_TP1 (
      IDA2A2                                  
      ,S2BU                                    
      ,S2SUBBU                                 
      ,S2DEVELOPMENTTYPE                       
      ,S2CURRENTSTAGE                          
      ,S2NEXTSTAGE                             
      ,PROJECT_DEVELOPMENT_FLOW                
      ,S2PRODUCTTYPE                           
      ,S2DERIVATIVETYPE                        
      ,S2CFDTEMPLATE                           
      ,CFD_CODE                                
)
      SELECT
       MA.IDA2A2                          AS IDA2A2
      ,MA.S2BU                            AS S2BU
      ,MA.S2SUBBU                         AS S2SUBBU
      ,MA.S2DEVELOPMENTTYPE               AS S2DEVELOPMENTTYPE
      ,MA.S2CURRENTSTAGE                  AS S2CURRENTSTAGE
      ,MA.S2NEXTSTAGE                     AS S2NEXTSTAGE
      ,MA.PROJECT_DEVELOPMENT_FLOW        AS PROJECT_DEVELOPMENT_FLOW
      ,MA.S2PRODUCTTYPE                   AS S2PRODUCTTYPE
      ,MA.S2DERIVATIVETYPE                AS S2DERIVATIVETYPE
      ,MA.S2CFDTEMPLATE                   AS S2CFDTEMPLATE
      ,MA.CFD_CODE                        AS CFD_CODE
FROM STAGE.Z_CDOCUMENT_CHECKING_RULE MA  
;



ALTER TABLE ODS.Z_CDOCUMENT_CHECKING_RULE_TP1 ENABLE CONSTRAINT Z_CDOCUMENT_CHECKING_RULE_TP1_X EXCEPTIONS INTO ODS.Z_CDOCUMENT_CHECKING_RULE_TPX;

ALTER TABLE ODS.Z_CDOCUMENT_CHECKING_RULE DISABLE CONSTRAINT Z_CDOCUMENT_CHECKING_RULE_X;
TRUNCATE TABLE ODS.Z_CDOCUMENT_CHECKING_RULE;

INSERT /*+ append */ INTO ODS.Z_CDOCUMENT_CHECKING_RULE (
      IDA2A2                                  
      ,S2BU                                    
      ,S2SUBBU                                 
      ,S2DEVELOPMENTTYPE                       
      ,S2CURRENTSTAGE                          
      ,S2NEXTSTAGE                             
      ,PROJECT_DEVELOPMENT_FLOW                
      ,S2PRODUCTTYPE                           
      ,S2DERIVATIVETYPE                        
      ,S2CFDTEMPLATE                           
      ,CFD_CODE                                
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.IDA2A2                               
      ,MA.S2BU                                 
      ,MA.S2SUBBU                              
      ,MA.S2DEVELOPMENTTYPE                    
      ,MA.S2CURRENTSTAGE                       
      ,MA.S2NEXTSTAGE                          
      ,MA.PROJECT_DEVELOPMENT_FLOW             
      ,MA.S2PRODUCTTYPE                        
      ,MA.S2DERIVATIVETYPE                     
      ,MA.S2CFDTEMPLATE                        
      ,MA.CFD_CODE                             
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'Z_CDOCUMENT_CHECKING_RULE'                          
FROM ODS.Z_CDOCUMENT_CHECKING_RULE_TP1 MA ; 



ALTER TABLE ODS.Z_CDOCUMENT_CHECKING_RULE ENABLE CONSTRAINT Z_CDOCUMENT_CHECKING_RULE_X EXCEPTIONS INTO ODS.Z_CDOCUMENT_CHECKING_RULE_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','Z_CDOCUMENT_CHECKING_RULE');


