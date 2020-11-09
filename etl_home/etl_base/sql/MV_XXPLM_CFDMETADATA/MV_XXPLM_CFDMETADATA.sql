
TRUNCATE TABLE ODS.MV_XXPLM_CFDMETADATA_TP1;

INSERT /*+ append */ INTO ODS.MV_XXPLM_CFDMETADATA_TP1 (
      DOCUMENTNAME                            
      ,DOCSTATUS                               
      ,DOCCODE                                 
      ,BU                                      
      ,MODEL_NO                                
      ,EFFECTIVE_DATE                          
      ,CREATOR                                 
      ,VERSION                                 
      ,DOCLINK                                 
)
      SELECT
       MA.DOCUMENTNAME                    AS DOCUMENTNAME
      ,MA.DOCSTATUS                       AS DOCSTATUS
      ,MA.DOCCODE                         AS DOCCODE
      ,MA.BU                              AS BU
      ,MA.MODEL_NO                        AS MODEL_NO
      ,MA.EFFECTIVE_DATE                  AS EFFECTIVE_DATE
      ,MA.CREATOR                         AS CREATOR
      ,MA.VERSION                         AS VERSION
      ,MA.DOCLINK                         AS DOCLINK
FROM STAGE.MV_XXPLM_CFDMETADATA MA  
;


TRUNCATE TABLE ODS.MV_XXPLM_CFDMETADATA;

INSERT /*+ append */ INTO ODS.MV_XXPLM_CFDMETADATA (
      DOCUMENTNAME                            
      ,DOCSTATUS                               
      ,DOCCODE                                 
      ,BU                                      
      ,MODEL_NO                                
      ,EFFECTIVE_DATE                          
      ,CREATOR                                 
      ,VERSION                                 
      ,DOCLINK                                 
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.DOCUMENTNAME                         
      ,MA.DOCSTATUS                            
      ,MA.DOCCODE                              
      ,MA.BU                                   
      ,MA.MODEL_NO                             
      ,MA.EFFECTIVE_DATE                       
      ,MA.CREATOR                              
      ,MA.VERSION                              
      ,MA.DOCLINK                              
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MV_XXPLM_CFDMETADATA'                          
FROM ODS.MV_XXPLM_CFDMETADATA_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MV_XXPLM_CFDMETADATA');


