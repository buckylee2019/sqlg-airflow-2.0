
TRUNCATE TABLE ODS.XXPLM_TFD_TP1;

INSERT /*+ append */ INTO ODS.XXPLM_TFD_TP1 (
      PART_NO                                 
      ,PIC                                     
      ,DOCCODE                                 
      ,DOCNAME                                 
      ,DOCSTATUS                               
      ,DOCUMENTNAME                            
)
      SELECT
       MA.PART_NO                         AS PART_NO
      ,MA.PIC                             AS PIC
      ,MA.DOCCODE                         AS DOCCODE
      ,MA.DOCNAME                         AS DOCNAME
      ,MA.DOCSTATUS                       AS DOCSTATUS
      ,MA.DOCUMENTNAME                    AS DOCUMENTNAME
FROM STAGE.XXPLM_TFD MA  
;


TRUNCATE TABLE ODS.XXPLM_TFD;

INSERT /*+ append */ INTO ODS.XXPLM_TFD (
      PART_NO                                 
      ,PIC                                     
      ,DOCCODE                                 
      ,DOCNAME                                 
      ,DOCSTATUS                               
      ,DOCUMENTNAME                            
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PART_NO                              
      ,MA.PIC                                  
      ,MA.DOCCODE                              
      ,MA.DOCNAME                              
      ,MA.DOCSTATUS                            
      ,MA.DOCUMENTNAME                         
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'XXPLM_TFD'                          
FROM ODS.XXPLM_TFD_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','XXPLM_TFD');


