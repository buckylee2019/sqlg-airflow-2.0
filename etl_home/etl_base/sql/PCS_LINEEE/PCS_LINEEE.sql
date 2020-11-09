
TRUNCATE TABLE ODS.PCS_LINEEE_TP1;

INSERT /*+ append */ INTO ODS.PCS_LINEEE_TP1 (
      CASEID                                  
      ,LINEID                                  
      ,HANDLERLOGONID                          
      ,HANDLERDATE                             
      ,ENTERTAINDATE                           
      ,PROJECTCODE                             
      ,CUSTOMERCODE                            
      ,CUSTOMERNAME                            
      ,ENTERTAINJOBTITLE                       
      ,VISITSTARTDATE                          
      ,VISITENDDATE                            
      ,ENTERTAINTYPE                           
      ,TOTAL                                   
      ,ENTERTAINREASON                         
      ,ENTERTAINDESC                           
      ,ACCOUNT                                 
)
      SELECT
       MA.CASEID                          AS CASEID
      ,MA.LINEID                          AS LINEID
      ,MA.HANDLERLOGONID                  AS HANDLERLOGONID
      ,MA.HANDLERDATE                     AS HANDLERDATE
      ,MA.ENTERTAINDATE                   AS ENTERTAINDATE
      ,MA.PROJECTCODE                     AS PROJECTCODE
      ,MA.CUSTOMERCODE                    AS CUSTOMERCODE
      ,MA.CUSTOMERNAME                    AS CUSTOMERNAME
      ,MA.ENTERTAINJOBTITLE               AS ENTERTAINJOBTITLE
      ,MA.VISITSTARTDATE                  AS VISITSTARTDATE
      ,MA.VISITENDDATE                    AS VISITENDDATE
      ,MA.ENTERTAINTYPE                   AS ENTERTAINTYPE
      ,MA.TOTAL                           AS TOTAL
      ,MA.ENTERTAINREASON                 AS ENTERTAINREASON
      ,MA.ENTERTAINDESC                   AS ENTERTAINDESC
      ,MA.ACCOUNT                         AS ACCOUNT
FROM STAGE.PCS_LINEEE MA  
;


TRUNCATE TABLE ODS.PCS_LINEEE;

INSERT /*+ append */ INTO ODS.PCS_LINEEE (
      CASEID                                  
      ,LINEID                                  
      ,HANDLERLOGONID                          
      ,HANDLERDATE                             
      ,ENTERTAINDATE                           
      ,PROJECTCODE                             
      ,CUSTOMERCODE                            
      ,CUSTOMERNAME                            
      ,ENTERTAINJOBTITLE                       
      ,VISITSTARTDATE                          
      ,VISITENDDATE                            
      ,ENTERTAINTYPE                           
      ,TOTAL                                   
      ,ENTERTAINREASON                         
      ,ENTERTAINDESC                           
      ,ACCOUNT                                 
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.CASEID                               
      ,MA.LINEID                               
      ,MA.HANDLERLOGONID                       
      ,MA.HANDLERDATE                          
      ,MA.ENTERTAINDATE                        
      ,MA.PROJECTCODE                          
      ,MA.CUSTOMERCODE                         
      ,MA.CUSTOMERNAME                         
      ,MA.ENTERTAINJOBTITLE                    
      ,MA.VISITSTARTDATE                       
      ,MA.VISITENDDATE                         
      ,MA.ENTERTAINTYPE                        
      ,MA.TOTAL                                
      ,MA.ENTERTAINREASON                      
      ,MA.ENTERTAINDESC                        
      ,MA.ACCOUNT                              
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'PCS_LINEEE'                          
FROM ODS.PCS_LINEEE_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','PCS_LINEEE');


