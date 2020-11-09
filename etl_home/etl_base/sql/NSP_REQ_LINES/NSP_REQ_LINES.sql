
ALTER TABLE ODS.NSP_REQ_LINES_TP1 DISABLE CONSTRAINT NSP_REQ_LINES_TP1_X;
TRUNCATE TABLE ODS.NSP_REQ_LINES_TP1;

INSERT /*+ append */ INTO ODS.NSP_REQ_LINES_TP1 (
      REQ_LINE_ID                             
      ,REQ_HEADER_ID                           
      ,ORG_ID                                  
      ,CASEID                                  
      ,KEYID                                   
      ,LINE_NUM                                
      ,M_CATEGORY_ID                           
      ,S_CATEGORY_ID                           
      ,ITEM                                    
      ,ITEM_SPECIFICATION                      
      ,ITEM_BRAND                              
      ,ITEM_ID                                 
      ,UOM                                     
      ,QUANTITY                                
      ,QUANTITY_APPROVAL                       
      ,QUANTITY_ACCEPTANCE                     
      ,QUANTITY_RELEASED                       
      ,NEED_BY_DATE                            
      ,PROMISED_DATE                           
      ,QUOT_VENDOR                             
      ,CURRENCY                                
      ,RATE_DATE                               
      ,RATE                                    
      ,UNIT_PRICE                              
      ,AMOUNT                                  
      ,CURRENCY_AMOUNT                         
      ,DESCRIPTION                             
      ,CONTROL_STATUS                          
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,ENTITY_NO                               
      ,ENTITY_ID                               
      ,INSTRUMENT_FLAG                         
      ,INSPECTED_REQUIRED                      
      ,MATERIALSPECIFICATION                   
      ,ACCREDITATION_DESC                      
      ,MATERIAL_UNITCOST                       
      ,PURPOSE_DESC                            
      ,MDA_CORELATION                          
      ,LABORATORY_FACTORY                      
      ,LABORATORY_DESC                         
      ,EA_TYPE                                 
      ,EA_ITEM_DESC_EN                         
      ,EA_MODEL                                
      ,ITEMNO                                  
      ,BPANO                                   
      ,BPA_LINENO                              
      ,SUPPLIER                                
      ,SUPPLIER_SITE                           
      ,SYS_NC00052$                            
)
      SELECT
       MA.REQ_LINE_ID                     AS REQ_LINE_ID
      ,MA.REQ_HEADER_ID                   AS REQ_HEADER_ID
      ,MA.ORG_ID                          AS ORG_ID
      ,MA.CASEID                          AS CASEID
      ,MA.KEYID                           AS KEYID
      ,MA.LINE_NUM                        AS LINE_NUM
      ,MA.M_CATEGORY_ID                   AS M_CATEGORY_ID
      ,MA.S_CATEGORY_ID                   AS S_CATEGORY_ID
      ,MA.ITEM                            AS ITEM
      ,MA.ITEM_SPECIFICATION              AS ITEM_SPECIFICATION
      ,MA.ITEM_BRAND                      AS ITEM_BRAND
      ,MA.ITEM_ID                         AS ITEM_ID
      ,MA.UOM                             AS UOM
      ,MA.QUANTITY                        AS QUANTITY
      ,MA.QUANTITY_APPROVAL               AS QUANTITY_APPROVAL
      ,MA.QUANTITY_ACCEPTANCE             AS QUANTITY_ACCEPTANCE
      ,MA.QUANTITY_RELEASED               AS QUANTITY_RELEASED
      ,MA.NEED_BY_DATE                    AS NEED_BY_DATE
      ,MA.PROMISED_DATE                   AS PROMISED_DATE
      ,MA.QUOT_VENDOR                     AS QUOT_VENDOR
      ,MA.CURRENCY                        AS CURRENCY
      ,MA.RATE_DATE                       AS RATE_DATE
      ,MA.RATE                            AS RATE
      ,MA.UNIT_PRICE                      AS UNIT_PRICE
      ,MA.AMOUNT                          AS AMOUNT
      ,MA.CURRENCY_AMOUNT                 AS CURRENCY_AMOUNT
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.CONTROL_STATUS                  AS CONTROL_STATUS
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.ENTITY_NO                       AS ENTITY_NO
      ,MA.ENTITY_ID                       AS ENTITY_ID
      ,MA.INSTRUMENT_FLAG                 AS INSTRUMENT_FLAG
      ,MA.INSPECTED_REQUIRED              AS INSPECTED_REQUIRED
      ,MA.MATERIALSPECIFICATION           AS MATERIALSPECIFICATION
      ,MA.ACCREDITATION_DESC              AS ACCREDITATION_DESC
      ,MA.MATERIAL_UNITCOST               AS MATERIAL_UNITCOST
      ,MA.PURPOSE_DESC                    AS PURPOSE_DESC
      ,MA.MDA_CORELATION                  AS MDA_CORELATION
      ,MA.LABORATORY_FACTORY              AS LABORATORY_FACTORY
      ,MA.LABORATORY_DESC                 AS LABORATORY_DESC
      ,MA.EA_TYPE                         AS EA_TYPE
      ,MA.EA_ITEM_DESC_EN                 AS EA_ITEM_DESC_EN
      ,MA.EA_MODEL                        AS EA_MODEL
      ,MA.ITEMNO                          AS ITEMNO
      ,MA.BPANO                           AS BPANO
      ,MA.BPA_LINENO                      AS BPA_LINENO
      ,MA.SUPPLIER                        AS SUPPLIER
      ,MA.SUPPLIER_SITE                   AS SUPPLIER_SITE
      ,MA.SYS_NC00052$                    AS SYS_NC00052$
