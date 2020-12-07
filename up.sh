#!/usr/bin/env bash

case "$1" in
  1|Celery|MultiNode)
	echo "1, Start MultiNode"
	docker-compose -f docker-compose-Celery.yml up -d  
	docker exec -it air_webserver_1 airflow create_user -r Admin -e jessewei@tw.ibm.com -f jesse -l wei -u airflow -p airflow
	sleep 15
	;;
  
  2|Tutor|Seq|Sequential|Example)
	echo "2, Start Tutorial"
	docker run -d -p 8082:8080 --name=air_webserver_2 -e AIRFLOW__CORE__LOAD_EXAMPLES=True -e AIRFLOW__WEBSERVER__RBAC=False -v /c/Proj/SQLG/sqlg-airflow/dags:/usr/local/airflow/dags jessewei/sqlg-airflow:latest webserver
	;;
	
  *)
  # exec "$@"
	echo "0, Start SingleNode"
	docker-compose -f docker-compose.yml up -d  
	sleep 15
	docker exec -it air_webserver_0 airflow create_user -r Admin -e jessewei@tw.ibm.com -f jesse -l wei -u airflow -p airflow
	;;
esac  