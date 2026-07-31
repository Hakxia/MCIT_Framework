#!/bin/bash

gpu_list="${CUDA_VISIBLE_DEVICES:-0}"
IFS=',' read -ra GPULIST <<< "$gpu_list"

CHUNKS=${#GPULIST[@]}

if [ ! -n "$1" ] ;then
    STAGE='MoE_LoRA_Task8_Type1'
else
    STAGE=$1
fi

if [ ! -n "$2" ] ;then
     MODELPATH='./Checkpoints/LLaVA/CoIN/VizWiz_llava-1.5-7b-moe_lora'
else
    MODELPATH=$2
fi

RESULT_DIR="./results/CoIN/MoE_LoRA"

for IDX in $(seq 0 $((CHUNKS-1))); do
    CUDA_VISIBLE_DEVICES=${GPULIST[$IDX]} python -m llava.eval.CoIN.model_vizwiz \
        --model-path $MODELPATH \
        --model-base ./Checkpoints/Vicuna/vicuna-7b-v1.5 \
        --question-file ../../dataset/CoIN/Instructions_Refined/Instructions_Origin/VizWiz/val.json \
        --image-folder ../../dataset/CoIN/CL_dataset \
        --answers-file $RESULT_DIR/$STAGE/${CHUNKS}_${IDX}.jsonl \
        --num-chunks $CHUNKS \
        --chunk-idx $IDX \
        --temperature 0 \
        --conv-mode vicuna_v1 &

done

wait

output_file=$RESULT_DIR/$STAGE/merge.jsonl

# Clear out the output file if it exists.
> "$output_file"

# Loop through the indices and concatenate each file.
for IDX in $(seq 0 $((CHUNKS-1))); do
    cat $RESULT_DIR/$STAGE/${CHUNKS}_${IDX}.jsonl >> "$output_file"
done

python -m llava.eval.CoIN.eval_vizwiz \
    --annotation-file ../../dataset/CoIN/Instructions_Refined/Instructions_Origin/VizWiz/val.json \
    --result-file $RESULT_DIR/$STAGE/merge.jsonl \
    --output-dir $RESULT_DIR/$STAGE