#June 2012
#setwd("C:/Academic/MS2012/Rfiles")

DATADIR="C:/Academic/MS2012/DATA/"
RESDIR="C:/Academic/MS2012/RES/"
SCRIPTDIR="C:/Academic/MS2012/Rfiles/"

source(paste(SCRIPTDIR,"log_reg_4p_w_uncertainty_w_gender_as_2nd_baseline2012.R",sep=""))
LOCUS="DRB"
COHORT="UK"
COND_LOCUS="DRB"
COND_TYPE="1501"
COND_LOCUS2="A"
COND_TYPE2="0201"
COND_LOCUS3="DRB"
COND_TYPE3="1303"

casefile=paste(LOCUS,".cases.matched.ordered.ms2012.",COHORT,sep="")
ctrlfile=paste(LOCUS,".ctrls.matched.ordered.ms2012.",COHORT,sep="")
cond_casefile=paste(COND_LOCUS,".cases.matched.ordered.ms2012.",COHORT,sep="")
cond_ctrlfile=paste(COND_LOCUS,".ctrls.matched.ordered.ms2012.",COHORT,sep="")
cond_casefile2=paste(COND_LOCUS2,".cases.matched.ordered.ms2012.",COHORT,sep="")
cond_ctrlfile2=paste(COND_LOCUS2,".ctrls.matched.ordered.ms2012.",COHORT,sep="")
cond_casefile3=paste(COND_LOCUS3,".cases.matched.ordered.ms2012.",COHORT,sep="")
cond_ctrlfile3=paste(COND_LOCUS3,".ctrls.matched.ordered.ms2012.",COHORT,sep="")

GNDcase=paste("gender.cases.ordered.ms2012.",COHORT,sep="")
GNDctrl=paste("gender.ctrls.ordered.ms2012.",COHORT,sep="")
OUTPUTFILE=paste("4p_logregwgender_",LOCUS,".",COHORT,sep="")
FROM=5
TO=5
log_reg_uncond_w_uncertainty_4p_w_gender(casefile,ctrlfile,LOCUS,"4D",1,
cond_casefile,cond_ctrlfile,COND_LOCUS,COND_TYPE,"4D",1,
cond_casefile2,cond_ctrlfile2,COND_LOCUS2,COND_TYPE2,"4D",1,
cond_casefile3,cond_ctrlfile3,COND_LOCUS3,COND_TYPE3,"4D",1,
GNDcase,GNDctrl,FROM,TO,OUTPUTFILE,DATADIR,RESDIR,SCRIPTDIR);

#END