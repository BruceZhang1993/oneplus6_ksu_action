#!/usr/bin/env bash

FILES=("fs/Makefile" "fs/internal.h" "fs/namei.c" "fs/proc/base.c" "fs/proc/task_mmu.c" "fs/proc_namespace.c" "fs/readdir.c" "kernel/sys.c" "mm/shmem.c")

URL="https://raw.githubusercontent.com/LineageOS/android_kernel_oneplus_sdm845/refs/heads/lineage-22.2"

mkdir -p a/fs
mkdir -p a/fs/proc
mkdir -p a/kernel
mkdir -p a/mm

for item in "${FILES[@]}"; do
    wget -O "a/$item" "$URL/$item"
done
