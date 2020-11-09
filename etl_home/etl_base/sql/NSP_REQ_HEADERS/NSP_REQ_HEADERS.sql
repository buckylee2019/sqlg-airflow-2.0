
ALTER TABLE ODS.NSP_REQ_HEADERS_TP1 DISABLE CONSTRAINT NSP_REQ_HEADERS_TP1_X;
TRUNCATE TABLE ODS.NSP_REQ_HEADERS_TP1;

INSERT /*+ append */ INTO ODS.NSP_REQ_HEADERS_TP1 (
      REQ_HEADER_ID                           
      ,ORG_ID                                  
      ,CASEID                                  
      ,SITE_CODE                               
      ,REQ_NUM                                 
      ,PREPARER_ID                             
      ,REQUESTER_ID                            
      ,B_CATEGORY_ID                           
      ,REQ_DEPT                                
      ,CREATION_DATE                           
      ,ORDER_REQUIRED                          
      ,CUST_CHARGED                            
      ,PROJECT_CODE                            
      ,PM_REP_ID                               
      ,IE_REP_ID                               
      ,GNPI_REP_ID                             
      ,BU_CODE                                 
      ,SUB_BU_CODE                             
      ,PM_HEAD_ID                              
      ,SALES_HEAD_ID                           
      ,MD_HEAD_ID                              
      ,AGENT_ID                                
      ,DESCRIPTION                             
      ,TOTAL_AMOUNT                            
      ,RELEASED_AMOUNT                         
      ,AUTHORIZATION_STATUS                    
      ,APPROVED_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,BU_HEAD_ID                              
      ,ATTRIBUTE01                             
      ,ATTRIBUTE02                             
      ,ATTRIBUTE03                             
      ,CHARGED_CUSTNAME                        
      ,CHARGED_METHOD                          
      ,CHARGED_MEMO                            
      ,BUSINESS_COMMISSION                     
      ,ACCREDITATION_ID                        
      ,HARD_CLOSE_DESC                         
      ,RT_DESC                                 
      ,QT_AMT_DESC                             
      ,SAFE_DESC                               
      ,AUTHENTICATION_SAFETY                   
      ,ODP_CATEGORY                            
      ,NREDESC                                 
      ,CUST_CODE                               
      ,MFG_FLAG                                
      ,TCSHEADERNO                             
      ,TCS_RATE_IMPACT                         
      ,PN_FLAG                                 
      ,STORAGE_CODE                            
      ,ORG                                     
      ,IS_SITE_TRANSFER                        
      ,SYS_NC00055$                            
)
      SELECT
       MA.REQ_HEADER_ID                   AS REQ_HEADER_ID
      ,MA.ORG_ID                          AS ORG_ID
      ,MA.CASEID                          AS CASEID
      ,MA.SITE_CODE                       AS SITE_CODE
      ,MA.REQ_NUM                         AS REQ_NUM
      ,MA.PREPARER_ID                     AS PREPARER_ID
      ,MA.REQUESTER_ID                    AS REQUESTER_ID
      ,MA.B_CATEGORY_ID                   AS B_CATEGORY_ID
      ,MA.REQ_DEPT                        AS REQ_DEPT
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.ORDER_REQUIRED                  AS ORDER_REQUIRED
      ,MA.CUST_CHARGED                    AS CUST_CHARGED
      ,MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.PM_REP_ID                       AS PM_REP_ID
      ,MA.IE_REP_ID                       AS IE_REP_ID
      ,MA.GNPI_REP_ID                     AS GNPI_REP_ID
      ,MA.BU_CODE                         AS BU_CODE
      ,MA.SUB_BU_CODE                     AS SUB_BU_CODE
      ,MA.PM_HEAD_ID                      AS PM_HEAD_ID
      ,MA.SALES_HEAD_ID                   AS SALES_HEAD_ID
      ,MA.MD_HEAD_ID                      AS MD_HEAD_ID
      ,MA.AGENT_ID                        AS AGENT_ID
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.TOTAL_AMOUNT                    AS TOTAL_AMOUNT
      ,MA.RELEASED_AMOUNT                 AS RELEASED_AMOUNT
      ,MA.AUTHORIZATION_STATUS            AS AUTHORIZATION_STATUS
      ,MA.APPROVED_DATE                   AS APPROVED_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.BU_HEAD_ID                      AS BU_HEAD_ID
      ,MA.ATTRIBUTE01                     AS ATTRIBUTE01
      ,MA.ATTRIBUTE02                     AS ATTRIBUTE02
      ,MA.ATTRIBUTE03                     AS ATTRIBUTE03
      ,MA.CHARGED_CUSTNAME                AS CHARGED_CUSTNAME
      ,MA.CHARGED_METHOD                  AS CHARGED_METHOD
      ,MA.CHARGED_MEMO                    AS CHARGED_MEMO
      ,MA.BUSINESS_COMMISSION             AS BUSINESS_COMMISSION
      ,MA.ACCREDITATION_ID                AS ACCREDITATION_ID
      ,MA.HARD_CLOSE_DESC                 AS HARD_CLOSE_DESC
      ,MA.RT_DESC                         AS RT_DESC
      ,MA.QT_AMT_DESC                     AS QT_AMT_DESC
      ,MA.SAFE_DESC                       AS SAFE_DESC
      ,MA.AUTHENTICATION_SAFETY           AS AUTHENTICATION_SAFETY
      ,MA.ODP_CATEGORY                    AS ODP_CATEGORY
      ,MA.NREDESC                         AS NREDESC
      ,MA.CUST_CODE                       AS CUST_CODE
      ,MA.MFG_FLAG                        AS MFG_FLAG
      ,MA.TCSHEADERNO                     AS TCSHEADERNO
      ,MA.TCS_RATE_IMPACT                 AS TCS_RATE_IMPACT
      ,MA.PN_FLAG                         AS PN_FLAG
      ,MA.STORAGE_CODE                    AS STORAGE_CODE
      ,MA.ORG                             AS ORG
      ,MA.IS_SITE_TRANSFER                AS IS_SITE_TRANSFER
      ,MA.SYS_NC00055$                    AS SYS_NC00055$
