#!/usr/bin/bash

( lscpu ; date ) > command_1.out
( sudo lshw -short ; date ; md5sum command_1.out ) > command_2.out
( lsblk ; date ; md5sum command_2.out ) > command_3.out
( df -H ; date ; md5sum command_3.out ) > command_4.out
( sudo fdisk -l ; date ; md5sum command_4.out ) > command_5.out
( mount | column -t ; date ; md5sum command_5.out ) > command_6.out
( sudo dmidecode -t bios ; date ; md5sum command_6.out ) > command_7.out
( cat /proc/cpuinfo ; date ; md5sum command_7.out ) > command_8.out
( cat /proc/partitions ; date ; md5sum command_8.out ) > command_9.out
( cat /proc/version ; date ; md5sum command_9.out ) > command_10.out

echo 'MD5' > command_md5.out

for i in `seq 1 10`; do
    md5sum command_${i}.out >> command_md5.out    
done

date >> command_md5.out

tar -czvf rn1334_output.tar.gz command*.out 
rm command*.out
