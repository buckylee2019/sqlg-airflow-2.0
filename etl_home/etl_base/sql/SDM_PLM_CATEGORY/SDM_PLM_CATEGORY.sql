
ALTER TABLE SDM.SDM_PLM_CATEGORY_TP1 DISABLE CONSTRAINT SDM_PLM_CATEGORY_TP1_X;
TRUNCATE TABLE SDM.SDM_PLM_CATEGORY_TP1;

INSERT /*+ append */ INTO SDM.SDM_PLM_CATEGORY_TP1 (
      PLM_CATEGORY                            
      ,SUB_BUSINESS_UNIT                       
      ,BUSINESS_UNIT                           
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,PRODUCT_LINE                            
      ,PLM_CATEGORY_ID                         
)
      SELECT
       distinct MA.MODEL_NO               AS PLM_CATEGORY
      ,MA.SUBBU                           AS SUB_BUSINESS_UNIT
      ,MA.BU                              AS BUSINESS_UNIT
      ,MA.BG                              AS BUSINESS_GROUP
      ,MA.MODEL_NO                        AS MODEL
      ,MA.PRODUCT_LINE                    AS PRODUCT_LINE
      ,ORA_HASH(MA.MODEL_NO)              AS PLM_CATEGORY_ID
FROM ODS.XXPLM_MODEL MA  
WHERE CREATION_DATE is not null
;



ALTER TABLE SDM.SDM_PLM_CATEGORY_TP1 ENABLE CONSTRAINT SDM_PLM_CATEGORY_TP1_X EXCEPTIONS INTO SDM.SDM_PLM_CATEGORY_TPX;

ALTER TABLE SDM.SDM_PLM_CATEGORY DISABLE CONSTRAINT SDM_PLM_CATEGORY_X;
TRUNCATE TABLE SDM.SDM_PLM_CATEGORY;

INSERT /*+ append */ INTO SDM.SDM_PLM_CATEGORY (
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
      ,'XXPLM_MODEL'                          
FROM SDM.SDM_PLM_CATEGORY_TP1 MA ; 



ALTER TABLE SDM.SDM_PLM_CATEGORY ENABLE CONSTRAINT SDM_PLM_CATEGORY_X EXCEPTIONS INTO SDM.SDM_PLM_CATEGORY_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_PLM_CATEGORY');


