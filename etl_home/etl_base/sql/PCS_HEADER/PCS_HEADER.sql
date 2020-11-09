
TRUNCATE TABLE ODS.PCS_HEADER_TP1;

INSERT /*+ append */ INTO ODS.PCS_HEADER_TP1 (
      CASEID                                  
      ,HEADERID                                
      ,STATUS                                  
      ,HANDLERLOGONID                          
      ,HANDLERDATE                             
      ,HEADERNO                                
      ,APPLIERDATE                             
      ,PAPERSTATUS                             
      ,PREPARERID                              
      ,PREPARERDEPTID                          
      ,APPLIERLOGONID                          
      ,APPLIERDEPTID                           
      ,PAYMENTDATE                             
      ,SITE                                    
      ,APPLIERDEPTDEPTID                       
      ,PROJECTCODE                             
      ,PROJECTNAME                             
      ,TYPE                                    
      ,MEMBERS                                 
      ,DESCRIPTION                             
      ,LEAVEFORMID                             
)
      SELECT
       MA.CASEID                          AS CASEID
      ,MA.HEADERID                        AS HEADERID
      ,MA.STATUS                          AS STATUS
      ,MA.HANDLERLOGONID                  AS HANDLERLOGONID
      ,MA.HANDLERDATE                     AS HANDLERDATE
      ,MA.HEADERNO                        AS HEADERNO
      ,MA.APPLIERDATE                     AS APPLIERDATE
      ,MA.PAPERSTATUS                     AS PAPERSTATUS
      ,MA.PREPARERID                      AS PREPARERID
      ,MA.PREPARERDEPTID                  AS PREPARERDEPTID
      ,MA.APPLIERLOGONID                  AS APPLIERLOGONID
      ,MA.APPLIERDEPTID                   AS APPLIERDEPTID
      ,MA.PAYMENTDATE                     AS PAYMENTDATE
      ,MA.SITE                            AS SITE
      ,MA.APPLIERDEPTDEPTID               AS APPLIERDEPTDEPTID
      ,MA.PROJECTCODE                     AS PROJECTCODE
      ,MA.PROJECTNAME                     AS PROJECTNAME
      ,MA.TYPE                            AS TYPE
      ,MA.MEMBERS                         AS MEMBERS
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.LEAVEFORMID                     AS LEAVEFORMID
FROM STAGE.PCS_HEADER MA  
;


TRUNCATE TABLE ODS.PCS_HEADER;

INSERT /*+ append */ INTO ODS.PCS_HEADER (
      CASEID                                  
      ,HEADERID                                
      ,STATUS                                  
      ,HANDLERLOGONID                          
      ,HANDLERDATE                             
      ,HEADERNO                                
      ,APPLIERDATE                             
      ,PAPERSTATUS                             
      ,PREPARERID                              
      ,PREPARERDEPTID                          
      ,APPLIERLOGONID                          
      ,APPLIERDEPTID                           
      ,PAYMENTDATE                             
      ,SITE                                    
      ,APPLIERDEPTDEPTID                       
      ,PROJECTCODE                             
      ,PROJECTNAME                             
      ,TYPE                                    
      ,MEMBERS                                 
      ,DESCRIPTION                             
      ,LEAVEFORMID                             
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.CASEID                               
      ,MA.HEADERID                             
      ,MA.STATUS                               
      ,MA.HANDLERLOGONID                       
      ,MA.HANDLERDATE                          
      ,MA.HEADERNO                             
      ,MA.APPLIERDATE                          
      ,MA.PAPERSTATUS                          
      ,MA.PREPARERID                           
      ,MA.PREPARERDEPTID                       
      ,MA.APPLIERLOGONID                       
      ,MA.APPLIERDEPTID                        
      ,MA.PAYMENTDATE                          
      ,MA.SITE                                 
      ,MA.APPLIERDEPTDEPTID                    
      ,MA.PROJECTCODE                          
      ,MA.PROJECTNAME                          
      ,MA.TYPE                                 
      ,MA.MEMBERS                              
      ,MA.DESCRIPTION                          
      ,MA.LEAVEFORMID                          
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'PCS_HEADER'                          
FROM ODS.PCS_HEADER_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','PCS_HEADER');


