output_dir=output/debug_run_test
python train_net_lmpm.py \
    --config-file configs/lmpm_SWIN_bs8.yaml \
    --num-gpus 1 --dist-url auto --eval-only \
    MODEL.WEIGHTS output/debug_run/model_final.pth \
    OUTPUT_DIR $output_dir DATASETS.TEST '("mevis_test",)'
cd $output_dir/inference && zip -r submission.zip ./*