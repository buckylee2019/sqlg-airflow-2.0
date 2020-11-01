echo off

if "%1" == "" (
		docker-compose -f docker-compose-LocalExecutor.yml up -d   
) else 	docker-compose -f docker-compose-LocalExecutor-%1.yml up -d   
rem echo %DATE%-%TIME%

REM sleep 20, wait db init then set variable 
ping 127.0.0.1 -n 30 > nul
docker exec -it sqlg-airflow_webserver_1 airflow variables -s sql_path "/usr/local/airflow/sql"


rem echo %DATE%-%TIME%
echo on 