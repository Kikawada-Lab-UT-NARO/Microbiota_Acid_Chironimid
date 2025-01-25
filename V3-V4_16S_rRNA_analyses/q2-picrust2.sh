qiime picrust2 full-pipeline \
	--i-table $WD/$DIR/table-dada2_trunc-len_${i}_filter.qza \
	--i-seq $WD/$DIR/rep-seqs-dada2_trunc-len_${i}.qza \
	--output-dir $WD/q2-picrust2_output --verbose

# Visualization of picrust2 results 
qiime feature-table summarize \
	--i-table $WD/q2-picrust2_output/pathway_abundance.qza \
	--o-visualization $WD/q2-picrust2_output/pathway_abundance.qzv 

qiime feature-table summarize \
	--i-table $WD/q2-picrust2_output/ec_metagenome.qza  \
	--o-visualization $WD/q2-picrust2_output/ec_metagenome.qzv

qiime feature-table summarize \
	--i-table $WD/q2-picrust2_output/ko_metagenome.qza  \
	--o-visualization $WD/q2-picrust2_output/ko_metagenome.qzv
# export
qiime tools export \
	--input-path $WD/q2-picrust2_output/pathway_abundance.qza \
	--output-path $WD/q2-picrust2_output/pathabun_exported

qiime tools export \
	--input-path $WD/q2-picrust2_output/ec_metagenome.qza \
	--output-path $WD/q2-picrust2_output/ec_metagenome_exported

qiime tools export \
	--input-path $WD/q2-picrust2_output/ko_metagenome.qza \
	--output-path $WD/q2-picrust2_output/ko_metagenome_exported

# Convert biom files to table files
biom convert -i $WD/q2-picrust2_output/pathabun_exported/feature-table.biom \
	-o $WD/q2-picrust2_output/pathabun_exported/pathabunｰfeature-table.biom.tsv --to-tsv

biom convert \
	-i $WD/q2-picrust2_output/ec_metagenome_exported/feature-table.biom \
	-o $WD/q2-picrust2_output/ec_metagenome_exported/ec-feature-table.biom.tsv \
	--to-tsv

biom convert \
	-i $WD/q2-picrust2_output/ko_metagenome_exported/feature-table.biom \
	-o $WD/q2-picrust2_output/ko_metagenome_exported/ko-feature-table.biom.tsv \
	--to-tsv
