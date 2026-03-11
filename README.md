# OpenClaw-Book

**[中文](README-ZH.md) | English**

LaTeX-typeset edition of the OpenClaw technical documentation, with multi-language support. Powered by XeLaTeX + ctex, featuring professional CJK typesetting, syntax-highlighted code blocks, auto-generated table of contents, and cross-references — producing print-quality PDF output.

## Directory Structure

```
OpenClaw-Book/
├── ZH/                           # Chinese edition
│   ├── chapters/                 # Full chapter .tex files
│   ├── chapters-lite/            # Lite (streamlined) chapter .tex files
│   ├── openclaw-book-zh.tex      # Main document (full version)
│   ├── openclaw-book-zh-lite.tex # Main document (lite version)
│   ├── Makefile                  # Build script
│   └── convert_md_to_latex.py    # MD → LaTeX converter
├── EN/                           # English edition
│   ├── chapters/                 # Chapter .tex files
│   ├── openclaw-book-en.tex      # Main document
│   └── Makefile                  # Build script
├── LICENSE                       # MIT License
├── README.md                     # English README
├── README-ZH.md                  # Chinese README
└── .gitignore
```

## Prerequisites

- **TeX Distribution**: [TeX Live](https://tug.org/texlive/) (2022+ recommended) or [MacTeX](https://tug.org/mactex/) (macOS)
- **Engine**: XeLaTeX (required by ctex + xeCJK)
- **Fonts**: CJK fonts required (pre-installed on macOS / Windows)

## Build

### Chinese Full Version

```bash
cd ZH

# Build PDF (two passes for TOC & cross-references)
make

# Quick build (single pass, for draft preview)
make quick

# Build and open PDF preview (macOS)
make view

# Watch for changes and auto-rebuild (requires fswatch: brew install fswatch)
make watch
```

### Chinese Lite Version

```bash
cd ZH

# Build lite PDF (two passes for TOC & cross-references)
make lite

# Quick build (single pass, for draft preview)
make lite-quick

# Build and open PDF preview (macOS)
make lite-view

# Watch for changes and auto-rebuild
make lite-watch
```

### English Version

```bash
cd EN

# Build PDF (two passes for TOC & cross-references)
make

# Quick build (single pass, for draft preview)
make quick

# Build and open PDF preview (macOS)
make view

# Watch for changes and auto-rebuild
make watch
```

### Clean

```bash
# Clean auxiliary files
make clean

# Deep clean (including PDF)
make distclean
```

The compiled PDFs will be generated at:
- `ZH/openclaw-book-zh.pdf` — Chinese full version
- `ZH/openclaw-book-zh-lite.pdf` — Chinese lite version
- `EN/openclaw-book-en.pdf` — English version

## License

This project is licensed under the [MIT License](LICENSE).

This book is based on the official documentation of the [OpenClaw](https://github.com/anthropics/openclaw) project.
Original project copyright: Copyright (c) 2025 Peter Steinberger.
