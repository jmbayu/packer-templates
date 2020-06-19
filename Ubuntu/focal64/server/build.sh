#!/usr/bin/env bash
export PACKER_LOG=10; export PACKER_LOG_PATH=logofpacker.txt
packer build -only=virtualbox-iso \
  -var-file=box_info.json -var-file=template.json ../../ubuntu-server-live-installer.json

exit 0
packer build -only=vmware-iso \
  -var-file=box_info.json -var-file=template.json ../../ubuntu-server-live-installer.json

# command -v qemu-system-x86_64 --version >/dev/null 2>&1
# QEMU_CHECK=$?
# if [ $QEMU_CHECK -eq 0 ]; then
#   if [[ $(uname) == "Darwin" ]]; then
#     QEMU_ACCEL="hvf"
#   elif [[ $(uname) == "Linux" ]]; then
#     QEMU_ACCEL="kvm"
#   fi
#   packer build -only=qemu -var qemu_accelerator=$QEMU_ACCEL \
#     -var-file=box_info.json \
#     -var-file=template.json ../../ubuntu-server-live-installer.json
# fi
