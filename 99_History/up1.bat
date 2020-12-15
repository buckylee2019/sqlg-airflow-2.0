echo on

rem if "%1" == "" (
rem 		docker-compose -f docker-compose.yml up -d   
rem ) else 	docker-compose -f docker-compose-%1.yml up -d   
rem echo %DATE%-%TIME%

docker-compose -f docker-compose-Celery.yml up -d  

REM sleep 20, wait db init then set variable 
ping 127.0.0.1 -n 60 > nul
rem docker exec -it air_webserver_1 airflow variables -s sql_path "/usr/local/airflow/sql"
rem docker exec -it air_webserver_1 airflow connections -a --conn_id  oracle_default --conn_type oracle --conn_host 172.17.0.3 --conn_login etladm --conn_password etladm --conn_schema etladm

docker exec -it air_webserver_1 airflow create_user -r Admin -e jessewei@tw.ibm.com -f jesse -l wei -u airflow -p airflow
rem docker cp client64/bin air_webserver_1:/usr/lib/oracle/11.2/client64/bin

rem echo %DATE%-%TIME%
echo on 