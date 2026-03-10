# OpenClaw 中文文档 — LaTeX 编译 Makefile
# 使用 xelatex（ctex + xeCJK 需要 XeLaTeX 引擎）

MAIN    = main
TEX     = xelatex
FLAGS   = -interaction=nonstopmode -halt-on-error -file-line-error
SOURCES = $(MAIN).tex $(wildcard chapters/*.tex)

.PHONY: all pdf clean distclean view watch help

# 默认目标：编译 PDF
all: pdf

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

# 监听文件变化自动编译（需要 fswatch: brew install fswatch）
watch:
	@echo "👀 监听文件变化中... (Ctrl+C 退出)"
	@fswatch -o $(SOURCES) | xargs -n1 -I{} make quick

# 清理辅助文件
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc
	rm -f $(MAIN).fdb_latexmk $(MAIN).fls $(MAIN).synctex.gz

# 深度清理（含 PDF）
distclean: clean
	rm -f $(MAIN).pdf

# 帮助信息
help:
	@echo "可用目标："
	@echo "  make          — 编译 PDF（两次，含目录）"
	@echo "  make quick    — 快速编译（一次，草稿预览）"
	@echo "  make view     — 编译并打开 PDF"
	@echo "  make watch    — 监听文件变化自动编译"
	@echo "  make clean    — 清理辅助文件"
	@echo "  make distclean— 清理所有生成文件（含 PDF）"
	@echo "  make help     — 显示此帮助"
