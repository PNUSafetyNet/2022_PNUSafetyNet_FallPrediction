#!/bin/sh
cfg_file="configs/coco/resnet/256x192_res50_lr1e-3_1x.yaml"
trained_model="pretrained_models/fast_res50_256x192.pth"
img_directory="examples/demo"
output_directory="result/test"
python scripts/demo_inference.py --detector yolox-x --cfg ${cfg_file} --checkpoint ${trained_model} --indir ${img_directory} --save_img
