

*Global H3N2 datasets*

---Downloading Asian H3N2 datasets from GISAID 21012020---

- Download by selecting: 

	- All the individual segments [1-8]
	- Sampled between January 2010 and December 2016

- Download sequences (DNA) as FASTA (per segment)

- Select FASTA header: Isolate name_Collection date only for the download options

- Tick [Replace spaces with underscores in FASTA header]

*1614 genomes*



 mkdir 1_Duplicates_removed # Duplicates removed

 mkdir 2_Missing_dates_removed # Sequences with missing dates

 mkdir 3_Multiple_sequence_alignment

 mkdir 3_Multiple_sequence_alignment_trimmed # Trimmed sequences after alignment



---Remove duplicate sequences---

- Script *remove_duplicate_headers.sh* used

- Saved in 1_Duplicates_removed directory 

 sh remove_duplicate_headers.sh 1_H3N2_Asia_2010-2016_PB2.fasta ./1_Duplicates_removed/1_H3N2_Asia_2010-2016_PB2.fasta

 sh remove_duplicate_headers.sh 2_H3N2_Asia_2010-2016_PB1.fasta ./1_Duplicates_removed/2_H3N2_Asia_2010-2016_PB1.fasta

 sh remove_duplicate_headers.sh 3_H3N2_Asia_2010-2016_PA.fasta ./1_Duplicates_removed/3_H3N2_Asia_2010-2016_PA.fasta

 sh remove_duplicate_headers.sh 4_H3N2_Asia_2010-2016_HA.fasta ./1_Duplicates_removed/4_H3N2_Asia_2010-2016_HA.fasta

 sh remove_duplicate_headers.sh 5_H3N2_Asia_2010-2016_NP.fasta ./1_Duplicates_removed/5_H3N2_Asia_2010-2016_NP.fasta

 sh remove_duplicate_headers.sh 6_H3N2_Asia_2010-2016_NA.fasta ./1_Duplicates_removed/6_H3N2_Asia_2010-2016_NA.fasta

 sh remove_duplicate_headers.sh 7_H3N2_Asia_2010-2016_M.fasta ./1_Duplicates_removed/7_H3N2_Asia_2010-2016_M.fasta

 sh remove_duplicate_headers.sh 8_H3N2_Asia_2010-2016_NS.fasta ./1_Duplicates_removed/8_H3N2_Asia_2010-2016_NS.fasta

*1458 genomes (156 duplicates removed)*



---Sequences with missing dates removed---

- List of missing dates generated from overall dataset (Month_and_date_unknown) i.e. list.txt using seqtk v1.3 

> seqtk subseq ./1_Duplicates_removed/1_H3N2_Asia_2010-2016_PB2.fasta list.txt > ./2_Missing_dates_removed/1_H3N2_Asia_2010-2016_PB2.fasta

> seqtk subseq ./1_Duplicates_removed/2_H3N2_Asia_2010-2016_PB1.fasta list.txt > ./2_Missing_dates_removed/2_H3N2_Asia_2010-2016_PB1.fasta

> seqtk subseq ./1_Duplicates_removed/3_H3N2_Asia_2010-2016_PA.fasta list.txt > ./2_Missing_dates_removed/3_H3N2_Asia_2010-2016_PA.fasta

> seqtk subseq ./1_Duplicates_removed/4_H3N2_Asia_2010-2016_HA.fasta list.txt > ./2_Missing_dates_removed/4_H3N2_Asia_2010-2016_HA.fasta

> seqtk subseq ./1_Duplicates_removed/5_H3N2_Asia_2010-2016_NP.fasta list.txt > ./2_Missing_dates_removed/5_H3N2_Asia_2010-2016_NP.fasta

> seqtk subseq ./1_Duplicates_removed/6_H3N2_Asia_2010-2016_NA.fasta list.txt > ./2_Missing_dates_removed/6_H3N2_Asia_2010-2016_NA.fasta

