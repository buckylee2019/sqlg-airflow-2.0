
TRUNCATE TABLE ODS.MTL_SYSTEM_ITEMS_B_TP1;

INSERT /*+ append */ INTO ODS.MTL_SYSTEM_ITEMS_B_TP1 (
      INVENTORY_ITEM_ID                       
      ,ORGANIZATION_ID                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,SUMMARY_FLAG                            
      ,ENABLED_FLAG                            
      ,START_DATE_ACTIVE                       
      ,END_DATE_ACTIVE                         
      ,DESCRIPTION                             
      ,BUYER_ID                                
      ,ACCOUNTING_RULE_ID                      
      ,INVOICING_RULE_ID                       
      ,SEGMENT1                                
      ,SEGMENT2                                
      ,SEGMENT3                                
      ,SEGMENT4                                
      ,SEGMENT5                                
      ,SEGMENT6                                
      ,SEGMENT7                                
      ,SEGMENT8                                
      ,SEGMENT9                                
      ,SEGMENT10                               
      ,SEGMENT11                               
      ,SEGMENT12                               
      ,SEGMENT13                               
      ,SEGMENT14                               
      ,SEGMENT15                               
      ,SEGMENT16                               
      ,SEGMENT17                               
      ,SEGMENT18                               
      ,SEGMENT19                               
      ,SEGMENT20                               
      ,ATTRIBUTE_CATEGORY                      
      ,ATTRIBUTE1                              
      ,ATTRIBUTE2                              
      ,ATTRIBUTE3                              
      ,ATTRIBUTE4                              
      ,ATTRIBUTE5                              
      ,ATTRIBUTE6                              
      ,ATTRIBUTE7                              
      ,ATTRIBUTE8                              
      ,ATTRIBUTE9                              
      ,ATTRIBUTE10                             
      ,ATTRIBUTE11                             
      ,ATTRIBUTE12                             
      ,ATTRIBUTE13                             
      ,ATTRIBUTE14                             
      ,ATTRIBUTE15                             
      ,PURCHASING_ITEM_FLAG                    
      ,SHIPPABLE_ITEM_FLAG                     
      ,CUSTOMER_ORDER_FLAG                     
      ,INTERNAL_ORDER_FLAG                     
      ,SERVICE_ITEM_FLAG                       
      ,INVENTORY_ITEM_FLAG                     
      ,ENG_ITEM_FLAG                           
      ,INVENTORY_ASSET_FLAG                    
      ,PURCHASING_ENABLED_FLAG                 
      ,CUSTOMER_ORDER_ENABLED_FLAG             
      ,INTERNAL_ORDER_ENABLED_FLAG             
      ,SO_TRANSACTIONS_FLAG                    
      ,MTL_TRANSACTIONS_ENABLED_FLAG           
      ,STOCK_ENABLED_FLAG                      
      ,BOM_ENABLED_FLAG                        
      ,BUILD_IN_WIP_FLAG                       
      ,REVISION_QTY_CONTROL_CODE               
      ,ITEM_CATALOG_GROUP_ID                   
      ,CATALOG_STATUS_FLAG                     
      ,RETURNABLE_FLAG                         
      ,DEFAULT_SHIPPING_ORG                    
      ,COLLATERAL_FLAG                         
      ,TAXABLE_FLAG                            
      ,QTY_RCV_EXCEPTION_CODE                  
      ,ALLOW_ITEM_DESC_UPDATE_FLAG             
      ,INSPECTION_REQUIRED_FLAG                
      ,RECEIPT_REQUIRED_FLAG                   
      ,MARKET_PRICE                            
      ,HAZARD_CLASS_ID                         
      ,RFQ_REQUIRED_FLAG                       
      ,QTY_RCV_TOLERANCE                       
      ,LIST_PRICE_PER_UNIT                     
      ,UN_NUMBER_ID                            
      ,PRICE_TOLERANCE_PERCENT                 
      ,ASSET_CATEGORY_ID                       
      ,ROUNDING_FACTOR                         
      ,UNIT_OF_ISSUE                           
      ,ENFORCE_SHIP_TO_LOCATION_CODE           
      ,ALLOW_SUBSTITUTE_RECEIPTS_FLAG          
      ,ALLOW_UNORDERED_RECEIPTS_FLAG           
      ,ALLOW_EXPRESS_DELIVERY_FLAG             
      ,DAYS_EARLY_RECEIPT_ALLOWED              
      ,DAYS_LATE_RECEIPT_ALLOWED               
      ,RECEIPT_DAYS_EXCEPTION_CODE             
      ,RECEIVING_ROUTING_ID                    
      ,INVOICE_CLOSE_TOLERANCE                 
      ,RECEIVE_CLOSE_TOLERANCE                 
      ,AUTO_LOT_ALPHA_PREFIX                   
      ,START_AUTO_LOT_NUMBER                   
      ,LOT_CONTROL_CODE                        
      ,SHELF_LIFE_CODE                         
      ,SHELF_LIFE_DAYS                         
      ,SERIAL_NUMBER_CONTROL_CODE              
      ,START_AUTO_SERIAL_NUMBER                
      ,AUTO_SERIAL_ALPHA_PREFIX                
      ,SOURCE_TYPE                             
      ,SOURCE_ORGANIZATION_ID                  
      ,SOURCE_SUBINVENTORY                     
      ,EXPENSE_ACCOUNT                         
      ,ENCUMBRANCE_ACCOUNT                     
      ,RESTRICT_SUBINVENTORIES_CODE            
      ,UNIT_WEIGHT                             
      ,WEIGHT_UOM_CODE                         
      ,VOLUME_UOM_CODE                         
      ,UNIT_VOLUME                             
      ,RESTRICT_LOCATORS_CODE                  
      ,LOCATION_CONTROL_CODE                   
      ,SHRINKAGE_RATE                          
      ,ACCEPTABLE_EARLY_DAYS                   
      ,PLANNING_TIME_FENCE_CODE                
      ,DEMAND_TIME_FENCE_CODE                  
      ,LEAD_TIME_LOT_SIZE                      
      ,STD_LOT_SIZE                            
      ,CUM_MANUFACTURING_LEAD_TIME             
      ,OVERRUN_PERCENTAGE                      
      ,MRP_CALCULATE_ATP_FLAG                  
      ,ACCEPTABLE_RATE_INCREASE                
      ,ACCEPTABLE_RATE_DECREASE                
      ,CUMULATIVE_TOTAL_LEAD_TIME              
      ,PLANNING_TIME_FENCE_DAYS                
      ,DEMAND_TIME_FENCE_DAYS                  
      ,END_ASSEMBLY_PEGGING_FLAG               
      ,REPETITIVE_PLANNING_FLAG                
      ,PLANNING_EXCEPTION_SET                  
      ,BOM_ITEM_TYPE                           
      ,PICK_COMPONENTS_FLAG                    
      ,REPLENISH_TO_ORDER_FLAG                 
      ,BASE_ITEM_ID                            
      ,ATP_COMPONENTS_FLAG                     
      ,ATP_FLAG                                
      ,FIXED_LEAD_TIME                         
      ,VARIABLE_LEAD_TIME                      
      ,WIP_SUPPLY_LOCATOR_ID                   
      ,WIP_SUPPLY_TYPE                         
      ,WIP_SUPPLY_SUBINVENTORY                 
      ,PRIMARY_UOM_CODE                        
      ,PRIMARY_UNIT_OF_MEASURE                 
      ,ALLOWED_UNITS_LOOKUP_CODE               
      ,COST_OF_SALES_ACCOUNT                   
      ,SALES_ACCOUNT                           
      ,DEFAULT_INCLUDE_IN_ROLLUP_FLAG          
      ,INVENTORY_ITEM_STATUS_CODE              
      ,INVENTORY_PLANNING_CODE                 
      ,PLANNER_CODE                            
      ,PLANNING_MAKE_BUY_CODE                  
      ,FIXED_LOT_MULTIPLIER                    
      ,ROUNDING_CONTROL_TYPE                   
      ,CARRYING_COST                           
      ,POSTPROCESSING_LEAD_TIME                
      ,PREPROCESSING_LEAD_TIME                 
      ,FULL_LEAD_TIME                          
      ,ORDER_COST                              
      ,MRP_SAFETY_STOCK_PERCENT                
      ,MRP_SAFETY_STOCK_CODE                   
      ,MIN_MINMAX_QUANTITY                     
      ,MAX_MINMAX_QUANTITY                     
      ,MINIMUM_ORDER_QUANTITY                  
      ,FIXED_ORDER_QUANTITY                    
      ,FIXED_DAYS_SUPPLY                       
      ,MAXIMUM_ORDER_QUANTITY                  
      ,ATP_RULE_ID                             
      ,PICKING_RULE_ID                         
      ,RESERVABLE_TYPE                         
      ,POSITIVE_MEASUREMENT_ERROR              
      ,NEGATIVE_MEASUREMENT_ERROR              
      ,ENGINEERING_ECN_CODE                    
      ,ENGINEERING_ITEM_ID                     
      ,ENGINEERING_DATE                        
      ,SERVICE_STARTING_DELAY                  
      ,VENDOR_WARRANTY_FLAG                    
      ,SERVICEABLE_COMPONENT_FLAG              
      ,SERVICEABLE_PRODUCT_FLAG                
      ,BASE_WARRANTY_SERVICE_ID                
      ,PAYMENT_TERMS_ID                        
      ,PREVENTIVE_MAINTENANCE_FLAG             
      ,PRIMARY_SPECIALIST_ID                   
      ,SECONDARY_SPECIALIST_ID                 
      ,SERVICEABLE_ITEM_CLASS_ID               
      ,TIME_BILLABLE_FLAG                      
      ,MATERIAL_BILLABLE_FLAG                  
      ,EXPENSE_BILLABLE_FLAG                   
      ,PRORATE_SERVICE_FLAG                    
      ,COVERAGE_SCHEDULE_ID                    
      ,SERVICE_DURATION_PERIOD_CODE            
      ,SERVICE_DURATION                        
      ,WARRANTY_VENDOR_ID                      
      ,MAX_WARRANTY_AMOUNT                     
      ,RESPONSE_TIME_PERIOD_CODE               
      ,RESPONSE_TIME_VALUE                     
      ,NEW_REVISION_CODE                       
      ,INVOICEABLE_ITEM_FLAG                   
      ,TAX_CODE                                
      ,INVOICE_ENABLED_FLAG                    
      ,MUST_USE_APPROVED_VENDOR_FLAG           
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,OUTSIDE_OPERATION_FLAG                  
      ,OUTSIDE_OPERATION_UOM_TYPE              
      ,SAFETY_STOCK_BUCKET_DAYS                
      ,AUTO_REDUCE_MPS                         
      ,COSTING_ENABLED_FLAG                    
      ,AUTO_CREATED_CONFIG_FLAG                
      ,CYCLE_COUNT_ENABLED_FLAG                
      ,ITEM_TYPE                               
      ,MODEL_CONFIG_CLAUSE_NAME                
      ,SHIP_MODEL_COMPLETE_FLAG                
      ,MRP_PLANNING_CODE                       
      ,RETURN_INSPECTION_REQUIREMENT           
      ,ATO_FORECAST_CONTROL                    
      ,RELEASE_TIME_FENCE_CODE                 
      ,RELEASE_TIME_FENCE_DAYS                 
      ,CONTAINER_ITEM_FLAG                     
      ,VEHICLE_ITEM_FLAG                       
      ,MAXIMUM_LOAD_WEIGHT                     
      ,MINIMUM_FILL_PERCENT                    
      ,CONTAINER_TYPE_CODE                     
      ,INTERNAL_VOLUME                         
      ,WH_UPDATE_DATE                          
      ,PRODUCT_FAMILY_ITEM_ID                  
      ,GLOBAL_ATTRIBUTE_CATEGORY               
      ,GLOBAL_ATTRIBUTE1                       
      ,GLOBAL_ATTRIBUTE2                       
      ,GLOBAL_ATTRIBUTE3                       
      ,GLOBAL_ATTRIBUTE4                       
      ,GLOBAL_ATTRIBUTE5                       
      ,GLOBAL_ATTRIBUTE6                       
      ,GLOBAL_ATTRIBUTE7                       
      ,GLOBAL_ATTRIBUTE8                       
      ,GLOBAL_ATTRIBUTE9                       
      ,GLOBAL_ATTRIBUTE10                      
      ,PURCHASING_TAX_CODE                     
      ,OVERCOMPLETION_TOLERANCE_TYPE           
      ,OVERCOMPLETION_TOLERANCE_VALUE          
      ,EFFECTIVITY_CONTROL                     
      ,CHECK_SHORTAGES_FLAG                    
      ,OVER_SHIPMENT_TOLERANCE                 
      ,UNDER_SHIPMENT_TOLERANCE                
      ,OVER_RETURN_TOLERANCE                   
      ,UNDER_RETURN_TOLERANCE                  
      ,EQUIPMENT_TYPE                          
      ,RECOVERED_PART_DISP_CODE                
      ,DEFECT_TRACKING_ON_FLAG                 
      ,USAGE_ITEM_FLAG                         
      ,EVENT_FLAG                              
      ,ELECTRONIC_FLAG                         
      ,DOWNLOADABLE_FLAG                       
      ,VOL_DISCOUNT_EXEMPT_FLAG                
      ,COUPON_EXEMPT_FLAG                      
      ,COMMS_NL_TRACKABLE_FLAG                 
      ,ASSET_CREATION_CODE                     
      ,COMMS_ACTIVATION_REQD_FLAG              
      ,ORDERABLE_ON_WEB_FLAG                   
      ,BACK_ORDERABLE_FLAG                     
      ,WEB_STATUS                              
      ,INDIVISIBLE_FLAG                        
      ,DIMENSION_UOM_CODE                      
      ,UNIT_LENGTH                             
      ,UNIT_WIDTH                              
      ,UNIT_HEIGHT                             
      ,BULK_PICKED_FLAG                        
      ,LOT_STATUS_ENABLED                      
      ,DEFAULT_LOT_STATUS_ID                   
      ,SERIAL_STATUS_ENABLED                   
      ,DEFAULT_SERIAL_STATUS_ID                
      ,LOT_SPLIT_ENABLED                       
      ,LOT_MERGE_ENABLED                       
      ,INVENTORY_CARRY_PENALTY                 
      ,OPERATION_SLACK_PENALTY                 
      ,FINANCING_ALLOWED_FLAG                  
      ,EAM_ITEM_TYPE                           
      ,EAM_ACTIVITY_TYPE_CODE                  
      ,EAM_ACTIVITY_CAUSE_CODE                 
      ,EAM_ACT_NOTIFICATION_FLAG               
      ,EAM_ACT_SHUTDOWN_STATUS                 
      ,DUAL_UOM_CONTROL                        
      ,SECONDARY_UOM_CODE                      
      ,DUAL_UOM_DEVIATION_HIGH                 
      ,DUAL_UOM_DEVIATION_LOW                  
      ,CONTRACT_ITEM_TYPE_CODE                 
      ,SUBSCRIPTION_DEPEND_FLAG                
      ,SERV_REQ_ENABLED_CODE                   
      ,SERV_BILLING_ENABLED_FLAG               
      ,SERV_IMPORTANCE_LEVEL                   
      ,PLANNED_INV_POINT_FLAG                  
      ,LOT_TRANSLATE_ENABLED                   
      ,DEFAULT_SO_SOURCE_TYPE                  
      ,CREATE_SUPPLY_FLAG                      
      ,SUBSTITUTION_WINDOW_CODE                
      ,SUBSTITUTION_WINDOW_DAYS                
      ,IB_ITEM_INSTANCE_CLASS                  
      ,CONFIG_MODEL_TYPE                       
      ,LOT_SUBSTITUTION_ENABLED                
      ,MINIMUM_LICENSE_QUANTITY                
      ,EAM_ACTIVITY_SOURCE_CODE                
      ,LIFECYCLE_ID                            
      ,CURRENT_PHASE_ID                        
      ,OBJECT_VERSION_NUMBER                   
      ,TRACKING_QUANTITY_IND                   
      ,ONT_PRICING_QTY_SOURCE                  
      ,SECONDARY_DEFAULT_IND                   
      ,OPTION_SPECIFIC_SOURCED                 
      ,APPROVAL_STATUS                         
      ,VMI_MINIMUM_UNITS                       
      ,VMI_MINIMUM_DAYS                        
      ,VMI_MAXIMUM_UNITS                       
      ,VMI_MAXIMUM_DAYS                        
      ,VMI_FIXED_ORDER_QUANTITY                
      ,SO_AUTHORIZATION_FLAG                   
      ,CONSIGNED_FLAG                          
      ,ASN_AUTOEXPIRE_FLAG                     
      ,VMI_FORECAST_TYPE                       
      ,FORECAST_HORIZON                        
      ,EXCLUDE_FROM_BUDGET_FLAG                
      ,DAYS_TGT_INV_SUPPLY                     
      ,DAYS_TGT_INV_WINDOW                     
      ,DAYS_MAX_INV_SUPPLY                     
      ,DAYS_MAX_INV_WINDOW                     
      ,DRP_PLANNED_FLAG                        
      ,CRITICAL_COMPONENT_FLAG                 
      ,CONTINOUS_TRANSFER                      
      ,CONVERGENCE                             
      ,DIVERGENCE                              
      ,CONFIG_ORGS                             
      ,CONFIG_MATCH                            
      ,ATTRIBUTE16                             
      ,ATTRIBUTE17                             
      ,ATTRIBUTE18                             
      ,ATTRIBUTE19                             
      ,ATTRIBUTE20                             
      ,ATTRIBUTE21                             
      ,ATTRIBUTE22                             
      ,ATTRIBUTE23                             
      ,ATTRIBUTE24                             
      ,ATTRIBUTE25                             
      ,ATTRIBUTE26                             
      ,ATTRIBUTE27                             
      ,ATTRIBUTE28                             
      ,ATTRIBUTE29                             
      ,ATTRIBUTE30                             
      ,CAS_NUMBER                              
      ,CHILD_LOT_FLAG                          
      ,CHILD_LOT_PREFIX                        
      ,CHILD_LOT_STARTING_NUMBER               
      ,CHILD_LOT_VALIDATION_FLAG               
      ,COPY_LOT_ATTRIBUTE_FLAG                 
      ,DEFAULT_GRADE                           
      ,EXPIRATION_ACTION_CODE                  
      ,EXPIRATION_ACTION_INTERVAL              
      ,GRADE_CONTROL_FLAG                      
      ,HAZARDOUS_MATERIAL_FLAG                 
      ,HOLD_DAYS                               
      ,LOT_DIVISIBLE_FLAG                      
      ,MATURITY_DAYS                           
      ,PARENT_CHILD_GENERATION_FLAG            
      ,PROCESS_COSTING_ENABLED_FLAG            
      ,PROCESS_EXECUTION_ENABLED_FLAG          
      ,PROCESS_QUALITY_ENABLED_FLAG            
      ,PROCESS_SUPPLY_LOCATOR_ID               
      ,PROCESS_SUPPLY_SUBINVENTORY             
      ,PROCESS_YIELD_LOCATOR_ID                
      ,PROCESS_YIELD_SUBINVENTORY              
      ,RECIPE_ENABLED_FLAG                     
      ,RETEST_INTERVAL                         
      ,CHARGE_PERIODICITY_CODE                 
      ,REPAIR_LEADTIME                         
      ,REPAIR_YIELD                            
      ,PREPOSITION_POINT                       
      ,REPAIR_PROGRAM                          
      ,SUBCONTRACTING_COMPONENT                
      ,OUTSOURCED_ASSEMBLY                     
      ,EGO_MASTER_ITEMS_DFF_CTX                
      ,GDSN_OUTBOUND_ENABLED_FLAG              
      ,TRADE_ITEM_DESCRIPTOR                   
      ,STYLE_ITEM_ID                           
      ,STYLE_ITEM_FLAG                         
      ,LAST_SUBMITTED_NIR_ID                   
      ,DEFAULT_MATERIAL_STATUS_ID              
      ,GLOBAL_ATTRIBUTE11                      
      ,GLOBAL_ATTRIBUTE12                      
      ,GLOBAL_ATTRIBUTE13                      
      ,GLOBAL_ATTRIBUTE14                      
      ,GLOBAL_ATTRIBUTE15                      
      ,GLOBAL_ATTRIBUTE16                      
      ,GLOBAL_ATTRIBUTE17                      
      ,GLOBAL_ATTRIBUTE18                      
      ,GLOBAL_ATTRIBUTE19                      
      ,GLOBAL_ATTRIBUTE20                      
)
      SELECT
       MA.INVENTORY_ITEM_ID               AS INVENTORY_ITEM_ID
      ,MA.ORGANIZATION_ID                 AS ORGANIZATION_ID
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.SUMMARY_FLAG                    AS SUMMARY_FLAG
      ,MA.ENABLED_FLAG                    AS ENABLED_FLAG
      ,MA.START_DATE_ACTIVE               AS START_DATE_ACTIVE
      ,MA.END_DATE_ACTIVE                 AS END_DATE_ACTIVE
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.BUYER_ID                        AS BUYER_ID
      ,MA.ACCOUNTING_RULE_ID              AS ACCOUNTING_RULE_ID
      ,MA.INVOICING_RULE_ID               AS INVOICING_RULE_ID
      ,MA.SEGMENT1                        AS SEGMENT1
      ,MA.SEGMENT2                        AS SEGMENT2
      ,MA.SEGMENT3                        AS SEGMENT3
      ,MA.SEGMENT4                        AS SEGMENT4
      ,MA.SEGMENT5                        AS SEGMENT5
      ,MA.SEGMENT6                        AS SEGMENT6
      ,MA.SEGMENT7                        AS SEGMENT7
      ,MA.SEGMENT8                        AS SEGMENT8
      ,MA.SEGMENT9                        AS SEGMENT9
      ,MA.SEGMENT10                       AS SEGMENT10
      ,MA.SEGMENT11                       AS SEGMENT11
      ,MA.SEGMENT12                       AS SEGMENT12
      ,MA.SEGMENT13                       AS SEGMENT13
      ,MA.SEGMENT14                       AS SEGMENT14
      ,MA.SEGMENT15                       AS SEGMENT15
      ,MA.SEGMENT16                       AS SEGMENT16
      ,MA.SEGMENT17                       AS SEGMENT17
      ,MA.SEGMENT18                       AS SEGMENT18
      ,MA.SEGMENT19                       AS SEGMENT19
      ,MA.SEGMENT20                       AS SEGMENT20
      ,MA.ATTRIBUTE_CATEGORY              AS ATTRIBUTE_CATEGORY
      ,MA.ATTRIBUTE1                      AS ATTRIBUTE1
      ,MA.ATTRIBUTE2                      AS ATTRIBUTE2
      ,MA.ATTRIBUTE3                      AS ATTRIBUTE3
      ,MA.ATTRIBUTE4                      AS ATTRIBUTE4
      ,MA.ATTRIBUTE5                      AS ATTRIBUTE5
      ,MA.ATTRIBUTE6                      AS ATTRIBUTE6
      ,MA.ATTRIBUTE7                      AS ATTRIBUTE7
      ,MA.ATTRIBUTE8                      AS ATTRIBUTE8
      ,MA.ATTRIBUTE9                      AS ATTRIBUTE9
      ,MA.ATTRIBUTE10                     AS ATTRIBUTE10
      ,MA.ATTRIBUTE11                     AS ATTRIBUTE11
      ,MA.ATTRIBUTE12                     AS ATTRIBUTE12
      ,MA.ATTRIBUTE13                     AS ATTRIBUTE13
      ,MA.ATTRIBUTE14                     AS ATTRIBUTE14
      ,MA.ATTRIBUTE15                     AS ATTRIBUTE15
      ,MA.PURCHASING_ITEM_FLAG            AS PURCHASING_ITEM_FLAG
      ,MA.SHIPPABLE_ITEM_FLAG             AS SHIPPABLE_ITEM_FLAG
      ,MA.CUSTOMER_ORDER_FLAG             AS CUSTOMER_ORDER_FLAG
      ,MA.INTERNAL_ORDER_FLAG             AS INTERNAL_ORDER_FLAG
      ,MA.SERVICE_ITEM_FLAG               AS SERVICE_ITEM_FLAG
      ,MA.INVENTORY_ITEM_FLAG             AS INVENTORY_ITEM_FLAG
      ,MA.ENG_ITEM_FLAG                   AS ENG_ITEM_FLAG
      ,MA.INVENTORY_ASSET_FLAG            AS INVENTORY_ASSET_FLAG
      ,MA.PURCHASING_ENABLED_FLAG         AS PURCHASING_ENABLED_FLAG
      ,MA.CUSTOMER_ORDER_ENABLED_FLAG     AS CUSTOMER_ORDER_ENABLED_FLAG
      ,MA.INTERNAL_ORDER_ENABLED_FLAG     AS INTERNAL_ORDER_ENABLED_FLAG
      ,MA.SO_TRANSACTIONS_FLAG            AS SO_TRANSACTIONS_FLAG
      ,MA.MTL_TRANSACTIONS_ENABLED_FLAG   AS MTL_TRANSACTIONS_ENABLED_FLAG
      ,MA.STOCK_ENABLED_FLAG              AS STOCK_ENABLED_FLAG
      ,MA.BOM_ENABLED_FLAG                AS BOM_ENABLED_FLAG
      ,MA.BUILD_IN_WIP_FLAG               AS BUILD_IN_WIP_FLAG
      ,MA.REVISION_QTY_CONTROL_CODE       AS REVISION_QTY_CONTROL_CODE
      ,MA.ITEM_CATALOG_GROUP_ID           AS ITEM_CATALOG_GROUP_ID
      ,MA.CATALOG_STATUS_FLAG             AS CATALOG_STATUS_FLAG
      ,MA.RETURNABLE_FLAG                 AS RETURNABLE_FLAG
      ,MA.DEFAULT_SHIPPING_ORG            AS DEFAULT_SHIPPING_ORG
      ,MA.COLLATERAL_FLAG                 AS COLLATERAL_FLAG
      ,MA.TAXABLE_FLAG                    AS TAXABLE_FLAG
      ,MA.QTY_RCV_EXCEPTION_CODE          AS QTY_RCV_EXCEPTION_CODE
      ,MA.ALLOW_ITEM_DESC_UPDATE_FLAG     AS ALLOW_ITEM_DESC_UPDATE_FLAG
      ,MA.INSPECTION_REQUIRED_FLAG        AS INSPECTION_REQUIRED_FLAG
      ,MA.RECEIPT_REQUIRED_FLAG           AS RECEIPT_REQUIRED_FLAG
      ,MA.MARKET_PRICE                    AS MARKET_PRICE
      ,MA.HAZARD_CLASS_ID                 AS HAZARD_CLASS_ID
      ,MA.RFQ_REQUIRED_FLAG               AS RFQ_REQUIRED_FLAG
      ,MA.QTY_RCV_TOLERANCE               AS QTY_RCV_TOLERANCE
      ,MA.LIST_PRICE_PER_UNIT             AS LIST_PRICE_PER_UNIT
      ,MA.UN_NUMBER_ID                    AS UN_NUMBER_ID
      ,MA.PRICE_TOLERANCE_PERCENT         AS PRICE_TOLERANCE_PERCENT
      ,MA.ASSET_CATEGORY_ID               AS ASSET_CATEGORY_ID
      ,MA.ROUNDING_FACTOR                 AS ROUNDING_FACTOR
      ,MA.UNIT_OF_ISSUE                   AS UNIT_OF_ISSUE
      ,MA.ENFORCE_SHIP_TO_LOCATION_CODE   AS ENFORCE_SHIP_TO_LOCATION_CODE
      ,MA.ALLOW_SUBSTITUTE_RECEIPTS_FLAG  AS ALLOW_SUBSTITUTE_RECEIPTS_FLAG
      ,MA.ALLOW_UNORDERED_RECEIPTS_FLAG   AS ALLOW_UNORDERED_RECEIPTS_FLAG
      ,MA.ALLOW_EXPRESS_DELIVERY_FLAG     AS ALLOW_EXPRESS_DELIVERY_FLAG
      ,MA.DAYS_EARLY_RECEIPT_ALLOWED      AS DAYS_EARLY_RECEIPT_ALLOWED
      ,MA.DAYS_LATE_RECEIPT_ALLOWED       AS DAYS_LATE_RECEIPT_ALLOWED
      ,MA.RECEIPT_DAYS_EXCEPTION_CODE     AS RECEIPT_DAYS_EXCEPTION_CODE
      ,MA.RECEIVING_ROUTING_ID            AS RECEIVING_ROUTING_ID
      ,MA.INVOICE_CLOSE_TOLERANCE         AS INVOICE_CLOSE_TOLERANCE
      ,MA.RECEIVE_CLOSE_TOLERANCE         AS RECEIVE_CLOSE_TOLERANCE
      ,MA.AUTO_LOT_ALPHA_PREFIX           AS AUTO_LOT_ALPHA_PREFIX
      ,MA.START_AUTO_LOT_NUMBER           AS START_AUTO_LOT_NUMBER
      ,MA.LOT_CONTROL_CODE                AS LOT_CONTROL_CODE
      ,MA.SHELF_LIFE_CODE                 AS SHELF_LIFE_CODE
      ,MA.SHELF_LIFE_DAYS                 AS SHELF_LIFE_DAYS
      ,MA.SERIAL_NUMBER_CONTROL_CODE      AS SERIAL_NUMBER_CONTROL_CODE
      ,MA.START_AUTO_SERIAL_NUMBER        AS START_AUTO_SERIAL_NUMBER
      ,MA.AUTO_SERIAL_ALPHA_PREFIX        AS AUTO_SERIAL_ALPHA_PREFIX
      ,MA.SOURCE_TYPE                     AS SOURCE_TYPE
      ,MA.SOURCE_ORGANIZATION_ID          AS SOURCE_ORGANIZATION_ID
      ,MA.SOURCE_SUBINVENTORY             AS SOURCE_SUBINVENTORY
      ,MA.EXPENSE_ACCOUNT                 AS EXPENSE_ACCOUNT
      ,MA.ENCUMBRANCE_ACCOUNT             AS ENCUMBRANCE_ACCOUNT
      ,MA.RESTRICT_SUBINVENTORIES_CODE    AS RESTRICT_SUBINVENTORIES_CODE
      ,MA.UNIT_WEIGHT                     AS UNIT_WEIGHT
      ,MA.WEIGHT_UOM_CODE                 AS WEIGHT_UOM_CODE
      ,MA.VOLUME_UOM_CODE                 AS VOLUME_UOM_CODE
      ,MA.UNIT_VOLUME                     AS UNIT_VOLUME
      ,MA.RESTRICT_LOCATORS_CODE          AS RESTRICT_LOCATORS_CODE
      ,MA.LOCATION_CONTROL_CODE           AS LOCATION_CONTROL_CODE
      ,MA.SHRINKAGE_RATE                  AS SHRINKAGE_RATE
      ,MA.ACCEPTABLE_EARLY_DAYS           AS ACCEPTABLE_EARLY_DAYS
      ,MA.PLANNING_TIME_FENCE_CODE        AS PLANNING_TIME_FENCE_CODE
      ,MA.DEMAND_TIME_FENCE_CODE          AS DEMAND_TIME_FENCE_CODE
      ,MA.LEAD_TIME_LOT_SIZE              AS LEAD_TIME_LOT_SIZE
      ,MA.STD_LOT_SIZE                    AS STD_LOT_SIZE
      ,MA.CUM_MANUFACTURING_LEAD_TIME     AS CUM_MANUFACTURING_LEAD_TIME
      ,MA.OVERRUN_PERCENTAGE              AS OVERRUN_PERCENTAGE
      ,MA.MRP_CALCULATE_ATP_FLAG          AS MRP_CALCULATE_ATP_FLAG
      ,MA.ACCEPTABLE_RATE_INCREASE        AS ACCEPTABLE_RATE_INCREASE
      ,MA.ACCEPTABLE_RATE_DECREASE        AS ACCEPTABLE_RATE_DECREASE
      ,MA.CUMULATIVE_TOTAL_LEAD_TIME      AS CUMULATIVE_TOTAL_LEAD_TIME
      ,MA.PLANNING_TIME_FENCE_DAYS        AS PLANNING_TIME_FENCE_DAYS
      ,MA.DEMAND_TIME_FENCE_DAYS          AS DEMAND_TIME_FENCE_DAYS
      ,MA.END_ASSEMBLY_PEGGING_FLAG       AS END_ASSEMBLY_PEGGING_FLAG
      ,MA.REPETITIVE_PLANNING_FLAG        AS REPETITIVE_PLANNING_FLAG
      ,MA.PLANNING_EXCEPTION_SET          AS PLANNING_EXCEPTION_SET
      ,MA.BOM_ITEM_TYPE                   AS BOM_ITEM_TYPE
      ,MA.PICK_COMPONENTS_FLAG            AS PICK_COMPONENTS_FLAG
      ,MA.REPLENISH_TO_ORDER_FLAG         AS REPLENISH_TO_ORDER_FLAG
      ,MA.BASE_ITEM_ID                    AS BASE_ITEM_ID
      ,MA.ATP_COMPONENTS_FLAG             AS ATP_COMPONENTS_FLAG
      ,MA.ATP_FLAG                        AS ATP_FLAG
      ,MA.FIXED_LEAD_TIME                 AS FIXED_LEAD_TIME
      ,MA.VARIABLE_LEAD_TIME              AS VARIABLE_LEAD_TIME
      ,MA.WIP_SUPPLY_LOCATOR_ID           AS WIP_SUPPLY_LOCATOR_ID
      ,MA.WIP_SUPPLY_TYPE                 AS WIP_SUPPLY_TYPE
      ,MA.WIP_SUPPLY_SUBINVENTORY         AS WIP_SUPPLY_SUBINVENTORY
      ,MA.PRIMARY_UOM_CODE                AS PRIMARY_UOM_CODE
      ,MA.PRIMARY_UNIT_OF_MEASURE         AS PRIMARY_UNIT_OF_MEASURE
      ,MA.ALLOWED_UNITS_LOOKUP_CODE       AS ALLOWED_UNITS_LOOKUP_CODE
      ,MA.COST_OF_SALES_ACCOUNT           AS COST_OF_SALES_ACCOUNT
      ,MA.SALES_ACCOUNT                   AS SALES_ACCOUNT
      ,MA.DEFAULT_INCLUDE_IN_ROLLUP_FLAG  AS DEFAULT_INCLUDE_IN_ROLLUP_FLAG
      ,MA.INVENTORY_ITEM_STATUS_CODE      AS INVENTORY_ITEM_STATUS_CODE
      ,MA.INVENTORY_PLANNING_CODE         AS INVENTORY_PLANNING_CODE
      ,MA.PLANNER_CODE                    AS PLANNER_CODE
      ,MA.PLANNING_MAKE_BUY_CODE          AS PLANNING_MAKE_BUY_CODE
      ,MA.FIXED_LOT_MULTIPLIER            AS FIXED_LOT_MULTIPLIER
      ,MA.ROUNDING_CONTROL_TYPE           AS ROUNDING_CONTROL_TYPE
      ,MA.CARRYING_COST                   AS CARRYING_COST
      ,MA.POSTPROCESSING_LEAD_TIME        AS POSTPROCESSING_LEAD_TIME
      ,MA.PREPROCESSING_LEAD_TIME         AS PREPROCESSING_LEAD_TIME
      ,MA.FULL_LEAD_TIME                  AS FULL_LEAD_TIME
      ,MA.ORDER_COST                      AS ORDER_COST
      ,MA.MRP_SAFETY_STOCK_PERCENT        AS MRP_SAFETY_STOCK_PERCENT
      ,MA.MRP_SAFETY_STOCK_CODE           AS MRP_SAFETY_STOCK_CODE
      ,MA.MIN_MINMAX_QUANTITY             AS MIN_MINMAX_QUANTITY
      ,MA.MAX_MINMAX_QUANTITY             AS MAX_MINMAX_QUANTITY
      ,MA.MINIMUM_ORDER_QUANTITY          AS MINIMUM_ORDER_QUANTITY
      ,MA.FIXED_ORDER_QUANTITY            AS FIXED_ORDER_QUANTITY
      ,MA.FIXED_DAYS_SUPPLY               AS FIXED_DAYS_SUPPLY
      ,MA.MAXIMUM_ORDER_QUANTITY          AS MAXIMUM_ORDER_QUANTITY
      ,MA.ATP_RULE_ID                     AS ATP_RULE_ID
      ,MA.PICKING_RULE_ID                 AS PICKING_RULE_ID
      ,MA.RESERVABLE_TYPE                 AS RESERVABLE_TYPE
      ,MA.POSITIVE_MEASUREMENT_ERROR      AS POSITIVE_MEASUREMENT_ERROR
      ,MA.NEGATIVE_MEASUREMENT_ERROR      AS NEGATIVE_MEASUREMENT_ERROR
      ,MA.ENGINEERING_ECN_CODE            AS ENGINEERING_ECN_CODE
      ,MA.ENGINEERING_ITEM_ID             AS ENGINEERING_ITEM_ID
      ,MA.ENGINEERING_DATE                AS ENGINEERING_DATE
      ,MA.SERVICE_STARTING_DELAY          AS SERVICE_STARTING_DELAY
      ,MA.VENDOR_WARRANTY_FLAG            AS VENDOR_WARRANTY_FLAG
      ,MA.SERVICEABLE_COMPONENT_FLAG      AS SERVICEABLE_COMPONENT_FLAG
      ,MA.SERVICEABLE_PRODUCT_FLAG        AS SERVICEABLE_PRODUCT_FLAG
      ,MA.BASE_WARRANTY_SERVICE_ID        AS BASE_WARRANTY_SERVICE_ID
      ,MA.PAYMENT_TERMS_ID                AS PAYMENT_TERMS_ID
      ,MA.PREVENTIVE_MAINTENANCE_FLAG     AS PREVENTIVE_MAINTENANCE_FLAG
      ,MA.PRIMARY_SPECIALIST_ID           AS PRIMARY_SPECIALIST_ID
      ,MA.SECONDARY_SPECIALIST_ID         AS SECONDARY_SPECIALIST_ID
      ,MA.SERVICEABLE_ITEM_CLASS_ID       AS SERVICEABLE_ITEM_CLASS_ID
      ,MA.TIME_BILLABLE_FLAG              AS TIME_BILLABLE_FLAG
      ,MA.MATERIAL_BILLABLE_FLAG          AS MATERIAL_BILLABLE_FLAG
      ,MA.EXPENSE_BILLABLE_FLAG           AS EXPENSE_BILLABLE_FLAG
      ,MA.PRORATE_SERVICE_FLAG            AS PRORATE_SERVICE_FLAG
      ,MA.COVERAGE_SCHEDULE_ID            AS COVERAGE_SCHEDULE_ID
      ,MA.SERVICE_DURATION_PERIOD_CODE    AS SERVICE_DURATION_PERIOD_CODE
      ,MA.SERVICE_DURATION                AS SERVICE_DURATION
      ,MA.WARRANTY_VENDOR_ID              AS WARRANTY_VENDOR_ID
      ,MA.MAX_WARRANTY_AMOUNT             AS MAX_WARRANTY_AMOUNT
      ,MA.RESPONSE_TIME_PERIOD_CODE       AS RESPONSE_TIME_PERIOD_CODE
      ,MA.RESPONSE_TIME_VALUE             AS RESPONSE_TIME_VALUE
      ,MA.NEW_REVISION_CODE               AS NEW_REVISION_CODE
      ,MA.INVOICEABLE_ITEM_FLAG           AS INVOICEABLE_ITEM_FLAG
      ,MA.TAX_CODE                        AS TAX_CODE
      ,MA.INVOICE_ENABLED_FLAG            AS INVOICE_ENABLED_FLAG
      ,MA.MUST_USE_APPROVED_VENDOR_FLAG   AS MUST_USE_APPROVED_VENDOR_FLAG
      ,MA.REQUEST_ID                      AS REQUEST_ID
      ,MA.PROGRAM_APPLICATION_ID          AS PROGRAM_APPLICATION_ID
      ,MA.PROGRAM_ID                      AS PROGRAM_ID
      ,MA.PROGRAM_UPDATE_DATE             AS PROGRAM_UPDATE_DATE
      ,MA.OUTSIDE_OPERATION_FLAG          AS OUTSIDE_OPERATION_FLAG
      ,MA.OUTSIDE_OPERATION_UOM_TYPE      AS OUTSIDE_OPERATION_UOM_TYPE
      ,MA.SAFETY_STOCK_BUCKET_DAYS        AS SAFETY_STOCK_BUCKET_DAYS
      ,MA.AUTO_REDUCE_MPS                 AS AUTO_REDUCE_MPS
      ,MA.COSTING_ENABLED_FLAG            AS COSTING_ENABLED_FLAG
      ,MA.AUTO_CREATED_CONFIG_FLAG        AS AUTO_CREATED_CONFIG_FLAG
      ,MA.CYCLE_COUNT_ENABLED_FLAG        AS CYCLE_COUNT_ENABLED_FLAG
      ,MA.ITEM_TYPE                       AS ITEM_TYPE
      ,MA.MODEL_CONFIG_CLAUSE_NAME        AS MODEL_CONFIG_CLAUSE_NAME
      ,MA.SHIP_MODEL_COMPLETE_FLAG        AS SHIP_MODEL_COMPLETE_FLAG
      ,MA.MRP_PLANNING_CODE               AS MRP_PLANNING_CODE
      ,MA.RETURN_INSPECTION_REQUIREMENT   AS RETURN_INSPECTION_REQUIREMENT
      ,MA.ATO_FORECAST_CONTROL            AS ATO_FORECAST_CONTROL
      ,MA.RELEASE_TIME_FENCE_CODE         AS RELEASE_TIME_FENCE_CODE
      ,MA.RELEASE_TIME_FENCE_DAYS         AS RELEASE_TIME_FENCE_DAYS
      ,MA.CONTAINER_ITEM_FLAG             AS CONTAINER_ITEM_FLAG
      ,MA.VEHICLE_ITEM_FLAG               AS VEHICLE_ITEM_FLAG
      ,MA.MAXIMUM_LOAD_WEIGHT             AS MAXIMUM_LOAD_WEIGHT
      ,MA.MINIMUM_FILL_PERCENT            AS MINIMUM_FILL_PERCENT
      ,MA.CONTAINER_TYPE_CODE             AS CONTAINER_TYPE_CODE
      ,MA.INTERNAL_VOLUME                 AS INTERNAL_VOLUME
      ,MA.WH_UPDATE_DATE                  AS WH_UPDATE_DATE
      ,MA.PRODUCT_FAMILY_ITEM_ID          AS PRODUCT_FAMILY_ITEM_ID
      ,MA.GLOBAL_ATTRIBUTE_CATEGORY       AS GLOBAL_ATTRIBUTE_CATEGORY
      ,MA.GLOBAL_ATTRIBUTE1               AS GLOBAL_ATTRIBUTE1
      ,MA.GLOBAL_ATTRIBUTE2               AS GLOBAL_ATTRIBUTE2
      ,MA.GLOBAL_ATTRIBUTE3               AS GLOBAL_ATTRIBUTE3
      ,MA.GLOBAL_ATTRIBUTE4               AS GLOBAL_ATTRIBUTE4
      ,MA.GLOBAL_ATTRIBUTE5               AS GLOBAL_ATTRIBUTE5
      ,MA.GLOBAL_ATTRIBUTE6               AS GLOBAL_ATTRIBUTE6
      ,MA.GLOBAL_ATTRIBUTE7               AS GLOBAL_ATTRIBUTE7
      ,MA.GLOBAL_ATTRIBUTE8               AS GLOBAL_ATTRIBUTE8
      ,MA.GLOBAL_ATTRIBUTE9               AS GLOBAL_ATTRIBUTE9
      ,MA.GLOBAL_ATTRIBUTE10              AS GLOBAL_ATTRIBUTE10
      ,MA.PURCHASING_TAX_CODE             AS PURCHASING_TAX_CODE
      ,MA.OVERCOMPLETION_TOLERANCE_TYPE   AS OVERCOMPLETION_TOLERANCE_TYPE
      ,MA.OVERCOMPLETION_TOLERANCE_VALUE  AS OVERCOMPLETION_TOLERANCE_VALUE
      ,MA.EFFECTIVITY_CONTROL             AS EFFECTIVITY_CONTROL
      ,MA.CHECK_SHORTAGES_FLAG            AS CHECK_SHORTAGES_FLAG
      ,MA.OVER_SHIPMENT_TOLERANCE         AS OVER_SHIPMENT_TOLERANCE
      ,MA.UNDER_SHIPMENT_TOLERANCE        AS UNDER_SHIPMENT_TOLERANCE
      ,MA.OVER_RETURN_TOLERANCE           AS OVER_RETURN_TOLERANCE
      ,MA.UNDER_RETURN_TOLERANCE          AS UNDER_RETURN_TOLERANCE
      ,MA.EQUIPMENT_TYPE                  AS EQUIPMENT_TYPE
      ,MA.RECOVERED_PART_DISP_CODE        AS RECOVERED_PART_DISP_CODE
      ,MA.DEFECT_TRACKING_ON_FLAG         AS DEFECT_TRACKING_ON_FLAG
      ,MA.USAGE_ITEM_FLAG                 AS USAGE_ITEM_FLAG
      ,MA.EVENT_FLAG                      AS EVENT_FLAG
      ,MA.ELECTRONIC_FLAG                 AS ELECTRONIC_FLAG
      ,MA.DOWNLOADABLE_FLAG               AS DOWNLOADABLE_FLAG
      ,MA.VOL_DISCOUNT_EXEMPT_FLAG        AS VOL_DISCOUNT_EXEMPT_FLAG
      ,MA.COUPON_EXEMPT_FLAG              AS COUPON_EXEMPT_FLAG
      ,MA.COMMS_NL_TRACKABLE_FLAG         AS COMMS_NL_TRACKABLE_FLAG
      ,MA.ASSET_CREATION_CODE             AS ASSET_CREATION_CODE
      ,MA.COMMS_ACTIVATION_REQD_FLAG      AS COMMS_ACTIVATION_REQD_FLAG
      ,MA.ORDERABLE_ON_WEB_FLAG           AS ORDERABLE_ON_WEB_FLAG
      ,MA.BACK_ORDERABLE_FLAG             AS BACK_ORDERABLE_FLAG
      ,MA.WEB_STATUS                      AS WEB_STATUS
      ,MA.INDIVISIBLE_FLAG                AS INDIVISIBLE_FLAG
      ,MA.DIMENSION_UOM_CODE              AS DIMENSION_UOM_CODE
      ,MA.UNIT_LENGTH                     AS UNIT_LENGTH
      ,MA.UNIT_WIDTH                      AS UNIT_WIDTH
      ,MA.UNIT_HEIGHT                     AS UNIT_HEIGHT
      ,MA.BULK_PICKED_FLAG                AS BULK_PICKED_FLAG
      ,MA.LOT_STATUS_ENABLED              AS LOT_STATUS_ENABLED
      ,MA.DEFAULT_LOT_STATUS_ID           AS DEFAULT_LOT_STATUS_ID
      ,MA.SERIAL_STATUS_ENABLED           AS SERIAL_STATUS_ENABLED
      ,MA.DEFAULT_SERIAL_STATUS_ID        AS DEFAULT_SERIAL_STATUS_ID
      ,MA.LOT_SPLIT_ENABLED               AS LOT_SPLIT_ENABLED
      ,MA.LOT_MERGE_ENABLED               AS LOT_MERGE_ENABLED
      ,MA.INVENTORY_CARRY_PENALTY         AS INVENTORY_CARRY_PENALTY
      ,MA.OPERATION_SLACK_PENALTY         AS OPERATION_SLACK_PENALTY
      ,MA.FINANCING_ALLOWED_FLAG          AS FINANCING_ALLOWED_FLAG
      ,MA.EAM_ITEM_TYPE                   AS EAM_ITEM_TYPE
      ,MA.EAM_ACTIVITY_TYPE_CODE          AS EAM_ACTIVITY_TYPE_CODE
      ,MA.EAM_ACTIVITY_CAUSE_CODE         AS EAM_ACTIVITY_CAUSE_CODE
      ,MA.EAM_ACT_NOTIFICATION_FLAG       AS EAM_ACT_NOTIFICATION_FLAG
      ,MA.EAM_ACT_SHUTDOWN_STATUS         AS EAM_ACT_SHUTDOWN_STATUS
      ,MA.DUAL_UOM_CONTROL                AS DUAL_UOM_CONTROL
      ,MA.SECONDARY_UOM_CODE              AS SECONDARY_UOM_CODE
      ,MA.DUAL_UOM_DEVIATION_HIGH         AS DUAL_UOM_DEVIATION_HIGH
      ,MA.DUAL_UOM_DEVIATION_LOW          AS DUAL_UOM_DEVIATION_LOW
      ,MA.CONTRACT_ITEM_TYPE_CODE         AS CONTRACT_ITEM_TYPE_CODE
      ,MA.SUBSCRIPTION_DEPEND_FLAG        AS SUBSCRIPTION_DEPEND_FLAG
      ,MA.SERV_REQ_ENABLED_CODE           AS SERV_REQ_ENABLED_CODE
      ,MA.SERV_BILLING_ENABLED_FLAG       AS SERV_BILLING_ENABLED_FLAG
      ,MA.SERV_IMPORTANCE_LEVEL           AS SERV_IMPORTANCE_LEVEL
      ,MA.PLANNED_INV_POINT_FLAG          AS PLANNED_INV_POINT_FLAG
      ,MA.LOT_TRANSLATE_ENABLED           AS LOT_TRANSLATE_ENABLED
      ,MA.DEFAULT_SO_SOURCE_TYPE          AS DEFAULT_SO_SOURCE_TYPE
      ,MA.CREATE_SUPPLY_FLAG              AS CREATE_SUPPLY_FLAG
      ,MA.SUBSTITUTION_WINDOW_CODE        AS SUBSTITUTION_WINDOW_CODE
      ,MA.SUBSTITUTION_WINDOW_DAYS        AS SUBSTITUTION_WINDOW_DAYS
      ,MA.IB_ITEM_INSTANCE_CLASS          AS IB_ITEM_INSTANCE_CLASS
      ,MA.CONFIG_MODEL_TYPE               AS CONFIG_MODEL_TYPE
      ,MA.LOT_SUBSTITUTION_ENABLED        AS LOT_SUBSTITUTION_ENABLED
      ,MA.MINIMUM_LICENSE_QUANTITY        AS MINIMUM_LICENSE_QUANTITY
      ,MA.EAM_ACTIVITY_SOURCE_CODE        AS EAM_ACTIVITY_SOURCE_CODE
      ,MA.LIFECYCLE_ID                    AS LIFECYCLE_ID
      ,MA.CURRENT_PHASE_ID                AS CURRENT_PHASE_ID
      ,MA.OBJECT_VERSION_NUMBER           AS OBJECT_VERSION_NUMBER
      ,MA.TRACKING_QUANTITY_IND           AS TRACKING_QUANTITY_IND
      ,MA.ONT_PRICING_QTY_SOURCE          AS ONT_PRICING_QTY_SOURCE
      ,MA.SECONDARY_DEFAULT_IND           AS SECONDARY_DEFAULT_IND
      ,MA.OPTION_SPECIFIC_SOURCED         AS OPTION_SPECIFIC_SOURCED
      ,MA.APPROVAL_STATUS                 AS APPROVAL_STATUS
      ,MA.VMI_MINIMUM_UNITS               AS VMI_MINIMUM_UNITS
      ,MA.VMI_MINIMUM_DAYS                AS VMI_MINIMUM_DAYS
      ,MA.VMI_MAXIMUM_UNITS               AS VMI_MAXIMUM_UNITS
      ,MA.VMI_MAXIMUM_DAYS                AS VMI_MAXIMUM_DAYS
      ,MA.VMI_FIXED_ORDER_QUANTITY        AS VMI_FIXED_ORDER_QUANTITY
      ,MA.SO_AUTHORIZATION_FLAG           AS SO_AUTHORIZATION_FLAG
      ,MA.CONSIGNED_FLAG                  AS CONSIGNED_FLAG
      ,MA.ASN_AUTOEXPIRE_FLAG             AS ASN_AUTOEXPIRE_FLAG
      ,MA.VMI_FORECAST_TYPE               AS VMI_FORECAST_TYPE
      ,MA.FORECAST_HORIZON                AS FORECAST_HORIZON
      ,MA.EXCLUDE_FROM_BUDGET_FLAG        AS EXCLUDE_FROM_BUDGET_FLAG
      ,MA.DAYS_TGT_INV_SUPPLY             AS DAYS_TGT_INV_SUPPLY
      ,MA.DAYS_TGT_INV_WINDOW             AS DAYS_TGT_INV_WINDOW
      ,MA.DAYS_MAX_INV_SUPPLY             AS DAYS_MAX_INV_SUPPLY
      ,MA.DAYS_MAX_INV_WINDOW             AS DAYS_MAX_INV_WINDOW
      ,MA.DRP_PLANNED_FLAG                AS DRP_PLANNED_FLAG
      ,MA.CRITICAL_COMPONENT_FLAG         AS CRITICAL_COMPONENT_FLAG
      ,MA.CONTINOUS_TRANSFER              AS CONTINOUS_TRANSFER
      ,MA.CONVERGENCE                     AS CONVERGENCE
      ,MA.DIVERGENCE                      AS DIVERGENCE
      ,MA.CONFIG_ORGS                     AS CONFIG_ORGS
      ,MA.CONFIG_MATCH                    AS CONFIG_MATCH
      ,MA.ATTRIBUTE16                     AS ATTRIBUTE16
      ,MA.ATTRIBUTE17                     AS ATTRIBUTE17
      ,MA.ATTRIBUTE18                     AS ATTRIBUTE18
      ,MA.ATTRIBUTE19                     AS ATTRIBUTE19
      ,MA.ATTRIBUTE20                     AS ATTRIBUTE20
      ,MA.ATTRIBUTE21                     AS ATTRIBUTE21
      ,MA.ATTRIBUTE22                     AS ATTRIBUTE22
      ,MA.ATTRIBUTE23                     AS ATTRIBUTE23
      ,MA.ATTRIBUTE24                     AS ATTRIBUTE24
      ,MA.ATTRIBUTE25                     AS ATTRIBUTE25
      ,MA.ATTRIBUTE26                     AS ATTRIBUTE26
      ,MA.ATTRIBUTE27                     AS ATTRIBUTE27
      ,MA.ATTRIBUTE28                     AS ATTRIBUTE28
      ,MA.ATTRIBUTE29                     AS ATTRIBUTE29
      ,MA.ATTRIBUTE30                     AS ATTRIBUTE30
      ,MA.CAS_NUMBER                      AS CAS_NUMBER
      ,MA.CHILD_LOT_FLAG                  AS CHILD_LOT_FLAG
      ,MA.CHILD_LOT_PREFIX                AS CHILD_LOT_PREFIX
      ,MA.CHILD_LOT_STARTING_NUMBER       AS CHILD_LOT_STARTING_NUMBER
      ,MA.CHILD_LOT_VALIDATION_FLAG       AS CHILD_LOT_VALIDATION_FLAG
      ,MA.COPY_LOT_ATTRIBUTE_FLAG         AS COPY_LOT_ATTRIBUTE_FLAG
      ,MA.DEFAULT_GRADE                   AS DEFAULT_GRADE
      ,MA.EXPIRATION_ACTION_CODE          AS EXPIRATION_ACTION_CODE
      ,MA.EXPIRATION_ACTION_INTERVAL      AS EXPIRATION_ACTION_INTERVAL
      ,MA.GRADE_CONTROL_FLAG              AS GRADE_CONTROL_FLAG
      ,MA.HAZARDOUS_MATERIAL_FLAG         AS HAZARDOUS_MATERIAL_FLAG
      ,MA.HOLD_DAYS                       AS HOLD_DAYS
      ,MA.LOT_DIVISIBLE_FLAG              AS LOT_DIVISIBLE_FLAG
      ,MA.MATURITY_DAYS                   AS MATURITY_DAYS
      ,MA.PARENT_CHILD_GENERATION_FLAG    AS PARENT_CHILD_GENERATION_FLAG
      ,MA.PROCESS_COSTING_ENABLED_FLAG    AS PROCESS_COSTING_ENABLED_FLAG
      ,MA.PROCESS_EXECUTION_ENABLED_FLAG  AS PROCESS_EXECUTION_ENABLED_FLAG
      ,MA.PROCESS_QUALITY_ENABLED_FLAG    AS PROCESS_QUALITY_ENABLED_FLAG
      ,MA.PROCESS_SUPPLY_LOCATOR_ID       AS PROCESS_SUPPLY_LOCATOR_ID
      ,MA.PROCESS_SUPPLY_SUBINVENTORY     AS PROCESS_SUPPLY_SUBINVENTORY
      ,MA.PROCESS_YIELD_LOCATOR_ID        AS PROCESS_YIELD_LOCATOR_ID
      ,MA.PROCESS_YIELD_SUBINVENTORY      AS PROCESS_YIELD_SUBINVENTORY
      ,MA.RECIPE_ENABLED_FLAG             AS RECIPE_ENABLED_FLAG
      ,MA.RETEST_INTERVAL                 AS RETEST_INTERVAL
      ,MA.CHARGE_PERIODICITY_CODE         AS CHARGE_PERIODICITY_CODE
      ,MA.REPAIR_LEADTIME                 AS REPAIR_LEADTIME
      ,MA.REPAIR_YIELD                    AS REPAIR_YIELD
      ,MA.PREPOSITION_POINT               AS PREPOSITION_POINT
      ,MA.REPAIR_PROGRAM                  AS REPAIR_PROGRAM
      ,MA.SUBCONTRACTING_COMPONENT        AS SUBCONTRACTING_COMPONENT
      ,MA.OUTSOURCED_ASSEMBLY             AS OUTSOURCED_ASSEMBLY
      ,MA.EGO_MASTER_ITEMS_DFF_CTX        AS EGO_MASTER_ITEMS_DFF_CTX
      ,MA.GDSN_OUTBOUND_ENABLED_FLAG      AS GDSN_OUTBOUND_ENABLED_FLAG
      ,MA.TRADE_ITEM_DESCRIPTOR           AS TRADE_ITEM_DESCRIPTOR
      ,MA.STYLE_ITEM_ID                   AS STYLE_ITEM_ID
      ,MA.STYLE_ITEM_FLAG                 AS STYLE_ITEM_FLAG
      ,MA.LAST_SUBMITTED_NIR_ID           AS LAST_SUBMITTED_NIR_ID
      ,MA.DEFAULT_MATERIAL_STATUS_ID      AS DEFAULT_MATERIAL_STATUS_ID
      ,MA.GLOBAL_ATTRIBUTE11              AS GLOBAL_ATTRIBUTE11
      ,MA.GLOBAL_ATTRIBUTE12              AS GLOBAL_ATTRIBUTE12
      ,MA.GLOBAL_ATTRIBUTE13              AS GLOBAL_ATTRIBUTE13
      ,MA.GLOBAL_ATTRIBUTE14              AS GLOBAL_ATTRIBUTE14
      ,MA.GLOBAL_ATTRIBUTE15              AS GLOBAL_ATTRIBUTE15
      ,MA.GLOBAL_ATTRIBUTE16              AS GLOBAL_ATTRIBUTE16
      ,MA.GLOBAL_ATTRIBUTE17              AS GLOBAL_ATTRIBUTE17
      ,MA.GLOBAL_ATTRIBUTE18              AS GLOBAL_ATTRIBUTE18
      ,MA.GLOBAL_ATTRIBUTE19              AS GLOBAL_ATTRIBUTE19
      ,MA.GLOBAL_ATTRIBUTE20              AS GLOBAL_ATTRIBUTE20
