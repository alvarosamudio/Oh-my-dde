#!/bin/bash
FILE=$1
F7=${FILE:0:7}
echo $F7
if [ $F7 == "file://" ] ; then
    NAME=${FILE:7}
else
    NAME=$FILE;
fi
if [ -d $NAME ] ; then
    echo "This is a dicentory!"
    notify-send -i "deepin-deb-installer" Warring This\ is\ a\ dicentory!
    exit 0
fi
DIR=${NAME:0:0-4}
echo "UnPackage $NAME to $DIR..."
notify-send -i "deepin-deb-installer" Warking UnPackage\ $NAME\ to\ $DIR...
dpkg -x $NAME $DIR
dpkg -e $NAME $DIR/DEBIAN
if [ $? -ne 0 ] ; then
    echo "ERROR: UnPackage failed!"
    notify-send -i "deepin-deb-installer" ERROR UnPackage\ failed!
else
    echo "Done UnPackage $NAME Success!"
    notify-send -i "deepin-deb-installer" Done UnPackage\ $NAME\ Success!
fi