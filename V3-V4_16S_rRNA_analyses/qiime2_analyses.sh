# Setting the truncation length
i=200
# Assign taxonomy
qiime feature-classifier classify-sklearn --i-classifier $WD/silva-138-99-nb-classifier.qza \
	--i-reads $WD/$DIR/rep-seqs-dada2_trunc-len_${i}.qza --o-classification $WD/taxonomy.qza --output-dir feature-classifier 

# Visualize the taxonomy
qiime metadata tabulate --m-input-file $WD/taxonomy.qza --o-visualization $WD/taxonomy.qzv

qiime taxa filter-table \
  --i-table $WD/$DIR/table-dada2_trunc-len_${i}.qza \
  --i-taxonomy $WD/taxonomy.qza \
  --p-exclude o__Chloroplast \
  --o-filtered-table $WD/$DIR/table-dada2_trunc-len_${i}_filter.qza

# Phylogenetic analysis
qiime phylogeny align-to-tree-mafft-fasttree --i-sequences $WD/$DIR/rep-seqs-dada2_trunc-len_${i}.qza \
	--o-alignment $WD/aligned-rep-seqs.qza --o-masked-alignment $WD/masked-aligned-rep-seqs.qza --o-tree $WD/unrooted-tree.qza --o-rooted-tree $WD/rooted-tree.qza

# Visualize the feature table
qiime taxa barplot --i-table $WD/$DIR/table-dada2_trunc-len_${i}_filter.qza --i-taxonomy $WD/taxonomy.qza --m-metadata-file $METADATA --o-visualization $WD/taxa-bar-plots.qzv
qiime taxa barplot --i-table $WD/$DIR/table-dada2_trunc-len_${i}.qza --i-taxonomy $WD/taxonomy.qza --m-metadata-file $METADATA --o-visualization $WD/taxa-bar-plots_raw.qzv


# Export the feature table
qiime feature-table summarize --i-table $WD/$DIR/table-dada2_trunc-len_${i}_filter.qza --o-visualization $WD/table-dada2_trunc-len_${i}.qzv --m-sample-metadata-file $METADATA
qiime feature-table tabulate-seqs --i-data $WD/rep-seqs-dada2_trunc-len_${i}.qza --o-visualization $WD/rep-seqs-dada2_trunc-len_${i}.qzv

qiime diversity alpha-rarefaction --i-table $WD/$DIR/table-dada2_trunc-len_${i}_filter.qza --i-phylogeny $WD/rooted-tree.qza --p-max-depth 5000 --m-metadata-file $METADATA --o-visualization $WD/alpha-rarefaction.qzv
qiime diversity core-metrics-phylogenetic --i-phylogeny $WD/rooted-tree.qza \
	--i-table $WD/$DIR/table-dada2_trunc-len_${i}_filter.qza --p-sampling-depth 3000 --m-metadata-file $METADATA --output-dir $WD/core-metrics-results


# Calculation of Alpha diversity
qiime diversity alpha-group-significance --i-alpha-diversity $WD/core-metrics-results/faith_pd_vector.qza --m-metadata-file $METADATA --o-visualization $WD/core-metrics-results/faith-pd-group-significance.qzv
qiime diversity alpha-group-significance --i-alpha-diversity $WD/core-metrics-results/shannon_vector.qza --m-metadata-file $METADATA --o-visualization $WD/core-metrics-results/shannon-group-significance.qzv
qiime diversity alpha --i-table $WD/$DIR/table-dada2_trunc-len_${i}.qza --p-metric chao1 --o-alpha-diversity $WD/core-metrics-results/chao1_vector.qza
qiime diversity alpha-group-significance --i-alpha-diversity $WD/core-metrics-results/chao1_vector.qza --m-metadata-file $METADATA --o-visualization $WD/core-metrics-results/chao1-group-significance.qzv



