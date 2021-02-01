make defconfig

for i in $(seq 5); do
    make download -j5
    [ $? = 0 ] && break
done
