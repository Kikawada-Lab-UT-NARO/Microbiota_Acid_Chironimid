# bash

# Specifying file paths
INPUT_PATH="/home/nakanishi/Dropbox/00_16S_rRNA/Illumina_V3-V4_sequencing_data/2024-07-10_non-imago/Raw_fastq"
MANIFEST=/home/nakanishi/Dropbox/00_16S_rRNA/Illumina_V3-V4_sequencing_data/2024-07-10_non-imago/Fastq_manifest.txt
WD=/home/nakanishi/Dropbox/00_16S_rRNA/Illumina_V3-V4_sequencing_data/2024-07-10_non-imago/
METADATA=/home/nakanishi/Dropbox/00_16S_rRNA/Illumina_V3-V4_sequencing_data/2024-07-10_non-imago/metadata.txt
# https://forum.qiime2.org/t/how-to-import-nanopore-16s-data/5215/3

# Import the sequence data
qiime tools import --type 'SampleData[PairedEndSequencesWithQuality]' \
	--input-path $MANIFEST --output-path $WD/paired-end-demux.qza \
	--input-format PairedEndFastqManifestPhred33V2

# Summarize
qiime demux summarize --i-data $WD/paired-end-demux.qza --o-visualization $WD/paired-end-demux.qzv

# Denoise
DIR=trunc-len_trim-f-17-r10_trunc-f-${j}-r-i
i=200
j=280

for i in 0 180 190 200 210 220 230 
do
if [ ! -d $WD/$DIR ]; then
	mkdir $WD/$DIR
fi
if [ ! -e $WD/$DIR/rep-seqs-dada2_trunc-len_${i}.qzv ]; then
echo dada2 ${i}
qiime dada2 denoise-paired --i-demultiplexed-seqs $WD/paired-end-demux.qza \
	--p-trim-left-f 17 \
	--p-trim-left-r 10 \
	--p-trunc-len-f 280 \
	--p-trunc-len-r  $i \
	--o-representative-sequences $WD/$DIR/rep-seqs-dada2_trunc-len_${i}.qza \
	--o-table $WD/$DIR/table-dada2_trunc-len_${i}.qza --o-denoising-stats $WD/$DIR/stats-dada2_trunc-len_${i}.qza
 
# Summarize the data after denoising
qiime metadata tabulate --m-input-file $WD/$DIR/stats-dada2_trunc-len_${i}.qza --o-visualization $WD/$DIR/stats-dada2_trunc-len_${i}.qzv
qiime feature-table summarize --i-table $WD/$DIR/table-dada2_trunc-len_${i}.qza --o-visualization $WD/$DIR/table-dada2_trunc-len_${i}.qzv --m-sample-metadata-file $METADATA
qiime feature-table tabulate-seqs --i-data $WD/$DIR/rep-seqs-dada2_trunc-len_${i}.qza --o-visualization $WD/$DIR/rep-seqs-dada2_trunc-len_${i}.qzv
fi
done
