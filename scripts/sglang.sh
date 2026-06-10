# https://github.com/sgl-project/sglang
# https://github.com/sgl-project/sglang/releases
# https://github.com/sgl-project/whl
# https://github.com/sgl-project/whl/releases
# https://docs.sglang.io/docs/get-star˝ted/install

# pip install --upgrade pip
# pip install uv
# uv pip install sglang
# uv pip install --force-reinstall  torch==2.11.0 torchaudio==2.11.0 torchvision --index-url https://download.pytorch.org/whl/cu129
# uv pip install --force-reinstall sglang-kernel --index-url https://docs.sglang.ai/whl/cu129/
# uv pip install --force-reinstall sgl-deep-gemm --index-url https://docs.sglang.ai/whl/cu129/ --no-deps

https://docs.sglang.ai/whl/cu130/
https://docs.sglang.ai/whl/cu129/

pixi shell -e cu130
# cu130
uv pip install --system sglang --index-url https://docs.sglang.ai/whl/cu130/
uv pip install --system --force-reinstall sglang-kernel --index-url https://docs.sglang.ai/whl/cu130/
uv pip install --system --force-reinstall sgl-deep-gemm --index-url https://docs.sglang.ai/whl/cu130/ --no-deps

pixi shell -e cu129
# cu129
uv pip install --system sglang --index-url https://docs.sglang.ai/whl/cu129/
uv pip install --system --force-reinstall sglang-kernel --index-url https://docs.sglang.ai/whl/cu129/
uv pip install --system --force-reinstall sgl-deep-gemm --index-url https://docs.sglang.ai/whl/cu129/ --no-deps

# down wheel
uv pip install --system sglang -v --dry-run 2>&1 | grep 'sglang-'
uv pip install --system sglang --index-url https://docs.sglang.ai/whl/cu129/ \
  -v --dry-run 2>&1 | grep 'sglang-'
