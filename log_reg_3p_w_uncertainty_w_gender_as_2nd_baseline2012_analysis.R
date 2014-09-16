#June 2012
setwd("C:/Academic/MS2012/Rfiles")
source("log_reg_3p_w_uncertainty_w_gender_as_2nd_baseline2012.R")
LOCUS="DPB"
COHORT="BEL"
COND_LOCUS="DRB"
COND_TYPE="1501"
COND_LOCUS2="A"
COND_TYPE2="0201"
YMAX=30

casefile=paste(LOCUS,".cases.ms2012.",COHORT,sep="")
ctrlfile=paste(LOCUS,".ctrls.ms2012.",COHORT,sep="")
cond_casefile=paste(COND_LOCUS,".cases.ms2012.",COHORT,sep="")
cond_ctrlfile=paste(COND_LOCUS,".ctrls.ms2012.",COHORT,sep="")
cond_casefile2=paste(COND_LOCUS2,".cases.ms2012.",COHORT,sep="")
cond_ctrlfile2=paste(COND_LOCUS2,".ctrls.ms2012.",COHORT,sep="")

GNDcase=paste("gender.cases.ms2012.",COHORT,sep="")
GNDctrl=paste("gender.ctrls.ms2012.",COHORT,sep="")
OUTPUTFILE=paste("C:/Academic/MS2012/RESULTS/","3p_logregwgender_",LOCUS,".",COHORT,sep="")
tag=paste(LOCUS,", 3par unc-aware log reg w gender, 4D, ",COHORT," samples",sep="")

log_reg_uncond_w_uncertainty_3p_w_gender(casefile,ctrlfile,LOCUS,"4D",1,
cond_casefile,cond_ctrlfile,COND_LOCUS,COND_TYPE,"4D",1,
cond_casefile2,cond_ctrlfile2,COND_LOCUS2,COND_TYPE2,"4D",1,
GNDcase,GNDctrl,YMAX,tag,OUTPUTFILE,1);

#END