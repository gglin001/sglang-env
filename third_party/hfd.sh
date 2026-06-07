# https://hf-mirror.com/
wget https://hf-mirror.com/hfd/hfd.sh
chmod a+x hfd.sh
cp hfd.sh ~/.local/bin/

export HF_ENDPOINT=https://hf-mirror.com

pushd third_party

hfd.sh FireRedTeam/FireRed-OCR
# https://huggingface.co/FireRedTeam/FireRed-OCR

popd
