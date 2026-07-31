################## VICUNA ##################
PROMPT_VERSION=v1
MODEL_VERSION="vicuna-7b-v1.5"
################## VICUNA ##################


################## LLaMA-2 ##################
# PROMPT_VERSION="llava_llama_2"
# MODEL_VERSION="Llama-2-7b-chat-hf"
################## LLaMA-2 ##################

deepspeed --include localhost:0,1 --master_port 29600 llava/train/train_mem_MOE.py \
    --deepspeed ./scripts/zero2.json \
    --lora_enable True --lora_r 64 --lora_alpha 128 --mm_projector_lr 2e-5 \
    --expert_num 4 \
    --model_name_or_path ./Checkpoints/Vicuna/vicuna-7b-v1.5 \
    --previous_task_model_path ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/Grounding/llava-1.5-7b-moe_lora \
    --version $PROMPT_VERSION \
    --data_path ../../dataset/CoIN/Instructions_Refined/Instructions_Origin/VQAv2/train.json \
    --image_folder ../../dataset/CoIN/CL_dataset \
    --vision_tower ./Checkpoints/Openai/clip-vit-large-patch14-336 \
    --mm_projector_type mlp2x_gelu \
    --mm_vision_select_layer -2 \
    --mm_use_im_start_end False \
    --mm_use_im_patch_token False \
    --image_aspect_ratio pad \
    --group_by_modality_length True \
    --bf16 True \
    --output_dir ./Checkpoints/LLaVA/CoIN/MoE_LoRA/4_Expert/VQAv2/llava-1.5-7b-moe_lora \
    --num_train_epochs 1 \
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 16 \
    --gradient_accumulation_steps 16 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 50000 \
    --learning_rate 2e-4 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --tf32 True \
    --model_max_length 2048 \
    --gradient_checkpointing True \
    --dataloader_num_workers 4 \
    --lazy_preprocess True \
    --report_to none