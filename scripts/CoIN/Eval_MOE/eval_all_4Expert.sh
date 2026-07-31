#!/bin/bash

#sh ./scripts/CoIN/Eval_MOE/1_eval_sqa.sh 4_Expert/ScienceQA/Task1 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/ScienceQA/llava-1.5-7b-moe_lora
#
#sh ./scripts/CoIN/Eval_MOE/1_eval_sqa.sh 4_Expert/ScienceQA/Task2 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/TextVQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/2_eval_textqa.sh 4_Expert/TextVQA/Task2 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/TextVQA/llava-1.5-7b-moe_lora
#
#sh ./scripts/CoIN/Eval_MOE/1_eval_sqa.sh 4_Expert/ScienceQA/Task3 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/ImageNet/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/2_eval_textqa.sh 4_Expert/TextVQA/Task3 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/ImageNet/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/3_eval_ImageNet.sh 4_Expert/ImageNet/Task3 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/ImageNet/llava-1.5-7b-moe_lora
#
#sh ./scripts/CoIN/Eval_MOE/1_eval_sqa.sh 4_Expert/ScienceQA/Task4 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/GQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/2_eval_textqa.sh 4_Expert/TextVQA/Task4 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/GQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/3_eval_ImageNet.sh 4_Expert/ImageNet/Task4 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/GQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/4_eval_gqa.sh 4_Expert/GQA/Task4 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/GQA/llava-1.5-7b-moe_lora

#sh ./scripts/CoIN/Eval_MOE/1_eval_sqa.sh 4_Expert/ScienceQA/Task5 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VizWiz/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/2_eval_textqa.sh 4_Expert/TextVQA/Task5 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VizWiz/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/3_eval_ImageNet.sh 4_Expert/ImageNet/Task5 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VizWiz/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/4_eval_gqa.sh 4_Expert/GQA/Task5 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VizWiz/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/5_eval_vizwiz.sh 4_Expert/VizWiz/Task5 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VizWiz/llava-1.5-7b-moe_lora
#
#sh ./scripts/CoIN/Eval_MOE/1_eval_sqa.sh 4_Expert/ScienceQA/Task6 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/Grounding/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/2_eval_textqa.sh 4_Expert/TextVQA/Task6 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/Grounding/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/3_eval_ImageNet.sh 4_Expert/ImageNet/Task6 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/Grounding/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/4_eval_gqa.sh 4_Expert/GQA/Task6 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/Grounding/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/5_eval_vizwiz.sh 4_Expert/VizWiz/Task6 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/Grounding/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/6_eval_grounding.sh 4_Expert/Grounding/Task6 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/Grounding/llava-1.5-7b-moe_lora
#
#sh ./scripts/CoIN/Eval_MOE/1_eval_sqa.sh 4_Expert/ScienceQA/Task7 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VQAv2/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/2_eval_textqa.sh 4_Expert/TextVQA/Task7 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VQAv2/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/3_eval_ImageNet.sh 4_Expert/ImageNet/Task7 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VQAv2/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/4_eval_gqa.sh 4_Expert/GQA/Task7 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VQAv2/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/5_eval_vizwiz.sh 4_Expert/VizWiz/Task7 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VQAv2/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/6_eval_grounding.sh 4_Expert/Grounding/Task7 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VQAv2/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/7_eval_vqav2.sh 4_Expert/VQAv2/Task7 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VQAv2/llava-1.5-7b-moe_lora

#sh ./scripts/CoIN/Eval_MOE/1_eval_sqa.sh 4_Expert/ScienceQA/Task8 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/OCRVQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/2_eval_textqa.sh 4_Expert/TextVQA/Task8 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/OCRVQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/3_eval_ImageNet.sh 4_Expert/ImageNet/Task8 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/OCRVQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/4_eval_gqa.sh 4_Expert/GQA/Task8 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/OCRVQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/5_eval_vizwiz.sh 4_Expert/VizWiz/Task8 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/OCRVQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/6_eval_grounding.sh 4_Expert/Grounding/Task8 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/OCRVQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/7_eval_vqav2.sh 4_Expert/VQAv2/Task8 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/OCRVQA/llava-1.5-7b-moe_lora
#sh ./scripts/CoIN/Eval_MOE/8_eval_ocrvqa.sh 4_Expert/OCRVQA/Task8 ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/OCRVQA/llava-1.5-7b-moe_lora