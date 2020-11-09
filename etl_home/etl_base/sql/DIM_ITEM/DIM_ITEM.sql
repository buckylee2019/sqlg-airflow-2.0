
ALTER TABLE DM.DIM_ITEM_TP1 DISABLE CONSTRAINT DIM_ITEM_TP1_X;
TRUNCATE TABLE DM.DIM_ITEM_TP1;

INSERT /*+ append */ INTO DM.DIM_ITEM_TP1 (
      INVENTORY_ITEM_ID                       
      ,ORGANIZATION_ID                         
      ,ITEM                                    
      ,ITEM_CATALOG_GROUP_ID                   
      ,BOM_ITEM_TYPE                           
      ,ITEM_TYPE                               
)
      SELECT
       MA.INVENTORY_ITEM_ID               AS INVENTORY_ITEM_ID
      ,MA.ORGANIZATION_ID                 AS ORGANIZATION_ID
      ,MA.ITEM                            AS ITEM
      ,MA.ITEM_CATALOG_GROUP_ID           AS ITEM_CATALOG_GROUP_ID
      ,MA.BOM_ITEM_TYPE                   AS BOM_ITEM_TYPE
      ,MA.ITEM_TYPE                       AS ITEM_TYPE
FROM SDM.SDM_ITEM MA  
;



ALTER TABLE DM.DIM_ITEM_TP1 ENABLE CONSTRAINT DIM_ITEM_TP1_X EXCEPTIONS INTO DM.DIM_ITEM_TPX;

ALTER TABLE DM.DIM_ITEM DISABLE CONSTRAINT DIM_ITEM_X;
TRUNCATE TABLE DM.DIM_ITEM;

INSERT /*+ append */ INTO DM.DIM_ITEM (
      INVENTORY_ITEM_ID                       
      ,ORGANIZATION_ID                         
      ,ITEM                                    
      ,ITEM_CATALOG_GROUP_ID                   
      ,BOM_ITEM_TYPE                           
      ,ITEM_TYPE                               
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.INVENTORY_ITEM_ID                    
      ,MA.ORGANIZATION_ID                      
      ,MA.ITEM                                 
      ,MA.ITEM_CATALOG_GROUP_ID                
      ,MA.BOM_ITEM_TYPE                        
      ,MA.ITEM_TYPE                            
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_ITEM'                          
FROM DM.DIM_ITEM_TP1 MA ; 



ALTER TABLE DM.DIM_ITEM ENABLE CONSTRAINT DIM_ITEM_X EXCEPTIONS INTO DM.DIM_ITEM_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','DIM_ITEM');


