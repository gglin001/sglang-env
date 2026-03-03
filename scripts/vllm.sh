# https://github.com/vllm-project/vllm
# https://github.com/vllm-project/vllm/releases

# cu130 or cu129 ?
curl -L -O https://github.com/vllm-project/vllm/releases/download/v0.16.0/vllm-0.16.0+cu130-cp38-abi3-manylinux_2_35_x86_64.whl
uv pip install --system vllm-0.16.0+cu130-cp38-abi3-manylinux_2_35_x86_64.whl

curl -L -O https://github.com/vllm-project/vllm/releases/download/v0.16.0/vllm-0.16.0-cp38-abi3-manylinux_2_31_x86_64.whl
uv pip install --system vllm-0.16.0-cp38-abi3-manylinux_2_31_x86_64.whl

# optional
# uv pip install --system "transformers>=5.0.0"

BASE_URL="https://wheels.vllm.ai/nightly/"
# BASE_URL="https://wheels.vllm.ai/nightly/cu129/vllm"
# BASE_URL="https://wheels.vllm.ai/nightly/cu130/vllm"

# cu129 eg:
# curl -O -L https://wheels.vllm.ai/3a6cbf16e27e164e81ac2259fe211cd930adf48f/vllm-0.16.1rc1.dev171%2Bg3a6cbf16e-cp38-abi3-manylinux_2_31_x86_64.whl
