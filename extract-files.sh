#!/bin/bash
#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

ROM_ROOT=../../..

# Required!
export DEVICE=perseus
export DEVICE_COMMON=sdm845-common
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2019


"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"

BLOB_ROOT="$ROM_ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary

# Load com.vidhance.node.eis shim
VIDHANCE_EIS="$BLOB_ROOT"/vendor/lib/camera/components/com.vidhance.node.eis.so
patchelf --add-needed com.vidhance.node.eis.shim.so "$VIDHANCE_EIS"

#patch glgps
GLGPS_BLOB="$BLOB_ROOT"/vendor/bin/glgps
sed -i "s/SSLv3_client_method/SSLv23_method\x00\x00\x00\x00\x00\x00/" "$GLGPS_BLOB"


