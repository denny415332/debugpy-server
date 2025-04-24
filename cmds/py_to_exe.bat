@REM Debugpy 套件不好編譯成exe，所以不使用

@REM @ECHO OFF

@REM @REM 設定命令提示字元編碼為UTF-8，以正確顯示中文
@REM chcp 65001

@REM @REM 切換到目前批次檔所在目錄的上一層目錄
@REM cd /d %~dp0\..

@REM @REM 使用pyinstaller編譯
@REM pyinstaller ^
@REM --onefile ^
@REM --name=debugpy-server ^
@REM run-server.py

@REM MSG * 編譯完成，請按任意鍵結束
