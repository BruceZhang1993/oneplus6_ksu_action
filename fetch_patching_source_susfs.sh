#!/usr/bin/env bash

FILES=("fs/Makefile" "fs/internal.h" "fs/namei.c" "fs/proc/base.c" "fs/proc/task_mmu.c" "fs/proc_namespace.c" "fs/readdir.c" "kernel/sys.c" "mm/shmem.c")

URL="https://raw.githubusercontent.com/LineageOS/android_kernel_oneplus_sdm845/refs/heads/lineage-22.2"

mkdir -p c/fs
mkdir -p c/fs/proc
mkdir -p c/kernel
mkdir -p c/mm

for item in "${FILES[@]}"; do
    wget -O "c/$item" "$URL/$item"
done
