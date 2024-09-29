@echo off
setlocal enabledelayedexpansion

set command=python manage.py %*

if "%~1"=="sh" (
    set command=%*
    set command=!command:sh =!
)

docker compose run --rm app sh -c "%command%"