> seqtk subseq ./1_Duplicates_removed/7_H3N2_Asia_2010-2016_M.fasta list.txt > ./2_Missing_dates_removed/7_H3N2_Asia_2010-2016_M.fasta

> seqtk subseq ./1_Duplicates_removed/8_H3N2_Asia_2010-2016_NS.fasta list.txt > ./2_Missing_dates_removed/8_H3N2_Asia_2010-2016_NS.fasta


*1427 genomes (31 genomes with missing dates removed)*



---Multiple sequence alignment---

- MAFFT v7.453 used for alignment

- Output to 3_Multiple_sequence_alignment

 mafft --reorder --anysymbol --thread 32 ./2_Missing_dates_removed/1_H3N2_Asia_2010-2016_PB2.fasta > ./3_Multiple_sequence_alignment/1_H3N2_Asia_2010-2016_PB2.fasta

 mafft --reorder --anysymbol --thread 32 ./2_Missing_dates_removed/2_H3N2_Asia_2010-2016_PB1.fasta > ./3_Multiple_sequence_alignment/2_H3N2_Asia_2010-2016_PB1.fasta

 mafft --reorder --anysymbol --thread 32 ./2_Missing_dates_removed/3_H3N2_Asia_2010-2016_PA.fasta > ./3_Multiple_sequence_alignment/3_H3N2_Asia_2010-2016_PA.fasta

 mafft --reorder --anysymbol --thread 32 ./2_Missing_dates_removed/4_H3N2_Asia_2010-2016_HA.fasta > ./3_Multiple_sequence_alignment/4_H3N2_Asia_2010-2016_HA.fasta

 mafft --reorder --anysymbol --thread 32 ./2_Missing_dates_removed/5_H3N2_Asia_2010-2016_NP.fasta > ./3_Multiple_sequence_alignment/5_H3N2_Asia_2010-2016_NP.fasta

 mafft --reorder --anysymbol --thread 32 ./2_Missing_dates_removed/6_H3N2_Asia_2010-2016_NA.fasta > ./3_Multiple_sequence_alignment/6_H3N2_Asia_2010-2016_NA.fasta

 mafft --reorder --anysymbol --thread 32 ./2_Missing_dates_removed/7_H3N2_Asia_2010-2016_M.fasta > ./3_Multiple_sequence_alignment/7_H3N2_Asia_2010-2016_M.fasta

 mafft --reorder --anysymbol --thread 32 ./2_Missing_dates_removed/8_H3N2_Asia_2010-2016_NS.fasta > ./3_Multiple_sequence_alignment/8_H3N2_Asia_2010-2016_NS.fasta



---Trimming segment sequences---

- Trim segments to standard segment lengths

- Output trimmed segments to 4_Multiple_sequence_alignment_trimmed


--- Editing accession names---

- Edit accession from A/England/001/2009 01 Jan 2018 to A/England/001/2009_01-Jan-2018 

- Using BBEdit v13.0.4

- Find [Space] replace with [_]

- Find [/2010_] replace with [/2010*] #Done for 2010 to 2016 dataset

- Find [_] replace with [-]

- Find [/2010*] replace with [/2010_] #Done for 2010 to 2016 dataset



---Removal of incomplete whole-genomes---

- All incomplete genomes were removed i.e. not 13133 bp

*1427 genomes (all genomes were complete)*




---Separating data 2010-13 and 2014-16---

- mkdir 2010-13

> seqtk subseq H3N2_Asia_WGS_2010-2016.fasta ./2010-13/2010-13_list.txt > ./2010-13/H3N2_Asia_WGS_2010-2013.fasta #373 genomes

- mkdir 2014-16

> seqtk subseq H3N2_Asia_WGS_2010-2016.fasta ./2014-16/2014-16_list.txt > ./2014-16/H3N2_Asia_WGS_2014-2016.fasta #1067 genomes







