@echo off
title Dead Man's Switch - Frontend Server
echo ╔════════════════════════════════════════╗
echo ║   DEAD MAN'S SWITCH - Frontend         ║
echo ╚════════════════════════════════════════╝
echo.
echo Iniciando servidor HTTP en puerto 8080...
echo.
cd frontend
npx http-server -p 8080 -o