FROM STAGE.NSP_REQ_HEADERS MA  
;



ALTER TABLE ODS.NSP_REQ_HEADERS_TP1 ENABLE CONSTRAINT NSP_REQ_HEADERS_TP1_X EXCEPTIONS INTO ODS.NSP_REQ_HEADERS_TPX;

ALTER TABLE ODS.NSP_REQ_HEADERS DISABLE CONSTRAINT NSP_REQ_HEADERS_X;
TRUNCATE TABLE ODS.NSP_REQ_HEADERS;

INSERT /*+ append */ INTO ODS.NSP_REQ_HEADERS (
      REQ_HEADER_ID                           
      ,ORG_ID                                  
      ,CASEID                                  
      ,SITE_CODE                               
      ,REQ_NUM                                 
      ,PREPARER_ID                             
      ,REQUESTER_ID                            
      ,B_CATEGORY_ID                           
      ,REQ_DEPT                                
      ,CREATION_DATE                           
      ,ORDER_REQUIRED                          
      ,CUST_CHARGED                            
      ,PROJECT_CODE                            
      ,PM_REP_ID                               
      ,IE_REP_ID                               
      ,GNPI_REP_ID                             
      ,BU_CODE                                 
      ,SUB_BU_CODE                             
      ,PM_HEAD_ID                              
      ,SALES_HEAD_ID                           
      ,MD_HEAD_ID                              
      ,AGENT_ID                                
      ,DESCRIPTION                             
      ,TOTAL_AMOUNT                            
      ,RELEASED_AMOUNT                         
      ,AUTHORIZATION_STATUS                    
      ,APPROVED_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,BU_HEAD_ID                              
      ,ATTRIBUTE01                             
      ,ATTRIBUTE02                             
      ,ATTRIBUTE03                             
      ,CHARGED_CUSTNAME                        
      ,CHARGED_METHOD                          
      ,CHARGED_MEMO                            
      ,BUSINESS_COMMISSION                     
      ,ACCREDITATION_ID                        
      ,HARD_CLOSE_DESC                         
      ,RT_DESC                                 
      ,QT_AMT_DESC                             
      ,SAFE_DESC                               
      ,AUTHENTICATION_SAFETY                   
      ,ODP_CATEGORY                            
      ,NREDESC                                 
      ,CUST_CODE                               
      ,MFG_FLAG                                
      ,TCSHEADERNO                             
      ,TCS_RATE_IMPACT                         
      ,PN_FLAG                                 
      ,STORAGE_CODE                            
      ,ORG                                     
      ,IS_SITE_TRANSFER                        
      ,SYS_NC00055$                            
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.REQ_HEADER_ID                        
      ,MA.ORG_ID                               
      ,MA.CASEID                               
      ,MA.SITE_CODE                            
      ,MA.REQ_NUM                              
      ,MA.PREPARER_ID                          
      ,MA.REQUESTER_ID                         
      ,MA.B_CATEGORY_ID                        
      ,MA.REQ_DEPT                             
      ,MA.CREATION_DATE                        
      ,MA.ORDER_REQUIRED                       
      ,MA.CUST_CHARGED                         
      ,MA.PROJECT_CODE                         
      ,MA.PM_REP_ID                            
      ,MA.IE_REP_ID                            
      ,MA.GNPI_REP_ID                          
      ,MA.BU_CODE                              
      ,MA.SUB_BU_CODE                          
      ,MA.PM_HEAD_ID                           
      ,MA.SALES_HEAD_ID                        
      ,MA.MD_HEAD_ID                           
      ,MA.AGENT_ID                             
      ,MA.DESCRIPTION                          
      ,MA.TOTAL_AMOUNT                         
      ,MA.RELEASED_AMOUNT                      
      ,MA.AUTHORIZATION_STATUS                 
      ,MA.APPROVED_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.BU_HEAD_ID                           
      ,MA.ATTRIBUTE01                          
      ,MA.ATTRIBUTE02                          
      ,MA.ATTRIBUTE03                          
      ,MA.CHARGED_CUSTNAME                     
      ,MA.CHARGED_METHOD                       
      ,MA.CHARGED_MEMO                         
      ,MA.BUSINESS_COMMISSION                  
      ,MA.ACCREDITATION_ID                     
      ,MA.HARD_CLOSE_DESC                      
      ,MA.RT_DESC                              
      ,MA.QT_AMT_DESC                          
      ,MA.SAFE_DESC                            
      ,MA.AUTHENTICATION_SAFETY                
      ,MA.ODP_CATEGORY                         
      ,MA.NREDESC                              
      ,MA.CUST_CODE                            
      ,MA.MFG_FLAG                             
      ,MA.TCSHEADERNO                          
      ,MA.TCS_RATE_IMPACT                      
      ,MA.PN_FLAG                              
      ,MA.STORAGE_CODE                         
      ,MA.ORG                                  
      ,MA.IS_SITE_TRANSFER                     
      ,MA.SYS_NC00055$                         
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'NSP_REQ_HEADERS'                          
FROM ODS.NSP_REQ_HEADERS_TP1 MA ; 



ALTER TABLE ODS.NSP_REQ_HEADERS ENABLE CONSTRAINT NSP_REQ_HEADERS_X EXCEPTIONS INTO ODS.NSP_REQ_HEADERS_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','NSP_REQ_HEADERS');