FROM STAGE.NSP_REQ_LINES MA  
;



ALTER TABLE ODS.NSP_REQ_LINES_TP1 ENABLE CONSTRAINT NSP_REQ_LINES_TP1_X EXCEPTIONS INTO ODS.NSP_REQ_LINES_TPX;

ALTER TABLE ODS.NSP_REQ_LINES DISABLE CONSTRAINT NSP_REQ_LINES_X;
TRUNCATE TABLE ODS.NSP_REQ_LINES;

INSERT /*+ append */ INTO ODS.NSP_REQ_LINES (
      REQ_LINE_ID                             
      ,REQ_HEADER_ID                           
      ,ORG_ID                                  
      ,CASEID                                  
      ,KEYID                                   
      ,LINE_NUM                                
      ,M_CATEGORY_ID                           
      ,S_CATEGORY_ID                           
      ,ITEM                                    
      ,ITEM_SPECIFICATION                      
      ,ITEM_BRAND                              
      ,ITEM_ID                                 
      ,UOM                                     
      ,QUANTITY                                
      ,QUANTITY_APPROVAL                       
      ,QUANTITY_ACCEPTANCE                     
      ,QUANTITY_RELEASED                       
      ,NEED_BY_DATE                            
      ,PROMISED_DATE                           
      ,QUOT_VENDOR                             
      ,CURRENCY                                
      ,RATE_DATE                               
      ,RATE                                    
      ,UNIT_PRICE                              
      ,AMOUNT                                  
      ,CURRENCY_AMOUNT                         
      ,DESCRIPTION                             
      ,CONTROL_STATUS                          
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,ENTITY_NO                               
      ,ENTITY_ID                               
      ,INSTRUMENT_FLAG                         
      ,INSPECTED_REQUIRED                      
      ,MATERIALSPECIFICATION                   
      ,ACCREDITATION_DESC                      
      ,MATERIAL_UNITCOST                       
      ,PURPOSE_DESC                            
      ,MDA_CORELATION                          
      ,LABORATORY_FACTORY                      
      ,LABORATORY_DESC                         
      ,EA_TYPE                                 
      ,EA_ITEM_DESC_EN                         
      ,EA_MODEL                                
      ,ITEMNO                                  
      ,BPANO                                   
      ,BPA_LINENO                              
      ,SUPPLIER                                
      ,SUPPLIER_SITE                           
      ,SYS_NC00052$                            
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.REQ_LINE_ID                          
      ,MA.REQ_HEADER_ID                        
      ,MA.ORG_ID                               
      ,MA.CASEID                               
      ,MA.KEYID                                
      ,MA.LINE_NUM                             
      ,MA.M_CATEGORY_ID                        
      ,MA.S_CATEGORY_ID                        
      ,MA.ITEM                                 
      ,MA.ITEM_SPECIFICATION                   
      ,MA.ITEM_BRAND                           
      ,MA.ITEM_ID                              
      ,MA.UOM                                  
      ,MA.QUANTITY                             
      ,MA.QUANTITY_APPROVAL                    
      ,MA.QUANTITY_ACCEPTANCE                  
      ,MA.QUANTITY_RELEASED                    
      ,MA.NEED_BY_DATE                         
      ,MA.PROMISED_DATE                        
      ,MA.QUOT_VENDOR                          
      ,MA.CURRENCY                             
      ,MA.RATE_DATE                            
      ,MA.RATE                                 
      ,MA.UNIT_PRICE                           
      ,MA.AMOUNT                               
      ,MA.CURRENCY_AMOUNT                      
      ,MA.DESCRIPTION                          
      ,MA.CONTROL_STATUS                       
      ,MA.CREATION_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.ENTITY_NO                            
      ,MA.ENTITY_ID                            
      ,MA.INSTRUMENT_FLAG                      
      ,MA.INSPECTED_REQUIRED                   
      ,MA.MATERIALSPECIFICATION                
      ,MA.ACCREDITATION_DESC                   
      ,MA.MATERIAL_UNITCOST                    
      ,MA.PURPOSE_DESC                         
      ,MA.MDA_CORELATION                       
      ,MA.LABORATORY_FACTORY                   
      ,MA.LABORATORY_DESC                      
      ,MA.EA_TYPE                              
      ,MA.EA_ITEM_DESC_EN                      
      ,MA.EA_MODEL                             
      ,MA.ITEMNO                               
      ,MA.BPANO                                
      ,MA.BPA_LINENO                           
      ,MA.SUPPLIER                             
      ,MA.SUPPLIER_SITE                        
      ,MA.SYS_NC00052$                         
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'NSP_REQ_LINES'                          
FROM ODS.NSP_REQ_LINES_TP1 MA ; 



ALTER TABLE ODS.NSP_REQ_LINES ENABLE CONSTRAINT NSP_REQ_LINES_X EXCEPTIONS INTO ODS.NSP_REQ_LINES_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','NSP_REQ_LINES');


