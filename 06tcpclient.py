#!/usr/bin/python
# tcp client example 5
#stackpole - 2019

import socket
target_host = "127.0.0.1"
target_port = 9999 #(no quotes for integers)
    # create socket object
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
   #connect the client
client.connect((target_host,target_port))
   # send some data
client.send("Message sent from 5tcpserver.py")
# receive some data
response = client.recv(4096)
print response

