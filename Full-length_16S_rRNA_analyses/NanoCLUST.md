# Basecalling by Dorado
```

DORADO_PATH=/home/nakanishi/tools/dorado-0.7.2-linux-x64/bin/
DUPLEX_OUTPATH=/home/nakanishi/Dropbox/00_16S_rRNA/Nanopore_sequencing/NB0010/20240802_0038_MN36499_AVJ493_4952ac9d/pod5/bam_demux

$DORADO_PATH/dorado duplex sup -x cuda:all $POD5_PATH > $DUPLEX_OUTPATH/basecall.bam

$DORADO_PATH/dorado demux --kit-name SQK-NBD114-96 --output-dir $DUPLEX_OUTPATH /Users/nakanishi/Dropbox/00_16S_rRNA/Nanopore_sequencing/NB0010/20240802_0038_MN36499_AVJ493_4952ac9d/pod5/bam_demux/basecall.bam


```
# Bam to fastq and statistiscs for the sequence
```
for i in `ls $DUPLEX_OUTPATH/*.bam |xargs -I {} basename {} .bam`
do
samtools fastq $DUPLEX_OUTPATH/$i.bam > $DUPLEX_FASTQ_PATH/$i.fq
done

seqkit stats $DUPLEX_FASTA_PATH/*.fq
```

# Assembly Nanopore sequencing data
```
for i in `seq -w 4 6`
do
echo $i
nextflow run main.nf --reads ./Nanopore_sequencing/NB0009/20240706_1318_MN36499_ASV586_305da7fe/bam_demux/duplex_fastq/SQK-NBD114-96_barcode${i}_filterd.fq \
--db /Users/nakanishi/tools/NanoCLUST/db/16S_ribosomal_RNA \
--tax /Users/nakanishi/tools/NanoCLUST/db/taxdb/ -profile docker \
--min_read_length 1300 --max_read_length 1700 --outdir ./Nanopore_sequencing/NB0009/20240706_1318_MN36499_ASV586_305da7fe/NanoCLUST/barcode${i} \
--max_memory 12.GB --max_cpus 8 --umap_set_size 3000 --min_cluster_size 100
done
```
