本工程不用安装本地可编辑环境mmdet3d！


制作数据集pkl文件
    We genetate custom annotation files which are different from mmdet3d's
    export PYTHONPATH=./:$PYTHONPATH 若安装mmdet3d可编辑模式，则不用加该环境变量

    python tools/create_data.py nuscenes --root-path ./data/nuscenes \
        --out-dir ./data/nuscenes_data/pkl/nuscenes_v1.0_pkl \
        --extra-tag nuscenes --version v1.0 --canbus ./data/nuscenes

    python tools/create_data.py nuscenes --root-path ./data/nuscenes \
        --out-dir ./data/nuscenes_data/pkl/nuscenes_v1.0-mini_pkl \
        --extra-tag nuscenes --version v1.0-mini --canbus ./data/nuscenes 


训练：
    ./tools/dist_train.sh ./projects/configs/bevformer/bevformer_base.py 2

评测：
    ./tools/dist_test.sh ./projects/configs/bevformer/bevformer_base.py ./ckpts/bevformer/bevformer_r101_dcn_24ep.pth 1