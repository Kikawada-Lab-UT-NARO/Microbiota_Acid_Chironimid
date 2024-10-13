
# Order level
lefse_format_input.py lefse_nanopore_order.txt lefse_nanopore_order.in -c 1 -s 2 -u 3 -o 1000000
lefse_run.py lefse_nanopore_order.in lefse_nanopore_order.res -y 1
lefse_plot_res.py lefse_nanopore_order.res lefse_nanopore_order.svg --format svg --autoscale 0


# Species level
lefse_format_input.py lefse_nanopore_genus.txt lefse_nanopore_genus.in -c 1 -s 2 -u 3 -o 1000000
lefse_run.py lefse_nanopore_order.in lefse_nanopore_genus.res -y 1
lefse_plot_res.py lefse_nanopore_genus.res lefse_nanopore_genus.svg --format svg --autoscale 0
