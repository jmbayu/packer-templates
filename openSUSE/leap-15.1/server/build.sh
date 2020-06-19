#! /usr/bin/env bash
packer build -only=virtualbox-iso -var-file=box_info.json -var-file=template.json ../../opensuse-server.json