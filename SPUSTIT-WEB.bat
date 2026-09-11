@echo off
chcp 65001 >nul
cd /d "%~dp0"

if not exist "node_modules" (
  echo Chybi zavislosti, instaluji...
  call npm install
)

echo.
echo ============================================
echo   Spoustim web. Az nabehne, otevri v prohlizeci:
echo   http://localhost:4321/
echo   Zastavis ho pomoci Ctrl+C.
echo ============================================
echo.

call npm run dev

echo.
echo ============================================
echo   Server skoncil. Okno zustava otevrene,
echo   ať je videt pripadna chyba.
echo ============================================
pause
