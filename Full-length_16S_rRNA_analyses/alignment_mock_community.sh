
ZymoBIOMICS_DIR=/Users/nakanishi/Dropbox/

# Bacillus_subtilis reference sequence vs assembly
seqkit split -s $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Bacillus_subtilis_16S_170923.fasta
mafft --auto --reorder $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Bacillus_subtilis_16S_170923.fasta.split/Bacillus_subtilis_16S_170923.part_Bacillus_subtilis_16S_1_merge.fasta > $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Bacillus_subtilis_16S_170923.fasta.split/Bacillus_subtilis_16S_170923.part_Bacillus_subtilis_16S_1_merge.aln

# Enterococcus faecalis reference sequence vs assembly
seqkit split -s $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Enterococcus_faecalis_16S_170923.fasta
mafft --auto --reorder $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Enterococcus_faecalis_16S_170923.fasta.split/Enterococcus_faecalis_16S_170923.part_Enterococcus_faecalis_16S_1_merge.fasta > $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Enterococcus_faecalis_16S_170923.fasta.split/Enterococcus_faecalis_16S_170923.part_Enterococcus_faecalis_16S_1_merge.aln

# Escherichia coli reference sequence vs assembly
seqkit split -s $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Escherichia_coli_16S_170923.fasta
mafft --auto --reorder /Users/nakanishi/Downloads/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Escherichia_coli_16S_170923.fasta.split/Escherichia_coli_16S_170923.part_Escherichia_coli_16S_4_merge.fasta > $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Escherichia_coli_16S_170923.fasta.split/Escherichia_coli_16S_170923.part_Escherichia_coli_16S_4_merge.aln

# Lactobacillus fermentum reference sequence vs assembly
seqkit split -s $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Lactobacillus_fermentum_16S_230307.fasta
mafft --auto --reorder $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Lactobacillus_fermentum_16S_230307.fasta.split/Lactobacillus_fermentum_16S_230307.part_Lactobacillus_fermentum_16S_1_merge.fasta > $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Lactobacillus_fermentum_16S_230307.fasta.split/Lactobacillus_fermentum_16S_230307.part_Lactobacillus_fermentum_16S_1_merge.aln

# Listeria_monocytogenes reference sequence vs assembly
seqkit split -s $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Listeria_monocytogenes_16S_170923.fasta
mafft --auto --reorder $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Listeria_monocytogenes_16S_170923.fasta.split/Listeria_monocytogenes_16S_170923.part_Listeria_monocytogenes_16S_1_merge.fasta > $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Listeria_monocytogenes_16S_170923.fasta.split/Listeria_monocytogenes_16S_170923.part_Listeria_monocytogenes_16S_1_merge.aln

# Pseudomonas aeruginosa reference sequence vs assembly
seqkit split -s $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Pseudomonas_aeruginosa_16S_170923.fasta
mafft --auto --reorder $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Pseudomonas_aeruginosa_16S_170923.fasta.split/Pseudomonas_aeruginosa_16S_170923.part_Pseudomonas_aeruginosa_16S_1_merge.fasta > $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Pseudomonas_aeruginosa_16S_170923.fasta.split/Pseudomonas_aeruginosa_16S_170923.part_Pseudomonas_aeruginosa_16S_1_merge.aln

# Salmonella enterica reference sequence vs assembly
seqkit split -s $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Salmonella_enterica_16S_170923.fasta
mafft --auto --reorder $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Salmonella_enterica_16S_170923.fasta.split/Salmonella_enterica_16S_170923.part_Salmonella_enterica_16S_2_merge.fasta > $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Salmonella_enterica_16S_170923.fasta.split/Salmonella_enterica_16S_170923.part_Salmonella_enterica_16S_2_merge.aln

# Staphylococcus aureus reference sequence vs assembly
seqkit split -s $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Staphylococcus_aureus_16S_170923.fasta
mafft --auto --reorder $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Staphylococcus_aureus_16S_170923.fasta.split/Staphylococcus_aureus_16S_170923.part_Staphylococcus_aureus_16S_1_merge.fasta > $ZymoBIOMICS_DIR/ZymoBIOMICS.STD.refseq.v2/ssrRNAs/Staphylococcus_aureus_16S_170923.fasta.split/Staphylococcus_aureus_16S_170923.part_Staphylococcus_aureus_16S_1_merge.aln
