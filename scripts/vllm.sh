# https://github.com/vllm-project/vllm
# https://github.com/vllm-project/vllm/releases

# cu130 or cu129 ?
curl -L -O https://github.com/vllm-project/vllm/releases/download/v0.16.0/vllm-0.16.0+cu130-cp38-abi3-manylinux_2_35_x86_64.whl
uv pip install --system vllm-0.16.0+cu130-cp38-abi3-manylinux_2_35_x86_64.whl

curl -L -O https://github.com/vllm-project/vllm/releases/download/v0.16.0/vllm-0.16.0-cp38-abi3-manylinux_2_31_x86_64.whl
uv pip install --system vllm-0.16.0-cp38-abi3-manylinux_2_31_x86_64.whl
