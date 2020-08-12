## Influenza H1N1pdm09 and H3N2 virus genomes from Kenya and global datasets

Author:         David Collins Owuor

Institution:   KEMRI-Wellcome Trust Research Programme, Kilifi, Kenya

Date Published: 30 April 2020

### Introduction

This work describes **H1N1pdm09 and H3N2 viruses whole-genome sequence (WGS)** data collection from Kenya. The aim of the repository is to give a summary of the dataset from Kenya and analyses of the data.

### General instructions

These instructions will allow replication of the results shown in this work.

### Datasets

The Kenya WGS dataset are available from the Global Initiative on Sharing All Influenza Data (GISAID) database (https://platform.gisaid.org/epi3/cfrontend).

1.	1_H1N1pdm09_and_H3N2_virus_Kenya_genomes

Lists of 383 influenza H1N1pdm09 virus (2009-2018) and 58 H3N2 virus (2015-2016) WGS data showing: sample names, GISAID accession numbers, collection locations, virus clades, number of sequencing reads, number of influenza reads, PCR Ct values and collection dates.

	  (i)	H1N1pdm09_Kenya_2009-2018_genome_details.txt
	  (ii)	H3N2_Kilifi_Kenya_2015-2016_genome_details.txt

2.	2_H1N1pdm09_virus_reference-based_assembly

Reference-based assembly of 10 Kenyan paired end read data to evaluate utility of the BWA assembler for genome assembly. The **assembly.sh** script was used to: count number of raw reads, trim raw reads, map trimmed reads to reference, sort, merge, and index the reads and perform a final alignment.

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

		 KNH-1870_R1.fastq and KNH-1870_R2.fastq - A/Kenya/CDC-KNH/001/2009
		 KNH-1892_R1.fastq and KNH-1892_R2.fastq - A/Kenya/CDC-KNH/002/2009
		 KNH-1916_R1.fastq and KNH-1916_R2.fastq - A/Kenya/CDC-KNH/003/2009
		 KNH-1931_R1.fastq and KNH-1931_R2.fastq - A/Kenya/CDC-KNH/004/2009
		 KNH-1974_R1.fastq and KNH-1974_R2.fastq - A/Kenya/CDC-KNH/006/2009
		 KNH-1987_R1.fastq and KNH-1987_R2.fastq - A/Kenya/CDC-KNH/009/2009
		 KNH-2004_R1.fastq and KNH-2004_R2.fastq - A/Kenya/CDC-KNH/011/2009
		 KNH-2005_R1.fastq and KNH-2005_R2.fastq - A/Kenya/CDC-KNH/012/2009
		 KNH-2008_R1.fastq and KNH-2008_R2.fastq - A/Kenya/CDC-KNH/013/2009
		 KNH-2011_R1.fastq and KNH-2011_R2.fastq - A/Kenya/CDC-KNH/014/2009


  3.	3_H1N1pdm09_virus_IRMA_assembly

  	 1_H1N1pdm09_PB2.fasta
  	 2_H1N1pdm09_PB1.fasta
	 3_H1N1pdm09_PA.fasta
	 4_H1N1pdm09_HA.fasta
	 5_H1N1pdm09_NP.fasta
	 6_H1N1pdm09_NA.fasta
	 7_H1N1pdm09_M.fasta
	 8_H1N1pdm09_NS.fasta


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
