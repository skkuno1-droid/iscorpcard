@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ==========================================
echo  법인카드 집근처 분석 - http://localhost:8080
echo  이 창을 닫으면 종료됩니다.
echo ==========================================
start "" http://localhost:8080/index.html
where py >nul 2>nul && (py -m http.server 8080 --bind 127.0.0.1 & goto :eof)
python -m http.server 8080 --bind 127.0.0.1
