rm(list=ls())
source("emc/emc.R")
source("models/DDM/DDM/ddmTZD.R")
load("sPNAS_a_full.RData")

sPNAS_a_full <- auto_burn(sPNAS_a_full,cores_per_chain=7)
save(sPNAS_a_full,file="sPNAS_a_full.RData")
sPNAS_a_full <- auto_adapt(sPNAS_a_full,cores_per_chain=7)
save(sPNAS_a_full,file="sPNAS_a_full.RData")
sPNAS_a_full <- auto_sample(sPNAS_a_full,iter=1000,cores_per_chain=7)
save(sPNAS_a_full,file="sPNAS_a_full.RData")
ppPNAS_a_full <- post_predict(sPNAS_a_full,n_cores=19)
save(ppPNAS_a_full,sPNAS_a_full,file="sPNAS_a_full.RData")
