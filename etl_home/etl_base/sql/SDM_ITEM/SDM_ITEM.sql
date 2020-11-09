
ALTER TABLE SDM.SDM_ITEM_TP1 DISABLE CONSTRAINT SDM_ITEM_TP1_X;
TRUNCATE TABLE SDM.SDM_ITEM_TP1;

INSERT /*+ append */ INTO SDM.SDM_ITEM_TP1 (
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
      ,MA.SEGMENT1                        AS ITEM
      ,MA.ITEM_CATALOG_GROUP_ID           AS ITEM_CATALOG_GROUP_ID
      ,MA.BOM_ITEM_TYPE                   AS BOM_ITEM_TYPE
      ,MA.ITEM_TYPE                       AS ITEM_TYPE
FROM ODS.MTL_SYSTEM_ITEMS_B MA  
WHERE MA.ORGANIZATION_ID=106
;



ALTER TABLE SDM.SDM_ITEM_TP1 ENABLE CONSTRAINT SDM_ITEM_TP1_X EXCEPTIONS INTO SDM.SDM_ITEM_TPX;

ALTER TABLE SDM.SDM_ITEM DISABLE CONSTRAINT SDM_ITEM_X;
TRUNCATE TABLE SDM.SDM_ITEM;

INSERT /*+ append */ INTO SDM.SDM_ITEM (
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
      ,'MTL_SYSTEM_ITEMS_B'                          
FROM SDM.SDM_ITEM_TP1 MA ; 



ALTER TABLE SDM.SDM_ITEM ENABLE CONSTRAINT SDM_ITEM_X EXCEPTIONS INTO SDM.SDM_ITEM_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_ITEM');


