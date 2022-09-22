#!/bin/sh
cfg_file="configs/coco/hrnet/256x192_w32_lr1e-3.yaml"
trained_model="pretrained_models/hrnet_w32_256x192.pth"
img_directory="examples/demo"
output_directory="result/test"
python scripts/demo_inference.py --detector yolox-x --cfg ${cfg_file} --checkpoint ${trained_model} --indir ${img_directory} --save_img --vis_fast
