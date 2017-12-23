####################################################################
##############################SI FIGURE 2###########################
####################################################################

#analysis performed in R V 3.4
#Correlation between PICRUSt and rrnDB in Centralia
picrust_rrndb <- read.delim("C:/Users/patty/Documents/picrust_rrndb.txt")
library(ggplot2)
ggplot(picrust_rrndb, aes(Weighted_Copy_PC, Weighted_Copy_rrn, colour=Type))+
  geom_point(aes(cex=1.2))+
  theme_bw()+
  ylab("Weighted Mean Copy Number- rrndb")+
  xlab("Weighted Mean Copy Number- PICRUSt")+
  scale_size(guide='none')
  

cor.test(picrust_rrndb$Weighted_Copy_PC, picrust_rrndb$Weighted_Copy_rrn, method='spearman')

Spearman's rank correlation rho

data:  picrust_rrndb$Weighted_Copy_PC and picrust_rrndb$Weighted_Copy_rrn
S = 7798.7, p-value = 3.152e-09
alternative hypothesis: true rho is not equal to 0
sample estimates:
rho 
0.8627374
