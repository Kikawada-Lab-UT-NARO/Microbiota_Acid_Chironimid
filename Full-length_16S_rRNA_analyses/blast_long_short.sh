# make blast database
makeblastdb -in rep-seqs-dada2_trunc-len_200_sequences_rename_Acidithiobacillus_ferrooxidans.fasta -dbtype nucl
makeblastdb -in rep-seqs-dada2_trunc-len_200_sequences_rename_Acidithiobacillus_sp.fasta -dbtype nucl
makeblastdb -in rep-seqs-dada2_trunc-len_200_sequences_rename_Tyzzerella.fasta -dbtype nucl
makeblastdb -in rep-seqs-dada2_trunc-len_200_sequences_rename_Bacillales.fasta -dbtype nucl

# BLASTn
blastn -db rep-seqs-dada2_trunc-len_200_sequences_rename_Acidithiobacillus_ferrooxidans.fasta -query rep-seqs-dada2_trunc-len_200_sequences_rename_Acidithiobacillus_ferrooxidans.fasta > rep-seqs-dada2_trunc-len_200_sequences_rename_Acidithiobacillus_ferrooxidans.blast.out.txt
blastn -db rep-seqs-dada2_trunc-len_200_sequences_rename_Acidithiobacillus_sp.fasta -query rep-seqs-dada2_trunc-len_200_sequences_rename_Acidithiobacillus_sp.fasta > rep-seqs-dada2_trunc-len_200_sequences_rename_Acidithiobacillus_sp.blast.out.txt
blastn -db rep-seqs-dada2_trunc-len_200_sequences_rename_Tyzzerella.fasta -query rep-seqs-dada2_trunc-len_200_sequences_rename_Tyzzerella.fasta > rep-seqs-dada2_trunc-len_200_sequences_rename_Tyzzerella.blast.out.txt
blastn -db rep-seqs-dada2_trunc-len_200_sequences_rename_Bacillales.fasta -query rep-seqs-dada2_trunc-len_200_sequences_rename_Bacillales.fasta > rep-seqs-dada2_trunc-len_200_sequences_rename_Bacillales.blast.out.txt
