make defconfig

for i in $(seq 5); do
    make download -j10
    [ $? = 0 ] && break
done

find dl -size -1024c -exec rm -f {} \;
dh -h
