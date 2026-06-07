#!/usr/bin/env bash
set -euo pipefail

# export CUDA_VISIBLE_DEVICES="0"
export CUDA_VISIBLE_DEVICES="1"
# export CUDA_VISIBLE_DEVICES="0,1"
export CUDA_DEVICE_ORDER=PCI_BUS_ID

# needs:
# pixi shell -e cu130
# pixi shell -e cu129

export VLLM_NO_USAGE_STATS=1
export VLLM_DO_NOT_TRACK=1
export DO_NOT_TRACK=1

args=(
  #
  # third_party/GLM-OCR
  # --served-model-name OCR
  # --speculative-config.method mtp
  # --speculative-config.num_speculative_tokens 1
  #
  # third_party/FireRed-OCR
  # --served-model-name OCR
  #
  # third_party/chandra-ocr-2
  # --served-model-name OCR
  #
  third_party/PaddleOCR-VL-1.6
  --served-model-name OCR
  #
  # --load-format dummy
  # --enforce-eager
  #
  # --host 0.0.0.0
  --host 127.0.0.1
  --port 21235
  #
  --trust-remote-code
  --uvicorn-log-level warning
  # --disable-log-requests
  #
  # -tp 2
  #
)
vllm serve "${args[@]}" 2>&1 | tee vllm-2.log
