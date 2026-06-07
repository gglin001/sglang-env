export CUDA_VISIBLE_DEVICES="0"
# export CUDA_VISIBLE_DEVICES="0,1"
export CUDA_DEVICE_ORDER=PCI_BUS_ID

args=(
  #
  third_party/FireRed-OCR
  --served-model-name zai-org/FireRed-OCR
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
  --speculative-config.method mtp
  --speculative-config.num_speculative_tokens 1
  #
)
vllm serve "${args[@]}" 2>&1 | tee vllm.log
