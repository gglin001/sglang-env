# https://github.com/vllm-project/vllm
# https://github.com/vllm-project/vllm/releases

# cu130
curl -L -O https://github.com/vllm-project/vllm/releases/download/v0.22.1/vllm-0.22.1-cp38-abi3-manylinux_2_28_x86_64.whl
# cu129
curl -L -O https://github.com/vllm-project/vllm/releases/download/v0.22.1/vllm-0.22.1+cu129-cp38-abi3-manylinux_2_28_x86_64.whl

# pixi shell -e cu130
# pixi shell -e cu129

# uv pip install --system vllm-0.22.1-cp38-abi3-manylinux_2_28_x86_64.whl
# uv pip install --system vllm-0.22.1+cu129-cp38-abi3-manylinux_2_28_x86_64.whl
# optional
# uv pip install --system "transformers>=5.0.0"

# BASE_URL="https://wheels.vllm.ai/nightly/"
# BASE_URL="https://wheels.vllm.ai/nightly/cu129/vllm"
# BASE_URL="https://wheels.vllm.ai/nightly/cu130/vllm"

# cu130 eg:
# curl -O -L https://wheels.vllm.ai/fa27d4e9cf3c8d8a5a143f38c346b27c02b2c2e3/vllm-0.22.1rc1.dev237%2Bgfa27d4e9c-cp38-abi3-manylinux_2_28_x86_64.whl
# cu129 eg:
# curl -O -L https://wheels.vllm.ai/fa27d4e9cf3c8d8a5a143f38c346b27c02b2c2e3/vllm-0.22.1rc1.dev237%2Bgfa27d4e9c.cu129-cp38-abi3-manylinux_2_28_x86_64.whl

for file in *%2B*; do mv -n -- "$file" "${file//%2B/+}"; done

# pixi shell -e cu130
# pixi shell -e cu129

# uv pip install --system vllm-*.whl
# uv pip install --system vllm-*cu129*.whl
# uv pip ls
