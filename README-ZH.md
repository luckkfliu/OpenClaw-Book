# OpenClaw-Book

**中文 | [English](README.md)**

OpenClaw 技术文档的 LaTeX 精排版本，支持多语言。基于 XeLaTeX + ctex 排版引擎，提供专业的中英文混排、语法高亮代码块、自动生成目录与交叉引用，输出印刷级品质的 PDF 文档。

## 目录结构

```
OpenClaw-Book/
├── ZH/                           # 中文版
│   ├── chapters/                 # 完整版各章节 .tex 文件
│   ├── chapters-lite/            # 精简版各章节 .tex 文件
│   ├── openclaw-book-zh.tex      # 主文档（完整版）
│   ├── openclaw-book-zh-lite.tex # 主文档（精简版）
│   ├── Makefile                  # 编译脚本
│   └── convert_md_to_latex.py    # MD → LaTeX 转换工具
├── EN/                           # 英文版
│   ├── chapters/                 # 各章节 .tex 文件
│   ├── openclaw-book-en.tex      # 主文档
│   └── Makefile                  # 编译脚本
├── LICENSE                       # MIT 许可证
├── README.md                     # 英文 README
├── README-ZH.md                  # 中文 README
└── .gitignore
```

## 编译环境

- **TeX 发行版**: [TeX Live](https://tug.org/texlive/)（推荐 2022+）或 [MacTeX](https://tug.org/mactex/)（macOS）
- **编译引擎**: XeLaTeX（ctex + xeCJK 要求）
- **系统字体**: 需要中文字体（macOS / Windows 已预装）

## 编译方法

### 中文完整版

```bash
cd ZH

# 编译 PDF（两次编译，生成正确的目录和交叉引用）
make

# 快速编译（仅一次，适合草稿预览）
make quick

# 编译并打开 PDF 预览（macOS）
make view

# 监听文件变化自动编译（需要 fswatch: brew install fswatch）
make watch
```

### 中文精简版

```bash
cd ZH

# 编译精简版 PDF（两次编译，生成正确的目录和交叉引用）
make lite

# 快速编译（仅一次，适合草稿预览）
make lite-quick

# 编译并打开 PDF 预览（macOS）
make lite-view

# 监听文件变化自动编译
make lite-watch
```

### 英文版

```bash
cd EN

# 编译 PDF（两次编译，生成正确的目录和交叉引用）
make

# 快速编译（仅一次，适合草稿预览）
make quick

# 编译并打开 PDF 预览（macOS）
make view

# 监听文件变化自动编译
make watch
```

### 清理

```bash
# 清理辅助文件
make clean

# 深度清理（含 PDF）
make distclean
```

编译成功后将生成以下 PDF：
- `ZH/openclaw-book-zh.pdf` — 中文完整版
- `ZH/openclaw-book-zh-lite.pdf` — 中文精简版
- `EN/openclaw-book-en.pdf` — 英文版

## 许可证

本项目采用 [MIT 许可证](LICENSE) 进行授权。

本书内容基于 [OpenClaw](https://github.com/anthropics/openclaw) 项目官方文档整理编写。
原始项目版权：Copyright (c) 2025 Peter Steinberger。
