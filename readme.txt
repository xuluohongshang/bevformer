We genetate custom annotation files which are different from mmdet3d's
# 1. 制作数据集pkl文件

export PYTHONPATH=./  或 export PYTHONPATH="/mnt/share_disk/sunlibo/projects/BEVFormer:$PYTHONPATH"

python tools/create_data.py nuscenes --root-path ./data/nuscenes_data/nuscenes \
    --out-dir ./data/nuscenes_data/nuscenes_v1.0_pkl \
    --extra-tag nuscenes --version v1.0 --canbus ./data/nuscenes_data/

python tools/create_data.py nuscenes --root-path ./data/nuscenes_data/nuscenes \
    --out-dir ./data/nuscenes_data/nuscenes_v1.0-mini_pkl \
    --extra-tag nuscenes --version v1.0-mini --canbus ./data/nuscenes_data/ 


训练：
./tools/dist_train.sh ./projects/configs/bevformer/bevformer_base.py 2

评测：
./tools/dist_test.sh ./projects/configs/bevformer/bevformer_base.py ./ckpts/bevformer/bevformer_r101_dcn_24ep.pth 1