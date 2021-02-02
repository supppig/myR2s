make defconfig

for i in $(seq 5); do
    echo "第i次下载"
    make download -j10
    [ $? = 0 ] && break
done

find dl -size -1024c -exec rm -f {} \;

sleep 5s
df -h
