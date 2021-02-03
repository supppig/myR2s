curl -fsSL git.io/file-transfer | sh
./transfer cow --block 2621440 -s -p 64 --no-progress ./supppig 2>&1 | tee cowtransfer.log
echo "::warning file=Firmware-Cowtransfer.com::$(cat cowtransfer.log | grep https)"
echo "奶牛快传: $(cat cowtransfer.log | grep https)" >>url.log

./transfer wet -s -p 16 --no-progress ./supppig 2>&1 | tee wetransfer.log
echo "::warning file=Firmware-Wetransfer.com::$(cat wetransfer.log | grep https)"
echo "WeTransfer: $(cat wetransfer.log | grep https)" >>url.log
