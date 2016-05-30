#!/bin/bash
IP=222.206.30 #定义变量
> find_ip.txt
for i in `seq 0 61` #for循环，查找192.168.1.0-255的所有地址
#for i in 192.168.1.{1,254}
do
ping -c 2 $IP.$i > /dev/null 2>&1 #ping 只发两个包，要不然不会自动结束，另外将屏幕输出信息重定向
if [ `echo $?` -eq 0 ];then #使用 echo$?判断命令执行结果的返回值
echo $IP.$i >> find_ip.txt
#else
#echo $IP.$i >> find_ip.txt
fi
done
