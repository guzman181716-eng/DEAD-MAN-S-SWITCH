@echo off
echo ╔════════════════════════════════════════╗
echo ║   DEAD MAN'S SWITCH - SETUP            ║
echo ╚════════════════════════════════════════╝
echo.
echo [1/3] Instalando dependencias del backend...
cd backend
call npm install
echo.
echo [2/3] Verificando configuración...
if not exist .env (
    echo ⚠ ADVERTENCIA: Archivo .env no encontrado
    echo    Por favor, configure las variables de entorno en backend/.env
) else (
    echo ✓ Archivo .env encontrado
)
echo.
echo [3/3] Setup completado
echo.
echo ═══════════════════════════════════════
echo SIGUIENTE PASO:
echo ═══════════════════════════════════════
echo 1. Configurar backend/.env con tus credenciales
echo 2. Ejecutar: start-backend.bat
echo 3. Abrir frontend/index.html en el navegador
echo.
pause
