# https://hf-mirror.com/
wget https://hf-mirror.com/hfd/hfd.sh
chmod a+x hfd.sh
cp hfd.sh ~/.local/bin/

export HF_ENDPOINT=https://hf-mirror.com

pushd third_party

hfd.sh zai-org/GLM-OCR
# https://huggingface.co/zai-org/GLM-OCR

hfd.sh FireRedTeam/FireRed-OCR
# https://huggingface.co/FireRedTeam/FireRed-OCR

hfd.sh datalab-to/chandra-ocr-2
# https://huggingface.co/datalab-to/chandra-ocr-2

hfd.sh PaddlePaddle/PaddleOCR-VL-1.6
# https://huggingface.co/PaddlePaddle/PaddleOCR-VL-1.6

hfd.sh rednote-hilab/dots.mocr
# https://huggingface.co/rednote-hilab/dots.mocr

hfd.sh rednote-hilab/dots.mocr-svg
# https://huggingface.co/rednote-hilab/dots.mocr-svg

hfd.sh tencent/HunyuanOCR
# https://huggingface.co/tencent/HunyuanOCR

popd
