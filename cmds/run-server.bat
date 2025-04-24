@REM 切換到目前批次檔所在目錄的上一層目錄
cd /d %~dp0\..

python -m debugpy --listen 10.3.63.15:5678 --wait-for-client ./main.ipynb
