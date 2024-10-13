
# Order level
lefse_format_input.py feature-table_lefse_col_wild_vs_rearing_order_nanopore.txt feature-table_lefse_col_wild_vs_rearing_order_nanopore.in -c 1 -s 2 -u 3 -o 1000000
lefse_run.py feature-table_lefse_col_wild_vs_rearing_order_nanopore.in feature-table_lefse_col_wild_vs_rearing_order_nanopore.res -y 1
lefse_plot_res.py feature-table_lefse_col_wild_vs_rearing_order_nanopore.res feature-table_lefse_col_wild_vs_rearing_order_nanopore.svg --format svg --autoscale 0

# Species level
lefse_format_input.py feature-table_lefse_col_wild_vs_rearing_genus_nanopore.txt feature-table_lefse_col_wild_vs_rearing_genus_nanopore.in -c 1 -s 2 -u 3 -o 1000000
lefse_run.py feature-table_lefse_col_wild_vs_rearing_genus_nanopore.in feature-table_lefse_col_wild_vs_rearing_genus_nanopore.res -y 1
lefse_plot_res.py feature-table_lefse_col_wild_vs_rearing_genus_nanopore.res feature-table_lefse_col_wild_vs_rearing_genus_nanopore.svg --format svg --autoscale 0
