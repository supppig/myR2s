make -j5
if [ $? != 0 ];then
    make -j1 V=s
    [ $? != 0 ] && exit 2
fi

sleep 5s
df -h

rm -rf dl
