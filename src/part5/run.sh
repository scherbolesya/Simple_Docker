#!/bin/bash
 
gcc -o mini_web_server mini_web_server.c -lfcgi
spawn-fcgi -p 8080 ./mini_web_server
service nginx start
/bin/bash
