while true
do
ps -aux | grep kinsing | grep -v grep | awk '{print $2}'|xargs kill -9
ps -aux | grep kdevtmpfsi | grep -v grep | awk '{print $2}'|xargs kill -9
done