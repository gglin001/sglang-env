#!/usr/bin/env bash
set -euo pipefail

export CUDA_VISIBLE_DEVICES="0"
# export CUDA_VISIBLE_DEVICES="0,1"
export CUDA_DEVICE_ORDER=PCI_BUS_ID

# needs:
# pixi shell -e cu130
# pixi shell -e cu129

args=(
  #
  third_party/GLM-OCR
  --served-model-name OCR
  --speculative-config.method mtp
  --speculative-config.num_speculative_tokens 1
  #
  # third_party/FireRed-OCR
  # --served-model-name OCR
  #
  # --load-format dummy
  #
  # --host 0.0.0.0
  --host 127.0.0.1
  --port 11235
  #
  --trust-remote-code
  --uvicorn-log-level warning
  #
  # -tp 2
  #
)
vllm serve "${args[@]}" 2>&1 | tee vllm.log
