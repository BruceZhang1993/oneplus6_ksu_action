#!/usr/bin/env bash

FILES=("drivers/input/input.c" "drivers/tty/pty.c" "fs/exec.c" "fs/open.c" "fs/read_write.c" "fs/stat.c" "fs/devpts/inode.c" "fs/namespace.c")

URL="https://raw.githubusercontent.com/LineageOS/android_kernel_oneplus_sdm845/refs/heads/lineage-22.2"

mkdir -p a/drivers/input
mkdir -p a/drivers/tty
mkdir -p a/fs
mkdir -p a/fs/devpts

for item in "${FILES[@]}"; do
    wget -O "a/$item" "$URL/$item"
done
