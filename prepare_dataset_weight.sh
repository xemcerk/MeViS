# 输入存放数据集地址
work_dir=$'pwd'
datset_path=$1
weight_path=$2
output_path=$3
cd $dataset_path

# 从对象存储源下载数据集备份后解压
wget https://pvuwchallenge-1302278582.cos.ap-beijing.myqcloud.com/mevis.zip && unzip mevis.zip && rm mevis.zip

# 解压视频数据
cd mevis
cd train && tar -xvf JPEGImages.tar && rm JPEGImages.tar && cd ..
cd valid && tar -xvf JPEGImages.tar && rm JPEGImages.tar && cd ..
cd valid_u && tar -xvf JPEGImages.tar && rm JPEGImages.tar && cd ..

# 创建datasets目录
cd $work_dir
mkdir datasets
ln -s datasets/mevis $dataset_path/mevis

# 下载和处理预训练模型权重
cd $weight_path
wget https://dl.fbaipublicfiles.com/maskformer/mask2former/coco/instance/maskformer2_swin_tiny_bs16_50ep/model_final_86143f.pkl
cd $work_dir
ln -s ckpt $weight_path
cp tools/process_ckpt.py
cd $work_dir/ckpt && python process_ckpt.py && cd ..

# 创建output目录
ln -s output $output_path


