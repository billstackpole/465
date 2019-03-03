#!/usr/bin/python
# tcp server POC
# stackpole 2019

#import functions
import socket
import threading

# set IP and port variables
bind_ip = "0.0.0.0"
bind_port = 9999

# as in client, define socket connection as IPv4 w/TCP payload
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# pass in IP and PORT to listen on...
server.bind((bind_ip,bind_port))

# start listening (no more than 5 concurrent connnections allowed)
server.listen(5)
print "[*] Listening on %s:%d" % (bind_ip,bind_port)

# this is our client-handling thread
def handle_client(client_socket):
   # print out what the client sends
   request = client_socket.recv(1024)
   print "[*] Received: %s" % request
   # send back a packet
   client_socket.send("ACK!")
   client_socket.close()

# begin main loop
while True:
   # when client connects, store socket in client vbl, connection details in addr
   client,addr = server.accept()
   print "[*] Accepted connection from: %s:%d" % (addr[0],addr[1])
   # spin up our client thread to handle incoming data
   client_handler = threading.Thread(target=handle_client,args=(client,))
   client_handler.start()
