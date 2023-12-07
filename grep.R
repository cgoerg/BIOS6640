drug <- c("","Bup","Nal","Bup,Nal")
df <- data.frame(drug)

b_drug_index <- grep("Bup",df$drug) 
n_drug_index <- grep("Nal",df$drug) 

either_drug_index <- grep("Bup|Nal",df$drug) 
both_drugs_index <- grep("(?=.*Bup)(?=.*Nal)", df$drug, perl=T)

drug <- rep(0,4)
drug[b_drug_index] <- 1
drug[n_drug_index] <- 2
drug[both_drugs_index] <- 3
drug

bup <- rep(0,4)  # initialize bup with zeros
nal <- rep(0,4)  # initialize nal with zeros
bup[b_drug_index] <- 1  # use index to set bup rowx to 1
nal[n_drug_index] <- 2  # use index to set nal rows to 2
dx <- bup + nal         # add indices: rows with only bup remain 1 (1+0), rows with only nal remain 2(0+2), rows with both bup and nal will be 3 (1+2)

dx
