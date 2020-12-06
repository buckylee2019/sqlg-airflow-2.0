echo on

rem docker run -d -p 8081:8080 -e LOAD_EX=y -e AIRFLOW__WEBSERVER__RBAC=False -v $(pwd)/dags:/usr/local/airflow/dags jessewei/sqlg-airflow:latest webserver
docker run -d -p 8081:8080 -e LOAD_EX=y -e AIRFLOW__WEBSERVER__RBAC=False -v /c/Proj/SQLG/sqlg-airflow/dags:/usr/local/airflow/dags jessewei/sqlg-airflow:latest webserver

echo on 