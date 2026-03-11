# OpenClaw 中文文档 — LaTeX 编译 Makefile
# 使用 xelatex（ctex + xeCJK 需要 XeLaTeX 引擎）

MAIN    = openclaw-book-zh
LITE    = openclaw-book-zh-lite
TEX     = xelatex
FLAGS   = -interaction=nonstopmode -halt-on-error -file-line-error
SOURCES      = $(MAIN).tex $(wildcard chapters/*.tex)
LITE_SOURCES = $(LITE).tex $(wildcard chapters-lite/*.tex)

.PHONY: all pdf clean distclean view watch help lite lite-quick lite-view lite-pdf

# 默认目标：编译完整版 PDF
all: pdf

# === 完整版 ===

# 编译 PDF（两次以生成正确的目录和交叉引用）
pdf: $(MAIN).pdf

$(MAIN).pdf: $(SOURCES)
	$(TEX) $(FLAGS) $(MAIN).tex
	$(TEX) $(FLAGS) $(MAIN).tex

# 快速编译（仅一次，适合草稿预览）
quick:
	$(TEX) $(FLAGS) $(MAIN).tex

# 打开 PDF 预览（macOS）
view: pdf
	open $(MAIN).pdf

# === 精简版 (lite) ===

# 编译精简版 PDF（两次）
lite-pdf: $(LITE).pdf

$(LITE).pdf: $(LITE_SOURCES)
	$(TEX) $(FLAGS) $(LITE).tex
	$(TEX) $(FLAGS) $(LITE).tex

# 精简版快速编译（仅一次）
lite-quick:
	$(TEX) $(FLAGS) $(LITE).tex

# 精简版：编译并打开
lite-view: lite-pdf
	open $(LITE).pdf

# lite 别名（快捷方式）
lite: lite-pdf

# === 通用 ===

# 监听文件变化自动编译（需要 fswatch: brew install fswatch）
watch:
	@echo "👀 监听文件变化中... (Ctrl+C 退出)"
	@fswatch -o $(SOURCES) | xargs -n1 -I{} make quick

# 监听精简版文件变化自动编译
lite-watch:
	@echo "👀 监听精简版文件变化中... (Ctrl+C 退出)"
	@fswatch -o $(LITE_SOURCES) | xargs -n1 -I{} make lite-quick

# 清理辅助文件
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc
	rm -f $(MAIN).fdb_latexmk $(MAIN).fls $(MAIN).synctex.gz
	rm -f $(LITE).aux $(LITE).log $(LITE).out $(LITE).toc
	rm -f $(LITE).fdb_latexmk $(LITE).fls $(LITE).synctex.gz

# 深度清理（含 PDF）
distclean: clean
	rm -f $(MAIN).pdf
	rm -f $(LITE).pdf

# 帮助信息
help:
	@echo "可用目标："
	@echo ""
	@echo "  === 完整版 ==="
	@echo "  make          — 编译完整版 PDF（两次，含目录）"
	@echo "  make quick    — 完整版快速编译（一次，草稿预览）"
	@echo "  make view     — 编译完整版并打开 PDF"
	@echo "  make watch    — 监听完整版文件变化自动编译"
	@echo ""
	@echo "  === 精简版 (lite) ==="
	@echo "  make lite     — 编译精简版 PDF（两次，含目录）"
	@echo "  make lite-quick — 精简版快速编译（一次，草稿预览）"
	@echo "  make lite-view  — 编译精简版并打开 PDF"
	@echo "  make lite-watch — 监听精简版文件变化自动编译"
	@echo ""
	@echo "  === 通用 ==="
	@echo "  make clean    — 清理辅助文件"
	@echo "  make distclean— 清理所有生成文件（含 PDF）"
	@echo "  make help     — 显示此帮助"
