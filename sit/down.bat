echo off

if "%1" == "" (
		docker-compose -f docker-compose-LocalExecutor.yml down
) else 	docker-compose -f docker-compose-LocalExecutor-%1.yml down
rem echo %DATE%-%TIME%

echo on 