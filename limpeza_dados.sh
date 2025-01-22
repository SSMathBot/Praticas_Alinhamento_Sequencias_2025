#!/bin/bash

# Avaliação de qualidade das leituras com FastQC
# Substituir SRRXXXXXXX.fastq pelo nome do arquivo correto
fastqc SRRXXXXXXX.fastq

# Limpeza e corte de sequências de baixa qualidade com Trim Galore
# Substituir SRRXXXXXXX.fastq pelo nome do arquivo correto
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 18 --dont_gzip SRRXXXXXXX.fastq
