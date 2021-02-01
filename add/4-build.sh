make defconfig

make download -j10
[ $? != 0 ] && exit 1

make -j5
if [ $? != 0 ];then
    make -j1 V=s
    [ $? != 0 ] && exit 2
fi
