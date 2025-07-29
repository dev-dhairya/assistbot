@echo off
title ASSIST BOT
color 0A
cls

echo ASSIST BOT by Dhairya
echo.
echo Type a math expression using +, -, *, or / (e.g. 2+2, 10/5)
echo Type "exit" to quit.
echo.

:main
set /p input=You: 
if /i "%input%"=="exit" exit

:: Remove all spaces from input
setlocal EnableDelayedExpansion
set "expr=%input%"
set "expr=!expr: =!"

:: Try evaluating the expression
set /a result=!expr! >nul 2>&1

:: Check if it failed
if errorlevel 1 (
    echo BOT: Invalid math expression. Only +, -, *, / are supported.
) else (
    echo BOT: Answer is !result!
)
endlocal
echo.
goto main
