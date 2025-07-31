# Пресвята Софіє Лебеденко, допоможи ти мучениці нашій, вірній тобі до кінця, Софії.
# Ой, спаси ти її від прокляття сього коду R.
# Заряди RStudio той насущний на роботу припотужну.
# Нехай кожне запитання, що стане на його шляху, заходить і не лагає.
# Гойда 

DNAseq <- function(x) {
  basepair <- c("A", "T", "G", "C")
  abc <- unlist(strsplit(toupper(x),NULL))
  paste(unlist(lapply(abc,function(DNAseq){
    if(DNAseq == 'A') stringss <- "T"
    if(DNAseq == 'T') stringss <- "A"
    if(DNAseq == 'G') stringss <- "C"
    if(DNAseq == 'C') stringss <- "G"
    if(!(DNAseq %in% basepair)) stringss <- "N"
  return(stringss)
  })), collapse = "")
}
DNAseq("ATCGat")

RNAseq <- function(x) {
  basepair <- c("A", "U", "G", "C")
  abc <- unlist(strsplit(toupper(x),NULL))
  paste(unlist(lapply(abc,function(RNAseq){
    if(RNAseq == 'A') stringss <- "U"
    if(RNAseq == 'U') stringss <- "A"
    if(RNAseq == 'G') stringss <- "C"
    if(RNAseq == 'C') stringss <- "G"
    if(!(RNAseq %in% basepair)) stringss <- "N"
    return(stringss)
  })), collapse = "")
}
RNAseq("AUCGau")

mRNA <- function(x) {
  basepair <- c("A", "T", "G", "C")
  abc <- unlist(strsplit(toupper(x),NULL))
  paste(unlist(lapply(abc,function(mRNA){
    if(mRNA == 'A') stringss <- "U"
    if(mRNA == 'T') stringss <- "A"
    if(mRNA == 'G') stringss <- "C"
    if(mRNA == 'C') stringss <- "G"
    if(!(mRNA %in% basepair)) stringss <- "N"
    return(stringss)
  })), collapse = "")
}
mRNA("AUCGTWAGCTG")

GC_count <- function(seq){
  seq <- toupper(seq)
  bases <- unlist(strsplit(seq,NULL))
  gc <- sum(bases %in% c("C", "G"))
  valid <- sum(bases %in% c("C", "G", "A", "T"))
  if(valid == 0) return(NA)
  percent <- (gc/valid)*100
  return(percent)
}
GC_count("ATGCAAT")