#!/bin/bash

# This script will count single and paired reads; trim reads and adapters; count trimmed paired reads; assemble the genomes using a reference; call SNPs and generate consensus sequences

# D. Collins Owuor 2019

for i in *_R1.fastq;

do

	id=$(echo $i|cut -d _ -f1);
	fq1=$id"_R1.fastq";
	fq2=$id"_R2.fastq";

	echo $fq1, $fq2;

# Count number of reads

	wc -l $fq1 > $id.total-reads-R1.txt;
	wc -l $fq2 > $id.total-reads-R2.txt;
	mkdir 1_Total_raw_reads;
	mv *total-reads-R* 1_Total_raw_reads;


# Count number of paired-end reads (using valvs_read_count.py script)

	chmod 755 ./valvs_read_count.py;
	./valvs_read_count.py $fq1 > $id.paired-reads-R1.txt;
	./valvs_read_count.py $fq2 > $id.paired-reads-R2.txt;
	mkdir 2_Total_raw_paired_reads;
	mv *paired-reads-R* 2_Total_raw_paired_reads;


# Trim reads and adapters (using Trim Galore v0.6.4 and Cutadapt v1.18)

	trim_galore -q 30 --length 75 --paired $fq1 $fq2;
	tfq1=$id"_R1_val_1.fq";
	tfq2=$id"_R2_val_2.fq";
	
	echo $fq1, $fq2;

	mkdir 3_Trimming_report;
	mv *fastq_trimming_report* 3_Trimming_report;


# Map trimmed reads to the influenza consensus reference sequence (using BWA v0.7.17) 

	bwa index ./Reference/h1n1pdm09.fasta;
	bwa mem ./Reference/h1n1pdm09.fasta $tfq1 $tfq2 > $id.sam;
	mkdir 4_Trimmed_reads;
	mv *_val_* 4_Trimmed_reads;

# Sort the SAM file to generate BAM file (using SAMtools v1.10)  

	samtools sort $id.sam -o $id.bam;
	mkdir 5_SAM_files;
	mv *.sam 5_SAM_files;

# Index BAM file and generate mapping statistics for mapped and unmapped reads

	samtools index $id.bam;
	samtools idxstats $id.bam > mapping_statistics.txt;

# Call SNPs, generate and index BCF file using (BCFtools v1.10.2)

	bcftools mpileup -d100000 -Ou -f ./Reference/h1n1pdm09.fasta $id.bam | bcftools call -mv -Oz -o $id.calls.vcf.gz;
	bcftools index $id.calls.vcf.gz;
	mkdir 6_BAM_files;
	mv *bam* 6_BAM_files;

# Create consensus sequence

	cat ./Reference/h1n1pdm09.fasta | bcftools consensus $id.calls.vcf.gz > $id.consensus.fa;
	mkdir 7_VCF_files;
	mv *vcf* 7_VCF_files;


# Combine reference and consensus sequences, align combined sequences (using MAFFT v7.453) and highlight differences between the two sequences (using AlignMuts.jar)
	
	cat $id.consensus.fa ./Reference/h1n1pdm09.fasta > $id.sequence.fa;
	mafft $id.sequence.fa > $id.aligned.fa;
	java -jar ./AlignMuts.jar $id.aligned.fa;

	mkdir 8_Consensus;
	mv $id.sequence.fa 8_Consensus;
	mv $id.consensus.fa 8_Consensus;

	mkdir 9_Mutants;
	mv *muts* 9_Mutants;

	mkdir 10_Aligned;
	mv *aligned* 10_Aligned;
	
done
