#!/usr/bin/python
# tcp client example 3
#stackpole - 2019

import socket
target_host = "rit.edu"
target_port = 80 #(no quotes for integers)
    # create socket object
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
   #connect the client
client.connect((target_host,target_port))
   # send some data
client.send("Get / HTTP/1.1\r\n Host:rit.edu\r\n\r\n")
# receive some data
response = client.recv(4096)
print response

