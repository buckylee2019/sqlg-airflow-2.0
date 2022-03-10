# query.py

import cx_Oracle

# Establish the database connection
# connection = cx_Oracle.connect("system", "oracle", "dbhost.example.com/orclpdb1")
connection = cx_Oracle.connect("system", "oracle", "172.24.0.9")


# Obtain a cursor
cursor = connection.cursor()

# Data for binding
managerId = 145
firstName = "Peter"

# Execute the query
# sql = """SELECT first_name, last_name
#          FROM hr.employees
#          WHERE manager_id = :mid AND first_name = :fn"""
# cursor.execute(sql, mid = managerId, fn = firstName)
sql = "SELECT count(*) FROM ods.FND_COLUMNS "
cursor.execute(sql)

# Loop over the result set
for row in cursor:
    print(row)

    - ./dags:/opt/airflow/dags
    - ./logs:/opt/airflow/logs
    - ./plugins:/opt/airflow/plugins
    - ./config/airflow.cfg:/usr/local/airflow/airflow.cfg                
    - ./config/var.json:opt/airflow//var.json          
    - ./config/conn.json:/opt/airflow/conn.json          
    #- ./config/tnsnames.ora:/usr/lib/oracle/11.2/client64/network/admin/tnsnames.ora          
    - ./etl_base:/usr/local/airflow/etl_base
    - ./etl_base/dags:/opt/airflow/dags
    - ./etl_base/sql:/opt/airflow/sql
    - /home/FTP:/opt/airflow/etl_base/SOURCE
    - ./bin:/opt/airflow/bin