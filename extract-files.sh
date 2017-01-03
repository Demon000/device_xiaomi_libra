#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

DEVICE=libra
VENDOR=xiaomi

# Load extractutils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

CM_ROOT="$MY_DIR"/../../..

HELPER="$CM_ROOT"/vendor/cm/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

if [ $# -eq 0 ]; then
  SRC=adb
else
  if [ $# -eq 1 ]; then
    SRC=$1
  else
    echo "$0: bad number of arguments"
    echo ""
    echo "usage: $0 [PATH_TO_EXPANDED_ROM]"
    echo ""
    echo "If PATH_TO_EXPANDED_ROM is not specified, blobs will be extracted from"
    echo "the device using adb pull."
    exit 1
  fi
fi

#
# fix_xml:
#
# $1: xml file to fix
#
function fix_elf() {
    local ELF="$1"

    if [[ "$ELF" == *"lib/rfsa/adsp/"* ]]; then
        return
    fi

    /media/Data/repositories/git/patchelf/src/patchelf \
        --rename-symbol androidGetTid gettid \
        --rename-symbol _ZN7android5Fence4waitEj _ZN7android5Fence4waitEi \
        "$ELF"
}

function dex_decomp() {
    local FILE="$1"
    local DECOMPDIR="$2"
    local DEXFILE="$TMPDIR/classes.dex"

    unzip -p "$FILE" classes.dex > "$DEXFILE"
    baksmali -a 22 -o "$DECOMPDIR" "$DEXFILE"
}

function dex_recomp() {
    local FILE="$1"
    local DECOMPDIR="$2"
    local DEXFILE="$TMPDIR/classes.dex"

    smali -a 22 -o "$DEXFILE" "$DECOMPDIR"
    zip -gjq "$FILE" "$DEXFILE"
}

function fix_java() {
    local FILE="$1"
    local ZIPCONTENTS="$TMPDIR/zipcontents"
    local DECOMPDIR="$TMPDIR/baksmali_out"

    if [[ "$FILE" == *"datastatusnotification.apk" ]]; then
        dex_decomp "$FILE" "$DECOMPDIR"
        find "$DECOMPDIR" -type f -print0 | xargs -0 sed -i 's/getIccOperatorNumeric/getSimOperator/g'
        dex_recomp "$FILE" "$DECOMPDIR"
    fi
}

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$CM_ROOT"

extract "$MY_DIR"/proprietary-files.txt "$SRC"

"$MY_DIR"/setup-makefiles.sh
