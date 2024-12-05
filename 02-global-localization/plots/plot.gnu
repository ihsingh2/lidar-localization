set terminal pngcairo enhanced font 'Verdana,12'
set terminal pdf

# ------------------------------------------- max_level -------------------------------------------

set output 'plots/max_level.pdf'
set ylabel 'Score'
set xlabel 'Max Level'
set grid

plot 'plots/max_level.txt' using 1:2 with linespoints title ''

# ---------------------------------------- max_scan_range -----------------------------------------

set output 'plots/max_scan_range.pdf'
set ylabel 'Score'
set xlabel 'Max Scan Range'
set grid

plot 'plots/max_scan_range.txt' using 1:2 with linespoints title ''

# ----------------------------------------- min_level_res -----------------------------------------

set output 'plots/min_level_res.pdf'
set ylabel 'Score'
set xlabel 'Min Level Resolution'
set grid

plot 'plots/min_level_res.txt' using 1:2 with linespoints title ''

# ----------------------------------------- src_leaf_size -----------------------------------------

set output 'plots/src_leaf_size.pdf'
set ylabel 'Score'
set xlabel 'Source Leaf Size'
set grid

plot 'plots/src_leaf_size.txt' using 1:2 with linespoints title ''

# ----------------------------------------- tar_leaf_size -----------------------------------------

set output 'plots/tar_leaf_size.pdf'
set ylabel 'Score'
set xlabel 'Target Leaf Size'
set grid

plot 'plots/tar_leaf_size.txt' using 1:2 with linespoints title ''
