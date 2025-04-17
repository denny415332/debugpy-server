import debugpy
import time
import socket

# 設定debugpy監聽的IP和埠號
ip = socket.gethostbyname(socket.gethostname())
debugpy.listen((ip, 5678))
print(f"Listening on {ip}:5678")

try:
    # 若你希望在連線前先暫停腳本，可啟用下一行
    print("Waiting for debugger connection...")
    debugpy.wait_for_client()

    print("Debugger connected")
    while debugpy.is_client_connected():
        time.sleep(1)
except Exception as e:
    print(f"Error waiting for debugger connection: {e}")
except KeyboardInterrupt:
    print("User interrupted")


print("Debugger disconnected")
print("Program ended")
