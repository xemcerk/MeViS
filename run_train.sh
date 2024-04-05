python train_net_lmpm.py \
    --config-file configs/lmpm_SWIN_bs8.yaml \
    --num-gpus 1 --dist-url auto \
    MODEL.WEIGHTS ckpt/model_final_86143f.pkl \
    OUTPUT_DIR output/debug_run