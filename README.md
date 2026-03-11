# OpenClaw-Book

OpenClaw 中文技术文档的 LaTeX 精排版本。基于 XeLaTeX + ctex 排版引擎，提供专业的中英文混排、语法高亮代码块、自动生成目录与交叉引用，输出印刷级品质的 PDF 文档。覆盖 Gateway 网关、Agent 系统、Channel 渠道、工具链、自动化、插件、安全等 21 个章节。

## 编译环境

- **TeX 发行版**：[TeX Live](https://tug.org/texlive/)（推荐 2022+）或 [MacTeX](https://tug.org/mactex/)（macOS）
- **编译引擎**：XeLaTeX（ctex + xeCJK 需要 XeLaTeX 引擎）
- **系统字体**：需安装中文字体（macOS / Windows 通常已自带）

## 编译方法

```bash
# 编译 PDF（两次编译，生成正确的目录和交叉引用）
make

# 快速编译（仅一次，适合草稿预览）
make quick

# 编译并打开 PDF 预览（macOS）
make view

# 监听文件变化自动编译（需要 fswatch: brew install fswatch）
make watch

# 清理辅助文件
make clean

# 深度清理（含 PDF）
make distclean
```

编译成功后将在项目根目录生成 `openclaw-book-zh.pdf`。
