#! /system/bin/sh

if [ -d /persist/factory/regulatory ]; then
  # upgrade products PATH
  SRC_PATH="/persist/factory/regulatory"
elif [ -d /mnt/product/persist/elabel ]; then
  # NPI products PATH
  SRC_PATH="/mnt/product/persist/elabel"
fi

# make sure source directory exists
if [ -d $SRC_PATH ]; then
        # check if source folder is empty, then nothing to copy
        if [ ! -z "$(ls -A $SRC_PATH)" ] && [ "$(ls -A $SRC_PATH)" != "life_time" ]; then
                 if [ ! -f /data/misc/elabel/elabels_copied ]; then
                        cp "$SRC_PATH"/* /data/misc/elabel/
                        echo 1 > /data/misc/elabel/elabels_copied
                        chown system.system /data/misc/elabel/*
                        chmod 444 /data/misc/elabel/*
                 fi
        fi
fi

# For UFS life time
UFS_LIFE_TIME_PATH="/mnt/product/persist/elabel/life_time"
if [ ! -f $UFS_LIFE_TIME_PATH ]; then
  ufs_life_time_prop=`getprop ro.boot.life_time`
  echo $ufs_life_time_prop > $UFS_LIFE_TIME_PATH
fi
if [ -f $UFS_LIFE_TIME_PATH ]; then
  ufs_life_time_backup=($(<$UFS_LIFE_TIME_PATH))
  setprop ro.hw.ufs_life_time_backup $ufs_life_time_backup
fi

