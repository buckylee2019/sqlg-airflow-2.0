#!/usr/bin/env bash

case "$1" in
  1|Celery|MultiNode)
	echo "1, Stop MultiNode"	
	docker-compose -f docker-compose-Celery.yml down
	;;
  
  2|Tutor|Seq|Sequential|Example)
	echo "2, Stop Tutorial"
	docker -f rm air_webserver_2
	;;
	
  *)
  # exec "$@"
	echo "0, Stop SingleNode"
	docker-compose -f docker-compose.yml down
	;;
esac  