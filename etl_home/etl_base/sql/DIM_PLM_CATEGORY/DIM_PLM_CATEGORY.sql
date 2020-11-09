
ALTER TABLE DM.DIM_PLM_CATEGORY_TP1 DISABLE CONSTRAINT DIM_PLM_CATEGORY_TP1_X;
TRUNCATE TABLE DM.DIM_PLM_CATEGORY_TP1;

INSERT /*+ append */ INTO DM.DIM_PLM_CATEGORY_TP1 (
      PLM_CATEGORY                            
      ,SUB_BUSINESS_UNIT                       
      ,BUSINESS_UNIT                           
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,PRODUCT_LINE                            
      ,PLM_CATEGORY_ID                         
)
      SELECT
       MA.PLM_CATEGORY                    AS PLM_CATEGORY
      ,MA.SUB_BUSINESS_UNIT               AS SUB_BUSINESS_UNIT
      ,MA.BUSINESS_UNIT                   AS BUSINESS_UNIT
      ,MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.MODEL                           AS MODEL
      ,MA.PRODUCT_LINE                    AS PRODUCT_LINE
      ,MA.PLM_CATEGORY_ID                 AS PLM_CATEGORY_ID
FROM SDM.SDM_PLM_CATEGORY MA  
;



ALTER TABLE DM.DIM_PLM_CATEGORY_TP1 ENABLE CONSTRAINT DIM_PLM_CATEGORY_TP1_X EXCEPTIONS INTO DM.DIM_PLM_CATEGORY_TPX;


INSERT /*+ append */ INTO DM.DIM_PLM_CATEGORY_TP1 (
      PLM_CATEGORY                            
      ,SUB_BUSINESS_UNIT                       
      ,BUSINESS_UNIT                           
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,PRODUCT_LINE                            
      ,PLM_CATEGORY_ID                         
) 
      SELECT
      MA.PLM_CATEGORY                         
      ,MA.SUB_BUSINESS_UNIT                    
      ,MA.BUSINESS_UNIT                        
      ,MA.BUSINESS_GROUP                       
      ,MA.MODEL                                
      ,MA.PRODUCT_LINE                         
      ,MA.PLM_CATEGORY_ID                      
FROM DM.DIM_PLM_CATEGORY MA 
WHERE NOT EXISTS (SELECT 1  FROM DM.DIM_PLM_CATEGORY_TP1 MB
      WHERE MA.PLM_CATEGORY_ID=MB.PLM_CATEGORY_ID
);

ALTER TABLE DM.DIM_PLM_CATEGORY DISABLE CONSTRAINT DIM_PLM_CATEGORY_X;
TRUNCATE TABLE DM.DIM_PLM_CATEGORY;
INSERT /*+ append */ INTO DM.DIM_PLM_CATEGORY (
      PLM_CATEGORY                            
      ,SUB_BUSINESS_UNIT                       
      ,BUSINESS_UNIT                           
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,PRODUCT_LINE                            
      ,PLM_CATEGORY_ID                         
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PLM_CATEGORY                         
      ,MA.SUB_BUSINESS_UNIT                    
      ,MA.BUSINESS_UNIT                        
      ,MA.BUSINESS_GROUP                       
      ,MA.MODEL                                
      ,MA.PRODUCT_LINE                         
      ,MA.PLM_CATEGORY_ID                      
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_PLM_CATEGORY'                          
FROM DM.DIM_PLM_CATEGORY_TP1 MA ; 



ALTER TABLE DM.DIM_PLM_CATEGORY ENABLE CONSTRAINT DIM_PLM_CATEGORY_X EXCEPTIONS INTO DM.DIM_PLM_CATEGORY_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','DIM_PLM_CATEGORY');


