all: task1 task2 task3 task4

clean:
	rm -rf solution/task1.pdf \
		solution/task3.png \
		solution/task4.png
	cd solution && latexmk -CA

task1: solution/task1.pdf
solution/task1.pdf: solution/task1.md
	pandoc $< -o $@ \
		--pdf-engine=xelatex \
		-V mainfont="DejaVu Sans" \
		-V colorlinks=true

task2: solution/task2.pdf
solution/task2.pdf: solution/task2.tex
	latexmk -pdf -jobname=solution/task2 -pdflatex="pdflatex -interaction=nonstopmode" $<
	cd solution && latexmk -c

task3: solution/task3.png
solution/task3.png: solution/task3.gv
	dot -Tpng $< -o $@

task4: solution/task4.png
solution/task4.png: solution/task4.gnu
	gnuplot -e "set terminal png size 1200, 600; set output '$@';" -c $<
