import socket

def createSocket():
    serverSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
    serverSocket.bind(("127.0.0.1", 8085))
    serverSocket.listen()
    print("await to accept")
    clientSocket, addr = serverSocket.accept()
    data = clientSocket.recv(1024)
    print("addr is ", addr)
    print("data is ", data)

if __name__ == "__main__":
    createSocket()