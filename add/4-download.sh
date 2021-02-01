make defconfig

make download -j10
[ $? != 0 ] && exit 1
