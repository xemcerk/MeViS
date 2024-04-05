# 1. 准备数据和预训练权重
`bash prepare_dataset_weight.sh /path/to/data /path/to/ckpt /path/to/output`

# 2. 准备环境
TODO: 修改pytorch安装命令至与cuda版本匹配
`bash prepare_env.sh`

# 3. 训练模型 & 验证集evaluate
`bash run_train.sh`

# 4. 测试集inference & 打包sbumission结果
`bash run_test.sh`