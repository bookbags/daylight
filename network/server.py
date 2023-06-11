import socket

def createConnect(cb):
    hostname = socket.gethostname()
    serverSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
    print("hostname is", hostname)
    serverSocket.bind((hostname, 8081))
    serverSocket.listen(5)
    while True:
        print("等待用户连接")
        clientSocket, addr = serverSocket.accept()
        cb(clientSocket, addr)

def main():
    createConnect(response)

def response(clientSocket, addr):
    print("client Addr is ", addr)
    responseText = clientSocket.recv(1024)
    clientSocket.send("hello world")

if __name__ == "__main__":
    main()