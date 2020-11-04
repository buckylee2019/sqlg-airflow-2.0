echo off

if "%1" == "" (
		docker-compose -f docker-compose.yml down
) else 	docker-compose -f docker-compose-%1.yml down
rem echo %DATE%-%TIME%

echo on 