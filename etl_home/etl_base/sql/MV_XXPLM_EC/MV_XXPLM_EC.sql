
TRUNCATE TABLE ODS.MV_XXPLM_EC_TP1;

INSERT /*+ append */ INTO ODS.MV_XXPLM_EC_TP1 (
      ECNO                                    
      ,SUBJECT                                 
      ,CHANGETYPE                              
      ,DESCRIPTION                             
      ,CREATOR                                 
      ,STATUS                                  
      ,CREATIONDATE                            
      ,MODELNO                                 
      ,ORG                                     
      ,EFFECTIVEDATE                           
      ,COMPLETEDDATE                           
      ,ECPRIORITY                              
      ,ECACTIONPLAN                            
      ,PMNAME                                  
      ,PCCNAME                                 
      ,QANAME                                  
)
      SELECT
       MA.ECNO                            AS ECNO
      ,MA.SUBJECT                         AS SUBJECT
      ,MA.CHANGETYPE                      AS CHANGETYPE
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.CREATOR                         AS CREATOR
      ,MA.STATUS                          AS STATUS
      ,MA.CREATIONDATE                    AS CREATIONDATE
      ,MA.MODELNO                         AS MODELNO
      ,MA.ORG                             AS ORG
      ,MA.EFFECTIVEDATE                   AS EFFECTIVEDATE
      ,MA.COMPLETEDDATE                   AS COMPLETEDDATE
      ,MA.ECPRIORITY                      AS ECPRIORITY
      ,MA.ECACTIONPLAN                    AS ECACTIONPLAN
      ,MA.PMNAME                          AS PMNAME
      ,MA.PCCNAME                         AS PCCNAME
      ,MA.QANAME                          AS QANAME
FROM STAGE.MV_XXPLM_EC MA  
;


TRUNCATE TABLE ODS.MV_XXPLM_EC;

INSERT /*+ append */ INTO ODS.MV_XXPLM_EC (
      ECNO                                    
      ,SUBJECT                                 
      ,CHANGETYPE                              
      ,DESCRIPTION                             
      ,CREATOR                                 
      ,STATUS                                  
      ,CREATIONDATE                            
      ,MODELNO                                 
      ,ORG                                     
      ,EFFECTIVEDATE                           
      ,COMPLETEDDATE                           
      ,ECPRIORITY                              
      ,ECACTIONPLAN                            
      ,PMNAME                                  
      ,PCCNAME                                 
      ,QANAME                                  
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.ECNO                                 
      ,MA.SUBJECT                              
      ,MA.CHANGETYPE                           
      ,MA.DESCRIPTION                          
      ,MA.CREATOR                              
      ,MA.STATUS                               
      ,MA.CREATIONDATE                         
      ,MA.MODELNO                              
      ,MA.ORG                                  
      ,MA.EFFECTIVEDATE                        
      ,MA.COMPLETEDDATE                        
      ,MA.ECPRIORITY                           
      ,MA.ECACTIONPLAN                         
      ,MA.PMNAME                               
      ,MA.PCCNAME                              
      ,MA.QANAME                               
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MV_XXPLM_EC'                          
FROM ODS.MV_XXPLM_EC_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MV_XXPLM_EC');


