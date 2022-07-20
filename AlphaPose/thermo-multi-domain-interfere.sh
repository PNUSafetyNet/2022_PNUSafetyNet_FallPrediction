#!/bin/sh
cfg_file="configs/halpe_coco_wholebody_136/resnet/256x192_res50_lr1e-3_2x-dcn-combined.yaml"
trained_model="pretrained_models/multi_domain_fast50_dcn_combined_256x192.pth"
img_directory="examples/demo"
output_directory="result/test"
python scripts/demo_inference.py --cfg ${cfg_file} --checkpoint ${trained_model} --indir ${img_directory} --outdir ${output_directory} --save_img
