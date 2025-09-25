# 项目说明

使用 GitHub Actions 编译 OnePlus6 SukiSU Ultra 内核，基于 LineageOS 内核源代码

基于 LineageOS 22.2 OnePlus6 内核源码编译

## 支持特性  

### KernelSU

- [x] KernelSU 0.9.5 版本

### SukiSU Ultra

- [x] SukiSU Ultra NON-GKI 最新
- [x] SuSFS 1.5.5 (kernel-4.9) 开启全部特性支持
- [x] KPM 支持

### 杂项

- [x] 移除内核版本号 -dirty 后缀
- [x] 增加应用隐藏补丁
- [x] 增加 zram lz4kd 算法
- [x] 支持 GitHub Actions 编译选项

### 参考

- [LineageOS/android_kernel_oneplus_sdm845](https://github.com/LineageOS/android_kernel_oneplus_sdm845) 作为基础内核
- [SukiSU Ultra 项目地址](https://github.com/SukiSU-Ultra/SukiSU-Ultra) SukiSU Ultra 主仓库
- [SukiSU Ultra 相关修补文件](https://github.com/SukiSU-Ultra/SukiSU_patch) 用于参考进行 SukiSU Ultra & SuSFS & KPM 内核修补及其他杂项修补
- [SukiSU Ultra 一加 SukiSU Ultra 内核编译工作流](https://github.com/ShirkNeko/Action_OnePlus_MKSU_SUSFS) 用于参考内核修补整体流程及内核配置项
- [SuSFS 4.9 内核修补](https://gitlab.com/simonpunk/susfs4ksu/-/tree/kernel-4.9?ref_type=heads) 用于参考 SuSFS 内核修补
- [Elixir Cross Referencer](https://elixir.bootlin.com/linux/v4.19.325/C/ident/set_memory_ro) 用于反向移植 set_memory.h 以支持 KPM
- [MediaTek-Labs/common-kernel-4.19](https://github.com/MediaTek-Labs/common-kernel-4.19) 用于反向移植 set_memory.h 以支持 KPM
- LZ4KD compression algorithm from HUAWEI
