#!/bin/bash


case "$1" in
  1|Celery|MultiNode)
	echo "1, Start MultiNode"
	docker-compose -f docker-compose-Celery.yml up -d  
	sleep 20
	docker exec -it air_webserver_1 airflow create_user -r Admin -e jessewei@tw.ibm.com -f jesse -l wei -u airflow -p airflow
	;;
  
  2|Tutor|Seq|Sequential)
	echo "2, Start Tutorial"
	#docker run -d -p 8082:8080 --name=air_webserver_2 -e AIRFLOW__CORE__LOAD_EXAMPLES=True -e AIRFLOW__WEBSERVER__RBAC=False -v /home/airflow/dags:/usr/local/airflow/dags jessewei/sqlg-airflow:latest webserver
	docker run -d -p 8082:8080 --name=air_webserver_2 -e AIRFLOW__WEBSERVER__RBAC=False -v /home/airflow/dags:/usr/local/airflow/dags jessewei/sqlg-airflow:latest webserver
	;;

  3|Example)
	echo "3, Start Example"
	docker run -d -p 8083:8080 --name=air_webserver_3 -e AIRFLOW__CORE__LOAD_EXAMPLES=True -e AIRFLOW__WEBSERVER__RBAC=False -v /home/airflow/dags:/usr/local/airflow/dags jessewei/sqlg-airflow:latest webserver
	#docker run -d -p 8082:8080 --name=air_webserver_2 -e AIRFLOW__WEBSERVER__RBAC=False -v /home/airflow/dags:/usr/local/airflow/dags jessewei/sqlg-airflow:latest webserver
	;;

  -h|--help)
	echo 
	echo "up.sh: The Airflow startup script, usage:"
	echo "./up.sh [0|1|2|3|-h]"
	echo "0, Start SingleNode, port=8080"
	echo "1, Start MultiNode, port=8081"  
	echo "2, Start Tutorial, port=8082"
	echo "3, Start Example, port=8083"
	echo "-h, help message"
	echo 
	;;
	
  *)
  # exec "$@"
	echo "0, Start SingleNode"
	docker-compose -f docker-compose.yml up -d  
	sleep 20
	docker exec -it air_webserver_0 airflow create_user -r Admin -e jessewei@tw.ibm.com -f jesse -l wei -u airflow -p airflow
	;;
esac  
