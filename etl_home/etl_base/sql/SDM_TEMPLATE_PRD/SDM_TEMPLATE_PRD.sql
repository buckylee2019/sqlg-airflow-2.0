
TRUNCATE TABLE SDM.SDM_TEMPLATE_PRD_TP1;

INSERT /*+ append */ INTO SDM.SDM_TEMPLATE_PRD_TP1 (
      PROJECT_CODE                            
      ,BG                                      
      ,MODEL                                   
      ,DIM4                                    
      ,TEMPLATE                                
)
      SELECT
       N/A'                               AS PROJECT_CODE
      ,N/A'                               AS BG
      ,N/A'                               AS MODEL
      ,N/A'                               AS DIM4
      ,MA.TEMPLATE                        AS TEMPLATE
FROM ODS.TMPL MA  
;


TRUNCATE TABLE SDM.SDM_TEMPLATE_PRD;

INSERT /*+ append */ INTO SDM.SDM_TEMPLATE_PRD (
      PROJECT_CODE                            
      ,BG                                      
      ,MODEL                                   
      ,DIM4                                    
      ,TEMPLATE                                
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PROJECT_CODE                         
      ,MA.BG                                   
      ,MA.MODEL                                
      ,MA.DIM4                                 
      ,MA.TEMPLATE                             
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'TMPL'                          
FROM SDM.SDM_TEMPLATE_PRD_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_TEMPLATE_PRD');


