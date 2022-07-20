#!/bin/sh
cfg_file="configs/halpe_coco_wholebody_136/resnet/256x192_res50_lr1e-3_2x-dcn-combined.yaml"
trained_model="pretrained_models/multi_domain_fast50_dcn_combined_256x192.pth"
python scripts/demo_inference.py --detector yolox-x --cfg ${cfg_file} --checkpoint ${trained_model} --outdir examples/res --vis --webcam 0
