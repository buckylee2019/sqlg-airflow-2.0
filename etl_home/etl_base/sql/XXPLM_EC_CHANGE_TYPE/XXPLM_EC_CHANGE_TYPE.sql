
TRUNCATE TABLE ODS.XXPLM_EC_CHANGE_TYPE_TP1;

INSERT /*+ append */ INTO ODS.XXPLM_EC_CHANGE_TYPE_TP1 (
      INTERNAL_NAME                           
      ,DISPLAY_NAME                            
)
      SELECT
       MA.INTERNAL_NAME                   AS INTERNAL_NAME
      ,MA.DISPLAY_NAME                    AS DISPLAY_NAME
FROM STAGE.XXPLM_EC_CHANGE_TYPE MA  
;


TRUNCATE TABLE ODS.XXPLM_EC_CHANGE_TYPE;

INSERT /*+ append */ INTO ODS.XXPLM_EC_CHANGE_TYPE (
      INTERNAL_NAME                           
      ,DISPLAY_NAME                            
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.INTERNAL_NAME                        
      ,MA.DISPLAY_NAME                         
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'XXPLM_EC_CHANGE_TYPE'                          
FROM ODS.XXPLM_EC_CHANGE_TYPE_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','XXPLM_EC_CHANGE_TYPE');


