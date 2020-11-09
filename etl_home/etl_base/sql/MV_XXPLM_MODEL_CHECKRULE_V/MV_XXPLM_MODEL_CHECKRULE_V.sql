
TRUNCATE TABLE ODS.MV_XXPLM_MODEL_CHECKRULE_V_TP1;

INSERT /*+ append */ INTO ODS.MV_XXPLM_MODEL_CHECKRULE_V_TP1 (
      NAME                                    
      ,WTDOCUMENTNUMBER                        
      ,ZBG                                     
      ,ZBU                                     
      ,ZSUBBU                                  
      ,ZPRODUCTLINE                            
      ,ZPROJECTCODE                            
      ,ZDEVELOPMENTTYPE                        
      ,ZPRODUCTTYPE                            
      ,ZPROJECTDEVELOPMENTFLOW                 
      ,ZCFDTEMPLATETYPE                        
      ,ZISITADERIVATIVEMODEL                   
      ,ZDERIVATIVETYPE                         
      ,ZATLOFORMP                              
      ,C1STARTDATE                             
      ,C23STARTDATE                            
      ,C4STARTDATE                             
      ,C5STARTDATE                             
      ,C6STARTDATE                             
)
      SELECT
       MA.NAME                            AS NAME
      ,MA.WTDOCUMENTNUMBER                AS WTDOCUMENTNUMBER
      ,MA.ZBG                             AS ZBG
      ,MA.ZBU                             AS ZBU
      ,MA.ZSUBBU                          AS ZSUBBU
      ,MA.ZPRODUCTLINE                    AS ZPRODUCTLINE
      ,MA.ZPROJECTCODE                    AS ZPROJECTCODE
      ,MA.ZDEVELOPMENTTYPE                AS ZDEVELOPMENTTYPE
      ,MA.ZPRODUCTTYPE                    AS ZPRODUCTTYPE
      ,MA.ZPROJECTDEVELOPMENTFLOW         AS ZPROJECTDEVELOPMENTFLOW
      ,MA.ZCFDTEMPLATETYPE                AS ZCFDTEMPLATETYPE
      ,MA.ZISITADERIVATIVEMODEL           AS ZISITADERIVATIVEMODEL
      ,MA.ZDERIVATIVETYPE                 AS ZDERIVATIVETYPE
      ,MA.ZATLOFORMP                      AS ZATLOFORMP
      ,MA.C1STARTDATE                     AS C1STARTDATE
      ,MA.C23STARTDATE                    AS C23STARTDATE
      ,MA.C4STARTDATE                     AS C4STARTDATE
      ,MA.C5STARTDATE                     AS C5STARTDATE
      ,MA.C6STARTDATE                     AS C6STARTDATE
FROM STAGE.MV_XXPLM_MODEL_CHECKRULE_V MA  
;


TRUNCATE TABLE ODS.MV_XXPLM_MODEL_CHECKRULE_V;

INSERT /*+ append */ INTO ODS.MV_XXPLM_MODEL_CHECKRULE_V (
      NAME                                    
      ,WTDOCUMENTNUMBER                        
      ,ZBG                                     
      ,ZBU                                     
      ,ZSUBBU                                  
      ,ZPRODUCTLINE                            
      ,ZPROJECTCODE                            
      ,ZDEVELOPMENTTYPE                        
      ,ZPRODUCTTYPE                            
      ,ZPROJECTDEVELOPMENTFLOW                 
      ,ZCFDTEMPLATETYPE                        
      ,ZISITADERIVATIVEMODEL                   
      ,ZDERIVATIVETYPE                         
      ,ZATLOFORMP                              
      ,C1STARTDATE                             
      ,C23STARTDATE                            
      ,C4STARTDATE                             
      ,C5STARTDATE                             
      ,C6STARTDATE                             
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.NAME                                 
      ,MA.WTDOCUMENTNUMBER                     
      ,MA.ZBG                                  
      ,MA.ZBU                                  
      ,MA.ZSUBBU                               
      ,MA.ZPRODUCTLINE                         
      ,MA.ZPROJECTCODE                         
      ,MA.ZDEVELOPMENTTYPE                     
      ,MA.ZPRODUCTTYPE                         
      ,MA.ZPROJECTDEVELOPMENTFLOW              
      ,MA.ZCFDTEMPLATETYPE                     
      ,MA.ZISITADERIVATIVEMODEL                
      ,MA.ZDERIVATIVETYPE                      
      ,MA.ZATLOFORMP                           
      ,MA.C1STARTDATE                          
      ,MA.C23STARTDATE                         
      ,MA.C4STARTDATE                          
      ,MA.C5STARTDATE                          
      ,MA.C6STARTDATE                          
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MV_XXPLM_MODEL_CHECKRULE_V'                          
FROM ODS.MV_XXPLM_MODEL_CHECKRULE_V_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MV_XXPLM_MODEL_CHECKRULE_V');


