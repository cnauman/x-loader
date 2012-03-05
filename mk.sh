#set -x
# make distclean; make omap3devkit8000_config
STRING="#define CONFIG_MMC"
FILE=include/configs/omap3devkit8000.h
sed -i "s%^$STRING%//$STRING%g" $FILE
make
cp -p MLO x-load.bin.ift_NAND
sed -i "s%^//$STRING%$STRING%g" $FILE
make
