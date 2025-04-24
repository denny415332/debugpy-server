@ECHO OFF

@REM 設定命令提示字元編碼為UTF-8，以正確顯示中文
chcp 65001

@REM 切換到目前批次檔所在目錄的上一層目錄
cd /d %~dp0\..

@REM 使用pyinstaller編譯
pyinstaller ^
--onefile ^
--name=debugpy-server ^
run-server.py

MSG * 編譯完成，請按任意鍵結束
