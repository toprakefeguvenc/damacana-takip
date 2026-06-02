@echo off
cd /d "%~dp0"
echo [1/2] Web dosyalari www klasorune kopyalaniyor...
copy /y index.html www\ >nul
copy /y manifest.json www\ >nul
copy /y icon.svg www\ >nul
copy /y sw.js www\ >nul
echo [2/2] Capacitor senkronize ediliyor...
call npx cap sync android
echo.
echo === HAZIR! ===
echo Android Studio'da acmak icin: npx cap open android
echo APK almak icin: Android Studio'da Build ^> Build Bundle(s) / APK(s)
echo.
pause
