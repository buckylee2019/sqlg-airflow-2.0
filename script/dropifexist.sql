create or replace 
PROCEDURE SQLEXT.SP_DROP_IF_EXISTS
( 
SchemaName IN VARCHAR2
, tblName IN VARCHAR2
) AS
SqlStmt VARCHAR2(255);
BEGIN

   if SchemaName IS NULL then
        SqlStmt := 'drop table ' || tblName;
    else
        SqlStmt := 'drop table ' || SchemaName || '.' || tblName;
    end if;
	EXECUTE IMMEDIATE  SqlStmt;
	DBMS_OUTPUT.PUT_LINE ('There are ' || SqlStmt ); 

EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE( 'Error: ' || SQLCODE || ' ~ ' || SQLERRM );
      -- ORA-00942: table or view does not exist)
      IF SQLCODE  != -942 THEN
         RAISE;
      END IF; 

END SP_DROP_IF_EXISTS;