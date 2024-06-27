#! /bin/bash

# 配置工程的训练环境
rm -rf data/nuscenes
mkdir -p data
ln -s /mnt/ve_parking/sunlibo/nuscenes data/nuscenes

rm -rf ckpts
ln -s /mnt/ve_parking/sunlibo/nuscenes/ckpts ckpts