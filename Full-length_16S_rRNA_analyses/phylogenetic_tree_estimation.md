
# Rename sequence names downloaded from National Center for Biotechnology Information (NCBI)
```
cat ./phylogenetic_analysis/Acidithiobacillales_16S/Acidithiobacillales_16S.fasta | sed "s/ 16S ribosoma.*//g" | sed "s/>\(NR_........\) \(.*\)/>\2(\1)/g"|sed "s/ /_/g" > ./phylogenetic_analysis/Acidithiobacillales_16S/Acidithiobacillales_16S_edit.fasta
cat ./phylogenetic_analysis/Bacillaceae_16S/Bacillaceae_16S.fasta | sed "s/ 16S ribosoma.*//g" | sed "s/>\(NR_........\) \(.*\)/>\2(\1)/g"|sed "s/ /_/g" > ./phylogenetic_analysis/Bacillaceae_16S/Bacillaceae_16S_edit.fasta
cat ./phylogenetic_analysis/Lachnospirales_16S/Lachnospirales_16S.fasta | sed "s/ 16S ribosoma.*//g" | sed "s/>\(NR_........\) \(.*\)/>\2(\1)/g"|sed "s/ /_/g" > ./phylogenetic_analysis/Lachnospirales_16S/Lachnospirales_16S_edit.fasta
```
Add 16S sequences assembled by manual editing.

# Tree estimation
```
# Estimation for Acidithiobacillales order
mafft --auto ./phylogenetic_analysis/Acidithiobacillales_16S/Acidithiobacillales_16S_edit.fasta > ./phylogenetic_analysis/Acidithiobacillales_16S/Acidithiobacillales_16S_edit.aln
iqtree -s ./phylogenetic_analysis/Acidithiobacillales_16S/Acidithiobacillales_16S_edit.aln -m MFP -bb 1000 -nt 4 -alrt 1000

# Estimation for Bacillaceae family
mafft --auto ./phylogenetic_analysis/Bacillaceae_16S/Bacillaceae_16S_edit.fasta > ./phylogenetic_analysis/Bacillaceae_16S/Bacillaceae_16S_edit.aln
iqtree -s ./phylogenetic_analysis/Bacillaceae_16S/Bacillaceae_16S_edit.aln -m MFP -bb 1000 -alrt 1000 -nt 4

# Estimation for Lachnospirales family
mafft --auto ./phylogenetic_analysis/Lachnospirales_16S/Lachnospirales_16S_edit.fasta > ./phylogenetic_analysis/Lachnospirales_16S/Lachnospirales_16S_edit.aln
iqtree -s ./phylogenetic_analysis/Lachnospirales_16S/Lachnospirales_16S_edit.aln -m MFP -bb 1000 -alrt 1000 -nt 4
```
