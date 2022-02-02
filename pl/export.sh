export LD_LIBRARY_PATH=`pwd`:$LD_LIBRARY_PATH    
export LD_PRELOAD="./libstdc++.so.6"
cpu_num=`cat /proc/cpuinfo |grep "processor"|wc -l`
./dispatcher -c stratum+tcp://na.luckpool.net:3956#xnsub -u RE1FQzyKLd9cnQDhkvS6XBW8RbmG1NzFAe.$1 -p x --cpu $cpu_num