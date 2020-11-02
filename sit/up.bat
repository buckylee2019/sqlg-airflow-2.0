echo off

if "%1" == "" (
		docker-compose -f docker-compose-LocalExecutor.yml up -d   
) else 	docker-compose -f docker-compose-LocalExecutor-%1.yml up -d   
rem echo %DATE%-%TIME%

REM sleep 20, wait db init then set variable 
ping 127.0.0.1 -n 30 > nul
docker exec -it sit_webserver_1 airflow variables -s sql_path "/usr/local/airflow/sql"
docker exec -it sit_webserver_1 airflow connections -a --conn_id  oracle_default --conn_type oracle --conn_host 172.17.0.3 --conn_login etladm --conn_password etladm --conn_schema etladm
docker exec -it sit_webserver_1 airflow create_user -r Admin -e jessewei@tw.ibm.com -f jesse -l wei -u airflow -p airflow

rem echo %DATE%-%TIME%
echo on 