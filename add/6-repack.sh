unzip -P ${ZIP_PWD} mbr.zip
chmod 777 ./mbrConf/mbrFix

mkdir supppig

for i in 16g 2g; do
    ./mbrConf/mbrFix \
        -if=./bin/targets/rockchip/armv8/openwrt-rockchip-armv8-friendlyarm_nanopi-r2s-squashfs-sysupgrade.img.gz \
        -of=fix.img.gz \
        -conf=./mbrConf/${i}.json
    md=$(md5sum fix.img.gz | cut -d' ' -f1)
    mv fix.img.gz ./supppig/sdcard-${i}-${md}.img.gz
done

mv ./bin/targets/rockchip/armv8/openwrt-rockchip-armv8-friendlyarm_nanopi-r2s-squashfs-sysupgrade.img.gz ./supppig
mv ./bin/targets/rockchip/armv8/config.buildinfo ./supppig
