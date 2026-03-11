# OpenClaw-Book

**[中文](README-ZH.md) | English**

LaTeX-typeset edition of the OpenClaw technical documentation, with multi-language support. Powered by XeLaTeX + ctex, featuring professional CJK typesetting, syntax-highlighted code blocks, auto-generated table of contents, and cross-references — producing print-quality PDF output.

## Directory Structure

```
OpenClaw-Book/
├── ZH/                           # Chinese edition
│   ├── chapters/                 # Chapter .tex files
│   ├── openclaw-book-zh.tex      # Main document
│   ├── Makefile                  # Build script
│   └── convert_md_to_latex.py    # MD → LaTeX converter
├── README.md                     # English README
├── README-ZH.md                  # Chinese README
└── .gitignore
```

## Prerequisites

- **TeX Distribution**: [TeX Live](https://tug.org/texlive/) (2022+ recommended) or [MacTeX](https://tug.org/mactex/) (macOS)
- **Engine**: XeLaTeX (required by ctex + xeCJK)
- **Fonts**: CJK fonts required (pre-installed on macOS / Windows)

## Build

```bash
# Enter the Chinese edition directory
cd ZH

# Build PDF (two passes for TOC & cross-references)
make

# Quick build (single pass, for draft preview)
make quick

# Build and open PDF preview (macOS)
make view

# Watch for changes and auto-rebuild (requires fswatch: brew install fswatch)
make watch

# Clean auxiliary files
make clean

# Deep clean (including PDF)
make distclean
```

The compiled PDF will be generated at `ZH/openclaw-book-zh.pdf`.

## License

This project is for learning and reference purposes.
