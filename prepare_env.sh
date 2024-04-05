conda create --name mevis python=3.10 -y
source activate mevis

# TODO: 修改至与cuda版本匹配
conda install pytorch==1.9.0 torchvision==0.10.0 cudatoolkit=11.1 -c pytorch -c nvidia
pip install -U opencv-python
python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'

cd mask2former/modeling/pixel_decoder/ops
sh make.sh

pip install -r requirements.txt
