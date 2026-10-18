# 1. Устанавливаем формат вывода (например, PNG, если хотите сохранить картинку)
set terminal pngcairo enhanced size 1000,500 font "Verdana,10"
set output 'currency_plot.png'

# 2. Настройка оси X для работы с датами
set xdata time
# Укажите формат, в котором даты записаны в вашем файле (например: ГГГГ-ММ-ДД)
set timefmt "%Y-%m-%d"

# 3. Настройка внешнего вида осей и сетки
set format x "%Y-%m-%d"
set xrange ["2013-01-01":"2024-01-01"]
set yrange [30:130]

# Засечки на оси X (можно настроить шаг по времени, если нужно)
# set xtics "2014-01-01", 31536000, "2024-01-01" # 31536000 секунд в году

# 4. Название легенды и цвет графика
set key top right
# Фиолетовый цвет линии (можно задать через RGB или имя)
# В стандартном Gnuplot фиолетовый часто идет под номером или через цвета web
set style line 1 lc rgb "purple" lw 1.5

# 5. Построение графика из файла
plot "data/task4-data.txt" using 1:2 axes x1y1 with lines ls 1 title "USR/RUB"
