# Influenza H1N1pdm09 and H3N2 virus genomes from Kenya and global datasets, 2009-2018

Author:         David Collins Owuor

Institution:   KEMRI-Wellcome Trust Research Programme, Kilifi, Kenya

Date Published: 30 April 2020

## Introduction

This repository consists of a summarised dataset of influenza A **H1N1pdm09 virus and H3N2
virus next generation sequencing (NGS)** data from Kenya and contemporaneous global NGS
datasets.

## General instructions

These instructions will allow replication of the results in my PhD thesis available at
http://oro.open.ac.uk/75472/; Chapter 2 - Materials and Methods.

## Datasets

The Kenyan NGS dataset are available from the Global Initiative on Sharing All Influenza
Data (GISAID) database (https://platform.gisaid.org/epi3/cfrontend).

1.	1_H1N1pdm09_and_H3N2_viruses_Kenya_genomes.

* H1N1pdm09_Kenya_2009-2018_genome_details.txt

A list of 383 influenza H1N1pdm09 virus (2009-2018) NGS data from Kenya showing: strain - 
virus strain identity; accession - GISAID accession number; site - location of isolation; 
reads - number of sequencing reads; flu - number of influenza virus reads; Ct - PCR Ct value; 
and date - collection dates.

* H3N2_Kilifi_2015-2016_genome_details.txt

A list of 58 H3N2 virus (2015-2016) NGS data from Kenya showing: strain - virus strain
identity; accession - GISAID accession number; site - location of isolation; 
reads - number of sequencing reads; number of influenza virus reads; Ct - PCR Ct value;
date - collection dates; and strain_accession - strain ID showing collection site for
analysis.

2.	2_H1N1pdm09_virus_reference-based_assembly.

Reference-based assembly of 10 Kenyan paired-end read datasets to evaluate utility of
BWA assembler for genome assembly. The **assembly.sh** script was used to: count number of
raw reads, trim raw reads, map trimmed reads to reference, sort, merge, and index the
reads and perform a final alignment.

a. Assembly output files - small output files only:

* 1_Total_raw_reads - Total number of raw reads;
* 2_Total_raw_paired_reads - Total number of raw paired reads;
* 3_Trimming_report - Raw read trimming report;
* 6_BAM_files - Binary Alignment Map, binary SAM format;
* 8_Consensus - Consensus sequences from read mapping;
* 9_Mutants - Differences between reference and consensus sequences;
* 10_Aligned - Alignment of reference and consensus sequences;
* 11_Segments - Final segment alignments for 8 virus segments (compressed).

b.	Reference; Reference sequence and reference index output.

c.	assembly.sh; Assembly script for reference-based assembly.

d.	valvs_read_count.py; Script to count number of paired-end reads.

e.	AlignMuts.jar; Show differences between reference and consensus sequences.

f.	mapping_statistics.txt; Summary of mapping statistics.

3.	3_H1N1pdm09_virus_IRMA_assembly.

Compressed fasta files from IRMA assembly.

* 1_H1N1pdm09_PB2.fasta.zip
* 2_H1N1pdm09_PB1.fasta.zip
* 3_H1N1pdm09_PA.fasta.zip
* 4_H1N1pdm09_HA.fasta.zip
* 5_H1N1pdm09_NP.fasta.zip
* 6_H1N1pdm09_NA.fasta.zip
* 7_H1N1pdm09_M.fasta.zip
* 8_H1N1pdm09_NS.fasta.zip

4.	4_Global_H1N1pdm09_and_H3N2_virus_datasets.

A list of global influenza H1N1pdm09 virus and H3N2 virus data showing: strain -
virus strain identity; accession - GISAID accession number; country - country of isolation; 
and continent - continent of isolation.

* H1N1pdm09_global_WGS_genome_details_2009-2018.tsv

* H3N2_global_WGS_genome_details_2010-2016.tsv
