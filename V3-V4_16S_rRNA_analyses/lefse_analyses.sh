# Differential analysis of the microbiome with LEfSe
# Larvae vs Eggs
lefse_format_input.py feature-table_lefse_col_larva_vs_egg.txt feature-table_lefse_col_larva_vs_egg.in -c 1 -s 2 -u 3 -o 1000000
lefse_run.py feature-table_lefse_col_larva_vs_egg.in feature-table_lefse_col_larva_vs_egg.res -y 1
lefse_plot_res.py feature-table_lefse_col_larva_vs_egg.res feature-table_lefse_col_larva_vs_egg.svg --format svg --autoscale 0
 
# Larvae vs Water
lefse_format_input.py feature-table_lefse_col_larva_vs_water.txt feature-table_lefse_col_larva_vs_water.in -c 1 -s 2 -u 3 -o 1000000
lefse_run.py feature-table_lefse_col_larva_vs_water.in feature-table_lefse_col_larva_vs_water.res -y 1
lefse_plot_res.py feature-table_lefse_col_larva_vs_water.res feature-table_lefse_col_larva_vs_water.svg --format svg --autoscale 0

# Larvae vs Detritus
lefse_format_input.py feature-table_lefse_col_larva_vs_detritus.txt feature-table_lefse_col_larva_vs_detritus.in -c 1 -s 2 -u 3 -o 1000000
lefse_run.py feature-table_lefse_col_larva_vs_detritus.in feature-table_lefse_col_larva_vs_detritus.res -y 1
lefse_plot_res.py feature-table_lefse_col_larva_vs_detritus.res feature-table_lefse_col_larva_vs_detritus.svg --format svg --autoscale 0
