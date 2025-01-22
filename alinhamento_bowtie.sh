# Constru��o do �ndice de alinhamento com Bowtie
bowtie-build reference.fasta reference_index

# Alinhamento das sequ�ncias contra a refer�ncia de Wolbachia
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log

N�s utilizamos estes par�metros para:
-f = definir o formato de arquivo de entrada como sendo do tipo FASTA.

-S para solicitar que o resultado seja escrito no formato SAM

A flag -a comanda o algoritmo a dar parte de todos os alinhamentos por
leitura.

-v sendo igual a zero permite um total de zero mismatches permitidos na
an�lise.

-p 3 estabelece que apenas 3 Threads ser�o utilizadas para processar os 
resultados.

-t solicita a exposi��o do tempo de execu��o exigido para cada alinhamento.
