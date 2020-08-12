<<<<<<< HEAD
# Influenza H1N1pdm09 and H3N2 virus genomes from Kenya and global datasets

Author:         David Collins Owuor

Institution:   KEMRI-Wellcome Trust Research Programme, Kilifi, Kenya

Date Published: 30 April 2020
=======
# Phylogeography of influenza A(H3N2) virus in Kilifi, Kenya, 2015-2016


Author:         David Collins Owuor


Institution:   KEMRI-Wellcome Trust Research Programme, Kilifi, Kenya
                

Date Published: 24th February 2020
>>>>>>> 66ed8115afb0e5f4c9add56985a6890ec0fea3ac

---

### Introduction

<<<<<<< HEAD
This work describes **H1N1pdm09 and H3N2 viruses whole-genome sequence (WGS)**
data collection from Kenya. The aim of the repository is to give a summary
of the dataset from Kenya and analyses of the data.

### General instructions

These instructions will allow replication of the results shown in this work.

### Datasets

The Kenya WGS dataset are available from the Global Initiative on Sharing All
Influenza Data (GISAID) database (https://platform.gisaid.org/epi3/cfrontend).

1.	1_H1N1pdm09_and_H3N2_virus_Kenya_genomes

Lists of 383 influenza H1N1pdm09 virus (2009-2018) and 58 H3N2 virus (2015-2016)
WGS data showing: sample names, GISAID accession numbers, collection locations,
virus clades, number of sequencing reads, number of influenza reads, PCR Ct
values and collection dates.

	  (i)	H1N1pdm09_Kenya_2009-2018_genome_details.txt
		(ii)	H3N2_Kilifi_Kenya_2015-2016_genome_details.txt

2.	2_H1N1pdm09_virus_reference-based_assembly

Reference-based assembly of 10 Kenyan paired end read data to evaluate utility
of the BWA assembler for genome assembly. The **assembly.sh** script was used
to: count number of raw reads, trim raw reads, map trimmed reads to reference,
sort, merge, and index the reads and perform a final alignment.

	a. Assembly output files - small file sizes only:

		1_Total_raw_reads - Total number of raw reads;
		2_Total_raw_paired_reads - Total number of raw paired reads;
		3_Trimming_report - Raw read trimming report;
		6_BAM_files - Binary Alignment Map, binary SAM format;
		8_Consensus - Consensus sequences from read mapping;
		9_Mutants - Differences between reference and consensus sequences;
		10_Aligned - Alignment of reference and consensus sequences;
		11_Segments - Final segment alignments for 8 virus segments.

	b.	Reference; Reference sequence and reference index output

	c.	assembly.sh; Assembly script for reference-based assembly

	d.	valvs_read_count.py; Script to count number of paired-end reads

	e.	AlignMuts.jar; Show differences between reference and consensus sequences

	f.	mapping_statistics.txt; Summary of mapping statistics

	g.	H1N1pdm09 virus paired end reads

		 (i)	KNH-1870_R1.fastq and KNH-1870_R2.fastq - A/Kenya/CDC-KNH/001/2009
		 (ii)	KNH-1892_R1.fastq and KNH-1892_R2.fastq - A/Kenya/CDC-KNH/002/2009
		 (iii) KNH-1916_R1.fastq and KNH-1916_R2.fastq - A/Kenya/CDC-KNH/003/2009
		 (iv) KNH-1931_R1.fastq and KNH-1931_R2.fastq - A/Kenya/CDC-KNH/004/2009
		 (v)	KNH-1974_R1.fastq and KNH-1974_R2.fastq - A/Kenya/CDC-KNH/006/2009
		 (vi)	KNH-1987_R1.fastq and KNH-1987_R2.fastq - A/Kenya/CDC-KNH/009/2009
		 (vii)	KNH-2004_R1.fastq and KNH-2004_R2.fastq - A/Kenya/CDC-KNH/011/2009
		 (viii)	KNH-2005_R1.fastq and KNH-2005_R2.fastq - A/Kenya/CDC-KNH/012/2009
		 (ix)	KNH-2008_R1.fastq and KNH-2008_R2.fastq - A/Kenya/CDC-KNH/013/2009
		 (x)	KNH-2011_R1.fastq and KNH-2011_R2.fastq - A/Kenya/CDC-KNH/014/2009


  3.	3_H1N1pdm09_virus_IRMA_assembly

  	 (i)	1_H1N1pdm09_PB2.fasta
  	 (ii)	2_H1N1pdm09_PB1.fasta
		 (iii) 3_H1N1pdm09_PA.fasta
		 (iv) 4_H1N1pdm09_HA.fasta
		 (v)	5_H1N1pdm09_NP.fasta
		 (vi)	6_H1N1pdm09_NA.fasta
		 (vii)	7_H1N1pdm09_M.fasta
		 (viii)	8_H1N1pdm09_NS.fasta


  4.	4_Global_H1N1pdm09_and_H3N2_virus_datasets

      (i) H1N1pdm09

      a. 1_Continent_genomes
        1_Africa
        2_Asia
        3_Europe
        4_North_America
        5_South_America
        6_Oceania

      b. 2_H1N1pdm09_global_WGS_2010-2013
				1_Africa
				2_Asia
				3_Europe
				4_North_America
				5_South_America
				6_Oceania
				H1N1pdm09_WGS_2010-2013.fasta

      c. 3_H1N1pdm09_global_WGS_2009-2018

			  - Random sub-sampling of sequences from global continent sequences

			  - Scripts: random_sub_sample_19Jan2020.py; fasta.py; and fasta.pyc

				- output: random sub-sampling output

				- README.md file  

      (ii) H3N2

      a. 1_Continent_genomes
        1_Africa
        2_Asia
        3_Europe
        4_North_America
        5_South_America
        6_Oceania

      b. 2_H3N2_global_WGS_2010-2013

      c. 3_H3N2_global_WGS_2014-2016
# H1N1pdm09_and_H3N2_virus_genome_assembly_and_global_dataset_collation
=======
This work describes the analysis of **influenza A(H3N2) virus whole-genome sequence (WGS)** data collected between December 2015 and December 2016. The data was collected from a rural coastal community in Kenya. The aim of the analysis is to describe the patterns of spread of influenza A(H3N2) virus in Kilifi, Kenya using WGS data and apply contemporaneous global datasets to determine the patterns of introduction and local spread of the virus in Kilifi, Kenya.


### General instructions

These instructions will allow you to replicate the results shown in our work. 


### Prerequisites

The analysis was done using the following software packages:


  1. Bayesian Evolutionary Analysis Sampling Trees (BEAST) Version 1.10.4. (http://tree.bio.ed.ac.uk/software/beast/).
  2. Bayesian Evolutionary Analysis Utility (BEAUti) Version 1.10.4. (http://tree.bio.ed.ac.uk/software/beauti/).
  3. Spatial Phylogenetics Reconstruction of Evolutionary Dynamics using Data-Driven Documents (SpreaD3) Version 0.9.6. (http://tree.bio.ed.ac.uk/software/spread3/).
  4. FigTree Version 1.4.4. (http://tree.bio.ed.ac.uk/software/figtree/).


### Datasets

The WGS datasets from Kilifi, Kenya are also available from the `Global Initiative on Sharing All Influenza Data (GISAID) EpiFlu database ([https://www.gisaid.org/])`.

  1. H3N2_Kilifi_genomes
 
  A set of 58 Kilifi A(H3N2) virus whole-genome sequences and corresponding GISAID accession numbers.
 
  2. H3N2_Kilifi_and_global_genomes
  
  A set of 58 Kilifi and 1,547 global A(H3N2) virus whole-genome sequences.   
 
  3. H3N2_Kilifi_genetic_groups_with_global_clusters
  
  A set of global clusters with Kilifi A(H3N2) virus genetic groups selected based on high bootstrap values.
>>>>>>> 66ed8115afb0e5f4c9add56985a6890ec0fea3ac