FROM STAGE.MTL_SYSTEM_ITEMS_B MA  
;


TRUNCATE TABLE ODS.MTL_SYSTEM_ITEMS_B;

INSERT /*+ append */ INTO ODS.MTL_SYSTEM_ITEMS_B (
      INVENTORY_ITEM_ID                       
      ,ORGANIZATION_ID                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,SUMMARY_FLAG                            
      ,ENABLED_FLAG                            
      ,START_DATE_ACTIVE                       
      ,END_DATE_ACTIVE                         
      ,DESCRIPTION                             
      ,BUYER_ID                                
      ,ACCOUNTING_RULE_ID                      
      ,INVOICING_RULE_ID                       
      ,SEGMENT1                                
      ,SEGMENT2                                
      ,SEGMENT3                                
      ,SEGMENT4                                
      ,SEGMENT5                                
      ,SEGMENT6                                
      ,SEGMENT7                                
      ,SEGMENT8                                
      ,SEGMENT9                                
      ,SEGMENT10                               
      ,SEGMENT11                               
      ,SEGMENT12                               
      ,SEGMENT13                               
      ,SEGMENT14                               
      ,SEGMENT15                               
      ,SEGMENT16                               
      ,SEGMENT17                               
      ,SEGMENT18                               
      ,SEGMENT19                               
      ,SEGMENT20                               
      ,ATTRIBUTE_CATEGORY                      
      ,ATTRIBUTE1                              
      ,ATTRIBUTE2                              
      ,ATTRIBUTE3                              
      ,ATTRIBUTE4                              
      ,ATTRIBUTE5                              
      ,ATTRIBUTE6                              
      ,ATTRIBUTE7                              
      ,ATTRIBUTE8                              
      ,ATTRIBUTE9                              
      ,ATTRIBUTE10                             
      ,ATTRIBUTE11                             
      ,ATTRIBUTE12                             
      ,ATTRIBUTE13                             
      ,ATTRIBUTE14                             
      ,ATTRIBUTE15                             
      ,PURCHASING_ITEM_FLAG                    
      ,SHIPPABLE_ITEM_FLAG                     
      ,CUSTOMER_ORDER_FLAG                     
      ,INTERNAL_ORDER_FLAG                     
      ,SERVICE_ITEM_FLAG                       
      ,INVENTORY_ITEM_FLAG                     
      ,ENG_ITEM_FLAG                           
      ,INVENTORY_ASSET_FLAG                    
      ,PURCHASING_ENABLED_FLAG                 
      ,CUSTOMER_ORDER_ENABLED_FLAG             
      ,INTERNAL_ORDER_ENABLED_FLAG             
      ,SO_TRANSACTIONS_FLAG                    
      ,MTL_TRANSACTIONS_ENABLED_FLAG           
      ,STOCK_ENABLED_FLAG                      
      ,BOM_ENABLED_FLAG                        
      ,BUILD_IN_WIP_FLAG                       
      ,REVISION_QTY_CONTROL_CODE               
      ,ITEM_CATALOG_GROUP_ID                   
      ,CATALOG_STATUS_FLAG                     
      ,RETURNABLE_FLAG                         
      ,DEFAULT_SHIPPING_ORG                    
      ,COLLATERAL_FLAG                         
      ,TAXABLE_FLAG                            
      ,QTY_RCV_EXCEPTION_CODE                  
      ,ALLOW_ITEM_DESC_UPDATE_FLAG             
      ,INSPECTION_REQUIRED_FLAG                
      ,RECEIPT_REQUIRED_FLAG                   
      ,MARKET_PRICE                            
      ,HAZARD_CLASS_ID                         
      ,RFQ_REQUIRED_FLAG                       
      ,QTY_RCV_TOLERANCE                       
      ,LIST_PRICE_PER_UNIT                     
      ,UN_NUMBER_ID                            
      ,PRICE_TOLERANCE_PERCENT                 
      ,ASSET_CATEGORY_ID                       
      ,ROUNDING_FACTOR                         
      ,UNIT_OF_ISSUE                           
      ,ENFORCE_SHIP_TO_LOCATION_CODE           
      ,ALLOW_SUBSTITUTE_RECEIPTS_FLAG          
      ,ALLOW_UNORDERED_RECEIPTS_FLAG           
      ,ALLOW_EXPRESS_DELIVERY_FLAG             
      ,DAYS_EARLY_RECEIPT_ALLOWED              
      ,DAYS_LATE_RECEIPT_ALLOWED               
      ,RECEIPT_DAYS_EXCEPTION_CODE             
      ,RECEIVING_ROUTING_ID                    
      ,INVOICE_CLOSE_TOLERANCE                 
      ,RECEIVE_CLOSE_TOLERANCE                 
      ,AUTO_LOT_ALPHA_PREFIX                   
      ,START_AUTO_LOT_NUMBER                   
      ,LOT_CONTROL_CODE                        
      ,SHELF_LIFE_CODE                         
      ,SHELF_LIFE_DAYS                         
      ,SERIAL_NUMBER_CONTROL_CODE              
      ,START_AUTO_SERIAL_NUMBER                
      ,AUTO_SERIAL_ALPHA_PREFIX                
      ,SOURCE_TYPE                             
      ,SOURCE_ORGANIZATION_ID                  
      ,SOURCE_SUBINVENTORY                     
      ,EXPENSE_ACCOUNT                         
      ,ENCUMBRANCE_ACCOUNT                     
      ,RESTRICT_SUBINVENTORIES_CODE            
      ,UNIT_WEIGHT                             
      ,WEIGHT_UOM_CODE                         
      ,VOLUME_UOM_CODE                         
      ,UNIT_VOLUME                             
      ,RESTRICT_LOCATORS_CODE                  
      ,LOCATION_CONTROL_CODE                   
      ,SHRINKAGE_RATE                          
      ,ACCEPTABLE_EARLY_DAYS                   
      ,PLANNING_TIME_FENCE_CODE                
      ,DEMAND_TIME_FENCE_CODE                  
      ,LEAD_TIME_LOT_SIZE                      
      ,STD_LOT_SIZE                            
      ,CUM_MANUFACTURING_LEAD_TIME             
      ,OVERRUN_PERCENTAGE                      
      ,MRP_CALCULATE_ATP_FLAG                  
      ,ACCEPTABLE_RATE_INCREASE                
      ,ACCEPTABLE_RATE_DECREASE                
      ,CUMULATIVE_TOTAL_LEAD_TIME              
      ,PLANNING_TIME_FENCE_DAYS                
      ,DEMAND_TIME_FENCE_DAYS                  
      ,END_ASSEMBLY_PEGGING_FLAG               
      ,REPETITIVE_PLANNING_FLAG                
      ,PLANNING_EXCEPTION_SET                  
      ,BOM_ITEM_TYPE                           
      ,PICK_COMPONENTS_FLAG                    
      ,REPLENISH_TO_ORDER_FLAG                 
      ,BASE_ITEM_ID                            
      ,ATP_COMPONENTS_FLAG                     
      ,ATP_FLAG                                
      ,FIXED_LEAD_TIME                         
      ,VARIABLE_LEAD_TIME                      
      ,WIP_SUPPLY_LOCATOR_ID                   
      ,WIP_SUPPLY_TYPE                         
      ,WIP_SUPPLY_SUBINVENTORY                 
      ,PRIMARY_UOM_CODE                        
      ,PRIMARY_UNIT_OF_MEASURE                 
      ,ALLOWED_UNITS_LOOKUP_CODE               
      ,COST_OF_SALES_ACCOUNT                   
      ,SALES_ACCOUNT                           
      ,DEFAULT_INCLUDE_IN_ROLLUP_FLAG          
      ,INVENTORY_ITEM_STATUS_CODE              
      ,INVENTORY_PLANNING_CODE                 
      ,PLANNER_CODE                            
      ,PLANNING_MAKE_BUY_CODE                  
      ,FIXED_LOT_MULTIPLIER                    
      ,ROUNDING_CONTROL_TYPE                   
      ,CARRYING_COST                           
      ,POSTPROCESSING_LEAD_TIME                
      ,PREPROCESSING_LEAD_TIME                 
      ,FULL_LEAD_TIME                          
      ,ORDER_COST                              
      ,MRP_SAFETY_STOCK_PERCENT                
      ,MRP_SAFETY_STOCK_CODE                   
      ,MIN_MINMAX_QUANTITY                     
      ,MAX_MINMAX_QUANTITY                     
      ,MINIMUM_ORDER_QUANTITY                  
      ,FIXED_ORDER_QUANTITY                    
      ,FIXED_DAYS_SUPPLY                       
      ,MAXIMUM_ORDER_QUANTITY                  
      ,ATP_RULE_ID                             
      ,PICKING_RULE_ID                         
      ,RESERVABLE_TYPE                         
      ,POSITIVE_MEASUREMENT_ERROR              
      ,NEGATIVE_MEASUREMENT_ERROR              
      ,ENGINEERING_ECN_CODE                    
      ,ENGINEERING_ITEM_ID                     
      ,ENGINEERING_DATE                        
      ,SERVICE_STARTING_DELAY                  
      ,VENDOR_WARRANTY_FLAG                    
      ,SERVICEABLE_COMPONENT_FLAG              
      ,SERVICEABLE_PRODUCT_FLAG                
      ,BASE_WARRANTY_SERVICE_ID                
      ,PAYMENT_TERMS_ID                        
      ,PREVENTIVE_MAINTENANCE_FLAG             
      ,PRIMARY_SPECIALIST_ID                   
      ,SECONDARY_SPECIALIST_ID                 
      ,SERVICEABLE_ITEM_CLASS_ID               
      ,TIME_BILLABLE_FLAG                      
      ,MATERIAL_BILLABLE_FLAG                  
      ,EXPENSE_BILLABLE_FLAG                   
      ,PRORATE_SERVICE_FLAG                    
      ,COVERAGE_SCHEDULE_ID                    
      ,SERVICE_DURATION_PERIOD_CODE            
      ,SERVICE_DURATION                        
      ,WARRANTY_VENDOR_ID                      
      ,MAX_WARRANTY_AMOUNT                     
      ,RESPONSE_TIME_PERIOD_CODE               
      ,RESPONSE_TIME_VALUE                     
      ,NEW_REVISION_CODE                       
      ,INVOICEABLE_ITEM_FLAG                   
      ,TAX_CODE                                
      ,INVOICE_ENABLED_FLAG                    
      ,MUST_USE_APPROVED_VENDOR_FLAG           
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,OUTSIDE_OPERATION_FLAG                  
      ,OUTSIDE_OPERATION_UOM_TYPE              
      ,SAFETY_STOCK_BUCKET_DAYS                
      ,AUTO_REDUCE_MPS                         
      ,COSTING_ENABLED_FLAG                    
      ,AUTO_CREATED_CONFIG_FLAG                
      ,CYCLE_COUNT_ENABLED_FLAG                
      ,ITEM_TYPE                               
      ,MODEL_CONFIG_CLAUSE_NAME                
      ,SHIP_MODEL_COMPLETE_FLAG                
      ,MRP_PLANNING_CODE                       
      ,RETURN_INSPECTION_REQUIREMENT           
      ,ATO_FORECAST_CONTROL                    
      ,RELEASE_TIME_FENCE_CODE                 
      ,RELEASE_TIME_FENCE_DAYS                 
      ,CONTAINER_ITEM_FLAG                     
      ,VEHICLE_ITEM_FLAG                       
      ,MAXIMUM_LOAD_WEIGHT                     
      ,MINIMUM_FILL_PERCENT                    
      ,CONTAINER_TYPE_CODE                     
      ,INTERNAL_VOLUME                         
      ,WH_UPDATE_DATE                          
      ,PRODUCT_FAMILY_ITEM_ID                  
      ,GLOBAL_ATTRIBUTE_CATEGORY               
      ,GLOBAL_ATTRIBUTE1                       
      ,GLOBAL_ATTRIBUTE2                       
      ,GLOBAL_ATTRIBUTE3                       
      ,GLOBAL_ATTRIBUTE4                       
      ,GLOBAL_ATTRIBUTE5                       
      ,GLOBAL_ATTRIBUTE6                       
      ,GLOBAL_ATTRIBUTE7                       
      ,GLOBAL_ATTRIBUTE8                       
      ,GLOBAL_ATTRIBUTE9                       
      ,GLOBAL_ATTRIBUTE10                      
      ,PURCHASING_TAX_CODE                     
      ,OVERCOMPLETION_TOLERANCE_TYPE           
      ,OVERCOMPLETION_TOLERANCE_VALUE          
      ,EFFECTIVITY_CONTROL                     
      ,CHECK_SHORTAGES_FLAG                    
      ,OVER_SHIPMENT_TOLERANCE                 
      ,UNDER_SHIPMENT_TOLERANCE                
      ,OVER_RETURN_TOLERANCE                   
      ,UNDER_RETURN_TOLERANCE                  
      ,EQUIPMENT_TYPE                          
      ,RECOVERED_PART_DISP_CODE                
      ,DEFECT_TRACKING_ON_FLAG                 
      ,USAGE_ITEM_FLAG                         
      ,EVENT_FLAG                              
      ,ELECTRONIC_FLAG                         
      ,DOWNLOADABLE_FLAG                       
      ,VOL_DISCOUNT_EXEMPT_FLAG                
      ,COUPON_EXEMPT_FLAG                      
      ,COMMS_NL_TRACKABLE_FLAG                 
      ,ASSET_CREATION_CODE                     
      ,COMMS_ACTIVATION_REQD_FLAG              
      ,ORDERABLE_ON_WEB_FLAG                   
      ,BACK_ORDERABLE_FLAG                     
      ,WEB_STATUS                              
      ,INDIVISIBLE_FLAG                        
      ,DIMENSION_UOM_CODE                      
      ,UNIT_LENGTH                             
      ,UNIT_WIDTH                              
      ,UNIT_HEIGHT                             
      ,BULK_PICKED_FLAG                        
      ,LOT_STATUS_ENABLED                      
      ,DEFAULT_LOT_STATUS_ID                   
      ,SERIAL_STATUS_ENABLED                   
      ,DEFAULT_SERIAL_STATUS_ID                
      ,LOT_SPLIT_ENABLED                       
      ,LOT_MERGE_ENABLED                       
      ,INVENTORY_CARRY_PENALTY                 
      ,OPERATION_SLACK_PENALTY                 
      ,FINANCING_ALLOWED_FLAG                  
      ,EAM_ITEM_TYPE                           
      ,EAM_ACTIVITY_TYPE_CODE                  
      ,EAM_ACTIVITY_CAUSE_CODE                 
      ,EAM_ACT_NOTIFICATION_FLAG               
      ,EAM_ACT_SHUTDOWN_STATUS                 
      ,DUAL_UOM_CONTROL                        
      ,SECONDARY_UOM_CODE                      
      ,DUAL_UOM_DEVIATION_HIGH                 
      ,DUAL_UOM_DEVIATION_LOW                  
      ,CONTRACT_ITEM_TYPE_CODE                 
      ,SUBSCRIPTION_DEPEND_FLAG                
      ,SERV_REQ_ENABLED_CODE                   
      ,SERV_BILLING_ENABLED_FLAG               
      ,SERV_IMPORTANCE_LEVEL                   
      ,PLANNED_INV_POINT_FLAG                  
      ,LOT_TRANSLATE_ENABLED                   
      ,DEFAULT_SO_SOURCE_TYPE                  
      ,CREATE_SUPPLY_FLAG                      
      ,SUBSTITUTION_WINDOW_CODE                
      ,SUBSTITUTION_WINDOW_DAYS                
      ,IB_ITEM_INSTANCE_CLASS                  
      ,CONFIG_MODEL_TYPE                       
      ,LOT_SUBSTITUTION_ENABLED                
      ,MINIMUM_LICENSE_QUANTITY                
      ,EAM_ACTIVITY_SOURCE_CODE                
      ,LIFECYCLE_ID                            
      ,CURRENT_PHASE_ID                        
      ,OBJECT_VERSION_NUMBER                   
      ,TRACKING_QUANTITY_IND                   
      ,ONT_PRICING_QTY_SOURCE                  
      ,SECONDARY_DEFAULT_IND                   
      ,OPTION_SPECIFIC_SOURCED                 
      ,APPROVAL_STATUS                         
      ,VMI_MINIMUM_UNITS                       
      ,VMI_MINIMUM_DAYS                        
      ,VMI_MAXIMUM_UNITS                       
      ,VMI_MAXIMUM_DAYS                        
      ,VMI_FIXED_ORDER_QUANTITY                
      ,SO_AUTHORIZATION_FLAG                   
      ,CONSIGNED_FLAG                          
      ,ASN_AUTOEXPIRE_FLAG                     
      ,VMI_FORECAST_TYPE                       
      ,FORECAST_HORIZON                        
      ,EXCLUDE_FROM_BUDGET_FLAG                
      ,DAYS_TGT_INV_SUPPLY                     
      ,DAYS_TGT_INV_WINDOW                     
      ,DAYS_MAX_INV_SUPPLY                     
      ,DAYS_MAX_INV_WINDOW                     
      ,DRP_PLANNED_FLAG                        
      ,CRITICAL_COMPONENT_FLAG                 
      ,CONTINOUS_TRANSFER                      
      ,CONVERGENCE                             
      ,DIVERGENCE                              
      ,CONFIG_ORGS                             
      ,CONFIG_MATCH                            
      ,ATTRIBUTE16                             
      ,ATTRIBUTE17                             
      ,ATTRIBUTE18                             
      ,ATTRIBUTE19                             
      ,ATTRIBUTE20                             
      ,ATTRIBUTE21                             
      ,ATTRIBUTE22                             
      ,ATTRIBUTE23                             
      ,ATTRIBUTE24                             
      ,ATTRIBUTE25                             
      ,ATTRIBUTE26                             
      ,ATTRIBUTE27                             
      ,ATTRIBUTE28                             
      ,ATTRIBUTE29                             
      ,ATTRIBUTE30                             
      ,CAS_NUMBER                              
      ,CHILD_LOT_FLAG                          
      ,CHILD_LOT_PREFIX                        
      ,CHILD_LOT_STARTING_NUMBER               
      ,CHILD_LOT_VALIDATION_FLAG               
      ,COPY_LOT_ATTRIBUTE_FLAG                 
      ,DEFAULT_GRADE                           
      ,EXPIRATION_ACTION_CODE                  
      ,EXPIRATION_ACTION_INTERVAL              
      ,GRADE_CONTROL_FLAG                      
      ,HAZARDOUS_MATERIAL_FLAG                 
      ,HOLD_DAYS                               
      ,LOT_DIVISIBLE_FLAG                      
      ,MATURITY_DAYS                           
      ,PARENT_CHILD_GENERATION_FLAG            
      ,PROCESS_COSTING_ENABLED_FLAG            
      ,PROCESS_EXECUTION_ENABLED_FLAG          
      ,PROCESS_QUALITY_ENABLED_FLAG            
      ,PROCESS_SUPPLY_LOCATOR_ID               
      ,PROCESS_SUPPLY_SUBINVENTORY             
      ,PROCESS_YIELD_LOCATOR_ID                
      ,PROCESS_YIELD_SUBINVENTORY              
      ,RECIPE_ENABLED_FLAG                     
      ,RETEST_INTERVAL                         
      ,CHARGE_PERIODICITY_CODE                 
      ,REPAIR_LEADTIME                         
      ,REPAIR_YIELD                            
      ,PREPOSITION_POINT                       
      ,REPAIR_PROGRAM                          
      ,SUBCONTRACTING_COMPONENT                
      ,OUTSOURCED_ASSEMBLY                     
      ,EGO_MASTER_ITEMS_DFF_CTX                
      ,GDSN_OUTBOUND_ENABLED_FLAG              
      ,TRADE_ITEM_DESCRIPTOR                   
      ,STYLE_ITEM_ID                           
      ,STYLE_ITEM_FLAG                         
      ,LAST_SUBMITTED_NIR_ID                   
      ,DEFAULT_MATERIAL_STATUS_ID              
      ,GLOBAL_ATTRIBUTE11                      
      ,GLOBAL_ATTRIBUTE12                      
      ,GLOBAL_ATTRIBUTE13                      
      ,GLOBAL_ATTRIBUTE14                      
      ,GLOBAL_ATTRIBUTE15                      
      ,GLOBAL_ATTRIBUTE16                      
      ,GLOBAL_ATTRIBUTE17                      
      ,GLOBAL_ATTRIBUTE18                      
      ,GLOBAL_ATTRIBUTE19                      
      ,GLOBAL_ATTRIBUTE20                      
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.INVENTORY_ITEM_ID                    
      ,MA.ORGANIZATION_ID                      
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.CREATION_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.SUMMARY_FLAG                         
      ,MA.ENABLED_FLAG                         
      ,MA.START_DATE_ACTIVE                    
      ,MA.END_DATE_ACTIVE                      
      ,MA.DESCRIPTION                          
      ,MA.BUYER_ID                             
      ,MA.ACCOUNTING_RULE_ID                   
      ,MA.INVOICING_RULE_ID                    
      ,MA.SEGMENT1                             
      ,MA.SEGMENT2                             
      ,MA.SEGMENT3                             
      ,MA.SEGMENT4                             
      ,MA.SEGMENT5                             
      ,MA.SEGMENT6                             
      ,MA.SEGMENT7                             
      ,MA.SEGMENT8                             
      ,MA.SEGMENT9                             
      ,MA.SEGMENT10                            
      ,MA.SEGMENT11                            
      ,MA.SEGMENT12                            
      ,MA.SEGMENT13                            
      ,MA.SEGMENT14                            
      ,MA.SEGMENT15                            
      ,MA.SEGMENT16                            
      ,MA.SEGMENT17                            
      ,MA.SEGMENT18                            
      ,MA.SEGMENT19                            
      ,MA.SEGMENT20                            
      ,MA.ATTRIBUTE_CATEGORY                   
      ,MA.ATTRIBUTE1                           
      ,MA.ATTRIBUTE2                           
      ,MA.ATTRIBUTE3                           
      ,MA.ATTRIBUTE4                           
      ,MA.ATTRIBUTE5                           
      ,MA.ATTRIBUTE6                           
      ,MA.ATTRIBUTE7                           
      ,MA.ATTRIBUTE8                           
      ,MA.ATTRIBUTE9                           
      ,MA.ATTRIBUTE10                          
      ,MA.ATTRIBUTE11                          
      ,MA.ATTRIBUTE12                          
      ,MA.ATTRIBUTE13                          
      ,MA.ATTRIBUTE14                          
      ,MA.ATTRIBUTE15                          
      ,MA.PURCHASING_ITEM_FLAG                 
      ,MA.SHIPPABLE_ITEM_FLAG                  
      ,MA.CUSTOMER_ORDER_FLAG                  
      ,MA.INTERNAL_ORDER_FLAG                  
      ,MA.SERVICE_ITEM_FLAG                    
      ,MA.INVENTORY_ITEM_FLAG                  
      ,MA.ENG_ITEM_FLAG                        
      ,MA.INVENTORY_ASSET_FLAG                 
      ,MA.PURCHASING_ENABLED_FLAG              
      ,MA.CUSTOMER_ORDER_ENABLED_FLAG          
      ,MA.INTERNAL_ORDER_ENABLED_FLAG          
      ,MA.SO_TRANSACTIONS_FLAG                 
      ,MA.MTL_TRANSACTIONS_ENABLED_FLAG        
      ,MA.STOCK_ENABLED_FLAG                   
      ,MA.BOM_ENABLED_FLAG                     
      ,MA.BUILD_IN_WIP_FLAG                    
      ,MA.REVISION_QTY_CONTROL_CODE            
      ,MA.ITEM_CATALOG_GROUP_ID                
      ,MA.CATALOG_STATUS_FLAG                  
      ,MA.RETURNABLE_FLAG                      
      ,MA.DEFAULT_SHIPPING_ORG                 
      ,MA.COLLATERAL_FLAG                      
      ,MA.TAXABLE_FLAG                         
      ,MA.QTY_RCV_EXCEPTION_CODE               
      ,MA.ALLOW_ITEM_DESC_UPDATE_FLAG          
      ,MA.INSPECTION_REQUIRED_FLAG             
      ,MA.RECEIPT_REQUIRED_FLAG                
      ,MA.MARKET_PRICE                         
      ,MA.HAZARD_CLASS_ID                      
      ,MA.RFQ_REQUIRED_FLAG                    
      ,MA.QTY_RCV_TOLERANCE                    
      ,MA.LIST_PRICE_PER_UNIT                  
      ,MA.UN_NUMBER_ID                         
      ,MA.PRICE_TOLERANCE_PERCENT              
      ,MA.ASSET_CATEGORY_ID                    
      ,MA.ROUNDING_FACTOR                      
      ,MA.UNIT_OF_ISSUE                        
      ,MA.ENFORCE_SHIP_TO_LOCATION_CODE        
      ,MA.ALLOW_SUBSTITUTE_RECEIPTS_FLAG       
      ,MA.ALLOW_UNORDERED_RECEIPTS_FLAG        
      ,MA.ALLOW_EXPRESS_DELIVERY_FLAG          
      ,MA.DAYS_EARLY_RECEIPT_ALLOWED           
      ,MA.DAYS_LATE_RECEIPT_ALLOWED            
      ,MA.RECEIPT_DAYS_EXCEPTION_CODE          
      ,MA.RECEIVING_ROUTING_ID                 
      ,MA.INVOICE_CLOSE_TOLERANCE              
      ,MA.RECEIVE_CLOSE_TOLERANCE              
      ,MA.AUTO_LOT_ALPHA_PREFIX                
      ,MA.START_AUTO_LOT_NUMBER                
      ,MA.LOT_CONTROL_CODE                     
      ,MA.SHELF_LIFE_CODE                      
      ,MA.SHELF_LIFE_DAYS                      
      ,MA.SERIAL_NUMBER_CONTROL_CODE           
      ,MA.START_AUTO_SERIAL_NUMBER             
      ,MA.AUTO_SERIAL_ALPHA_PREFIX             
      ,MA.SOURCE_TYPE                          
      ,MA.SOURCE_ORGANIZATION_ID               
      ,MA.SOURCE_SUBINVENTORY                  
      ,MA.EXPENSE_ACCOUNT                      
      ,MA.ENCUMBRANCE_ACCOUNT                  
      ,MA.RESTRICT_SUBINVENTORIES_CODE         
      ,MA.UNIT_WEIGHT                          
      ,MA.WEIGHT_UOM_CODE                      
      ,MA.VOLUME_UOM_CODE                      
      ,MA.UNIT_VOLUME                          
      ,MA.RESTRICT_LOCATORS_CODE               
      ,MA.LOCATION_CONTROL_CODE                
      ,MA.SHRINKAGE_RATE                       
      ,MA.ACCEPTABLE_EARLY_DAYS                
      ,MA.PLANNING_TIME_FENCE_CODE             
      ,MA.DEMAND_TIME_FENCE_CODE               
      ,MA.LEAD_TIME_LOT_SIZE                   
      ,MA.STD_LOT_SIZE                         
      ,MA.CUM_MANUFACTURING_LEAD_TIME          
      ,MA.OVERRUN_PERCENTAGE                   
      ,MA.MRP_CALCULATE_ATP_FLAG               
      ,MA.ACCEPTABLE_RATE_INCREASE             
      ,MA.ACCEPTABLE_RATE_DECREASE             
      ,MA.CUMULATIVE_TOTAL_LEAD_TIME           
      ,MA.PLANNING_TIME_FENCE_DAYS             
      ,MA.DEMAND_TIME_FENCE_DAYS               
      ,MA.END_ASSEMBLY_PEGGING_FLAG            
      ,MA.REPETITIVE_PLANNING_FLAG             
      ,MA.PLANNING_EXCEPTION_SET               
      ,MA.BOM_ITEM_TYPE                        
      ,MA.PICK_COMPONENTS_FLAG                 
      ,MA.REPLENISH_TO_ORDER_FLAG              
      ,MA.BASE_ITEM_ID                         
      ,MA.ATP_COMPONENTS_FLAG                  
      ,MA.ATP_FLAG                             
      ,MA.FIXED_LEAD_TIME                      
      ,MA.VARIABLE_LEAD_TIME                   
      ,MA.WIP_SUPPLY_LOCATOR_ID                
      ,MA.WIP_SUPPLY_TYPE                      
      ,MA.WIP_SUPPLY_SUBINVENTORY              
      ,MA.PRIMARY_UOM_CODE                     
      ,MA.PRIMARY_UNIT_OF_MEASURE              
      ,MA.ALLOWED_UNITS_LOOKUP_CODE            
      ,MA.COST_OF_SALES_ACCOUNT                
      ,MA.SALES_ACCOUNT                        
      ,MA.DEFAULT_INCLUDE_IN_ROLLUP_FLAG       
      ,MA.INVENTORY_ITEM_STATUS_CODE           
      ,MA.INVENTORY_PLANNING_CODE              
      ,MA.PLANNER_CODE                         
      ,MA.PLANNING_MAKE_BUY_CODE               
      ,MA.FIXED_LOT_MULTIPLIER                 
      ,MA.ROUNDING_CONTROL_TYPE                
      ,MA.CARRYING_COST                        
      ,MA.POSTPROCESSING_LEAD_TIME             
      ,MA.PREPROCESSING_LEAD_TIME              
      ,MA.FULL_LEAD_TIME                       
      ,MA.ORDER_COST                           
      ,MA.MRP_SAFETY_STOCK_PERCENT             
      ,MA.MRP_SAFETY_STOCK_CODE                
      ,MA.MIN_MINMAX_QUANTITY                  
      ,MA.MAX_MINMAX_QUANTITY                  
      ,MA.MINIMUM_ORDER_QUANTITY               
      ,MA.FIXED_ORDER_QUANTITY                 
      ,MA.FIXED_DAYS_SUPPLY                    
      ,MA.MAXIMUM_ORDER_QUANTITY               
      ,MA.ATP_RULE_ID                          
      ,MA.PICKING_RULE_ID                      
      ,MA.RESERVABLE_TYPE                      
      ,MA.POSITIVE_MEASUREMENT_ERROR           
      ,MA.NEGATIVE_MEASUREMENT_ERROR           
      ,MA.ENGINEERING_ECN_CODE                 
      ,MA.ENGINEERING_ITEM_ID                  
      ,MA.ENGINEERING_DATE                     
      ,MA.SERVICE_STARTING_DELAY               
      ,MA.VENDOR_WARRANTY_FLAG                 
      ,MA.SERVICEABLE_COMPONENT_FLAG           
      ,MA.SERVICEABLE_PRODUCT_FLAG             
      ,MA.BASE_WARRANTY_SERVICE_ID             
      ,MA.PAYMENT_TERMS_ID                     
      ,MA.PREVENTIVE_MAINTENANCE_FLAG          
      ,MA.PRIMARY_SPECIALIST_ID                
      ,MA.SECONDARY_SPECIALIST_ID              
      ,MA.SERVICEABLE_ITEM_CLASS_ID            
      ,MA.TIME_BILLABLE_FLAG                   
      ,MA.MATERIAL_BILLABLE_FLAG               
      ,MA.EXPENSE_BILLABLE_FLAG                
      ,MA.PRORATE_SERVICE_FLAG                 
      ,MA.COVERAGE_SCHEDULE_ID                 
      ,MA.SERVICE_DURATION_PERIOD_CODE         
      ,MA.SERVICE_DURATION                     
      ,MA.WARRANTY_VENDOR_ID                   
      ,MA.MAX_WARRANTY_AMOUNT                  
      ,MA.RESPONSE_TIME_PERIOD_CODE            
      ,MA.RESPONSE_TIME_VALUE                  
      ,MA.NEW_REVISION_CODE                    
      ,MA.INVOICEABLE_ITEM_FLAG                
      ,MA.TAX_CODE                             
      ,MA.INVOICE_ENABLED_FLAG                 
      ,MA.MUST_USE_APPROVED_VENDOR_FLAG        
      ,MA.REQUEST_ID                           
      ,MA.PROGRAM_APPLICATION_ID               
      ,MA.PROGRAM_ID                           
      ,MA.PROGRAM_UPDATE_DATE                  
      ,MA.OUTSIDE_OPERATION_FLAG               
      ,MA.OUTSIDE_OPERATION_UOM_TYPE           
      ,MA.SAFETY_STOCK_BUCKET_DAYS             
      ,MA.AUTO_REDUCE_MPS                      
      ,MA.COSTING_ENABLED_FLAG                 
      ,MA.AUTO_CREATED_CONFIG_FLAG             
      ,MA.CYCLE_COUNT_ENABLED_FLAG             
      ,MA.ITEM_TYPE                            
      ,MA.MODEL_CONFIG_CLAUSE_NAME             
      ,MA.SHIP_MODEL_COMPLETE_FLAG             
      ,MA.MRP_PLANNING_CODE                    
      ,MA.RETURN_INSPECTION_REQUIREMENT        
      ,MA.ATO_FORECAST_CONTROL                 
      ,MA.RELEASE_TIME_FENCE_CODE              
      ,MA.RELEASE_TIME_FENCE_DAYS              
      ,MA.CONTAINER_ITEM_FLAG                  
      ,MA.VEHICLE_ITEM_FLAG                    
      ,MA.MAXIMUM_LOAD_WEIGHT                  
      ,MA.MINIMUM_FILL_PERCENT                 
      ,MA.CONTAINER_TYPE_CODE                  
      ,MA.INTERNAL_VOLUME                      
      ,MA.WH_UPDATE_DATE                       
      ,MA.PRODUCT_FAMILY_ITEM_ID               
      ,MA.GLOBAL_ATTRIBUTE_CATEGORY            
      ,MA.GLOBAL_ATTRIBUTE1                    
      ,MA.GLOBAL_ATTRIBUTE2                    
      ,MA.GLOBAL_ATTRIBUTE3                    
      ,MA.GLOBAL_ATTRIBUTE4                    
      ,MA.GLOBAL_ATTRIBUTE5                    
      ,MA.GLOBAL_ATTRIBUTE6                    
      ,MA.GLOBAL_ATTRIBUTE7                    
      ,MA.GLOBAL_ATTRIBUTE8                    
      ,MA.GLOBAL_ATTRIBUTE9                    
      ,MA.GLOBAL_ATTRIBUTE10                   
      ,MA.PURCHASING_TAX_CODE                  
      ,MA.OVERCOMPLETION_TOLERANCE_TYPE        
      ,MA.OVERCOMPLETION_TOLERANCE_VALUE       
      ,MA.EFFECTIVITY_CONTROL                  
      ,MA.CHECK_SHORTAGES_FLAG                 
      ,MA.OVER_SHIPMENT_TOLERANCE              
      ,MA.UNDER_SHIPMENT_TOLERANCE             
      ,MA.OVER_RETURN_TOLERANCE                
      ,MA.UNDER_RETURN_TOLERANCE               
      ,MA.EQUIPMENT_TYPE                       
      ,MA.RECOVERED_PART_DISP_CODE             
      ,MA.DEFECT_TRACKING_ON_FLAG              
      ,MA.USAGE_ITEM_FLAG                      
      ,MA.EVENT_FLAG                           
      ,MA.ELECTRONIC_FLAG                      
      ,MA.DOWNLOADABLE_FLAG                    
      ,MA.VOL_DISCOUNT_EXEMPT_FLAG             
      ,MA.COUPON_EXEMPT_FLAG                   
      ,MA.COMMS_NL_TRACKABLE_FLAG              
      ,MA.ASSET_CREATION_CODE                  
      ,MA.COMMS_ACTIVATION_REQD_FLAG           
      ,MA.ORDERABLE_ON_WEB_FLAG                
      ,MA.BACK_ORDERABLE_FLAG                  
      ,MA.WEB_STATUS                           
      ,MA.INDIVISIBLE_FLAG                     
      ,MA.DIMENSION_UOM_CODE                   
      ,MA.UNIT_LENGTH                          
      ,MA.UNIT_WIDTH                           
      ,MA.UNIT_HEIGHT                          
      ,MA.BULK_PICKED_FLAG                     
      ,MA.LOT_STATUS_ENABLED                   
      ,MA.DEFAULT_LOT_STATUS_ID                
      ,MA.SERIAL_STATUS_ENABLED                
      ,MA.DEFAULT_SERIAL_STATUS_ID             
      ,MA.LOT_SPLIT_ENABLED                    
      ,MA.LOT_MERGE_ENABLED                    
      ,MA.INVENTORY_CARRY_PENALTY              
      ,MA.OPERATION_SLACK_PENALTY              
      ,MA.FINANCING_ALLOWED_FLAG               
      ,MA.EAM_ITEM_TYPE                        
      ,MA.EAM_ACTIVITY_TYPE_CODE               
      ,MA.EAM_ACTIVITY_CAUSE_CODE              
      ,MA.EAM_ACT_NOTIFICATION_FLAG            
      ,MA.EAM_ACT_SHUTDOWN_STATUS              
      ,MA.DUAL_UOM_CONTROL                     
      ,MA.SECONDARY_UOM_CODE                   
      ,MA.DUAL_UOM_DEVIATION_HIGH              
      ,MA.DUAL_UOM_DEVIATION_LOW               
      ,MA.CONTRACT_ITEM_TYPE_CODE              
      ,MA.SUBSCRIPTION_DEPEND_FLAG             
      ,MA.SERV_REQ_ENABLED_CODE                
      ,MA.SERV_BILLING_ENABLED_FLAG            
      ,MA.SERV_IMPORTANCE_LEVEL                
      ,MA.PLANNED_INV_POINT_FLAG               
      ,MA.LOT_TRANSLATE_ENABLED                
      ,MA.DEFAULT_SO_SOURCE_TYPE               
      ,MA.CREATE_SUPPLY_FLAG                   
      ,MA.SUBSTITUTION_WINDOW_CODE             
      ,MA.SUBSTITUTION_WINDOW_DAYS             
      ,MA.IB_ITEM_INSTANCE_CLASS               
      ,MA.CONFIG_MODEL_TYPE                    
      ,MA.LOT_SUBSTITUTION_ENABLED             
      ,MA.MINIMUM_LICENSE_QUANTITY             
      ,MA.EAM_ACTIVITY_SOURCE_CODE             
      ,MA.LIFECYCLE_ID                         
      ,MA.CURRENT_PHASE_ID                     
      ,MA.OBJECT_VERSION_NUMBER                
      ,MA.TRACKING_QUANTITY_IND                
      ,MA.ONT_PRICING_QTY_SOURCE               
      ,MA.SECONDARY_DEFAULT_IND                
      ,MA.OPTION_SPECIFIC_SOURCED              
      ,MA.APPROVAL_STATUS                      
      ,MA.VMI_MINIMUM_UNITS                    
      ,MA.VMI_MINIMUM_DAYS                     
      ,MA.VMI_MAXIMUM_UNITS                    
      ,MA.VMI_MAXIMUM_DAYS                     
      ,MA.VMI_FIXED_ORDER_QUANTITY             
      ,MA.SO_AUTHORIZATION_FLAG                
      ,MA.CONSIGNED_FLAG                       
      ,MA.ASN_AUTOEXPIRE_FLAG                  
      ,MA.VMI_FORECAST_TYPE                    
      ,MA.FORECAST_HORIZON                     
      ,MA.EXCLUDE_FROM_BUDGET_FLAG             
      ,MA.DAYS_TGT_INV_SUPPLY                  
      ,MA.DAYS_TGT_INV_WINDOW                  
      ,MA.DAYS_MAX_INV_SUPPLY                  
      ,MA.DAYS_MAX_INV_WINDOW                  
      ,MA.DRP_PLANNED_FLAG                     
      ,MA.CRITICAL_COMPONENT_FLAG              
      ,MA.CONTINOUS_TRANSFER                   
      ,MA.CONVERGENCE                          
      ,MA.DIVERGENCE                           
      ,MA.CONFIG_ORGS                          
      ,MA.CONFIG_MATCH                         
      ,MA.ATTRIBUTE16                          
      ,MA.ATTRIBUTE17                          
      ,MA.ATTRIBUTE18                          
      ,MA.ATTRIBUTE19                          
      ,MA.ATTRIBUTE20                          
      ,MA.ATTRIBUTE21                          
      ,MA.ATTRIBUTE22                          
      ,MA.ATTRIBUTE23                          
      ,MA.ATTRIBUTE24                          
      ,MA.ATTRIBUTE25                          
      ,MA.ATTRIBUTE26                          
      ,MA.ATTRIBUTE27                          
      ,MA.ATTRIBUTE28                          
      ,MA.ATTRIBUTE29                          
      ,MA.ATTRIBUTE30                          
      ,MA.CAS_NUMBER                           
      ,MA.CHILD_LOT_FLAG                       
      ,MA.CHILD_LOT_PREFIX                     
      ,MA.CHILD_LOT_STARTING_NUMBER            
      ,MA.CHILD_LOT_VALIDATION_FLAG            
      ,MA.COPY_LOT_ATTRIBUTE_FLAG              
      ,MA.DEFAULT_GRADE                        
      ,MA.EXPIRATION_ACTION_CODE               
      ,MA.EXPIRATION_ACTION_INTERVAL           
      ,MA.GRADE_CONTROL_FLAG                   
      ,MA.HAZARDOUS_MATERIAL_FLAG              
      ,MA.HOLD_DAYS                            
      ,MA.LOT_DIVISIBLE_FLAG                   
      ,MA.MATURITY_DAYS                        
      ,MA.PARENT_CHILD_GENERATION_FLAG         
      ,MA.PROCESS_COSTING_ENABLED_FLAG         
      ,MA.PROCESS_EXECUTION_ENABLED_FLAG       
      ,MA.PROCESS_QUALITY_ENABLED_FLAG         
      ,MA.PROCESS_SUPPLY_LOCATOR_ID            
      ,MA.PROCESS_SUPPLY_SUBINVENTORY          
      ,MA.PROCESS_YIELD_LOCATOR_ID             
      ,MA.PROCESS_YIELD_SUBINVENTORY           
      ,MA.RECIPE_ENABLED_FLAG                  
      ,MA.RETEST_INTERVAL                      
      ,MA.CHARGE_PERIODICITY_CODE              
      ,MA.REPAIR_LEADTIME                      
      ,MA.REPAIR_YIELD                         
      ,MA.PREPOSITION_POINT                    
      ,MA.REPAIR_PROGRAM                       
      ,MA.SUBCONTRACTING_COMPONENT             
      ,MA.OUTSOURCED_ASSEMBLY                  
      ,MA.EGO_MASTER_ITEMS_DFF_CTX             
      ,MA.GDSN_OUTBOUND_ENABLED_FLAG           
      ,MA.TRADE_ITEM_DESCRIPTOR                
      ,MA.STYLE_ITEM_ID                        
      ,MA.STYLE_ITEM_FLAG                      
      ,MA.LAST_SUBMITTED_NIR_ID                
      ,MA.DEFAULT_MATERIAL_STATUS_ID           
      ,MA.GLOBAL_ATTRIBUTE11                   
      ,MA.GLOBAL_ATTRIBUTE12                   
      ,MA.GLOBAL_ATTRIBUTE13                   
      ,MA.GLOBAL_ATTRIBUTE14                   
      ,MA.GLOBAL_ATTRIBUTE15                   
      ,MA.GLOBAL_ATTRIBUTE16                   
      ,MA.GLOBAL_ATTRIBUTE17                   
      ,MA.GLOBAL_ATTRIBUTE18                   
      ,MA.GLOBAL_ATTRIBUTE19                   
      ,MA.GLOBAL_ATTRIBUTE20                   
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MTL_SYSTEM_ITEMS_B'                          
FROM ODS.MTL_SYSTEM_ITEMS_B_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MTL_SYSTEM_ITEMS_B');


