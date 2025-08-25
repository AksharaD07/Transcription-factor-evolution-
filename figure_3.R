library(ggplot2)
library(ggtree)
library(treeio)
library(RColorBrewer)
library(ape)
library(cowplot)
# set working directory to file folder

# read euBac_18S tree and tip annotations files
pnas<- read.tree(".euBac_18S.tree")
pnas_lab<-read.delim("./euBac_18S_annotation", header = F,sep = "\t")
colnames(pnas_lab)=c("Name","Kingdom")

# read euArch_18S tree and tip annotations files
sci<- read.tree("./euArch_18S.tree")
sci_lab<- read.delim("./euArch_18S_annotation", header = F,sep = "\t")
colnames(sci_lab)=c("Name","Kingdom")

# read 18S_archaea tree and tip annotations files
rna<- read.tree("./18S_archaea.tree")
rna_lab<-read.delim2(file =" ./18S_archaea_annotation", header = T, sep = "\t")
colnames(rna_lab)=c("Name","Kingdom")

# read euBac_concat tree and tip annotations files
gm<- read.tree("./euBac_concat.tree")
gm$tip.label
tip_lab= read.delim2(file ="./euBac_concat_annotation", header = T, sep = "\t")
tip_lab$tip<- gsub(" ", "_", tip_lab$tip)
colnames(tip_lab)=c("Name","Kingdom")

clade_colour<- c("#0c37c2","#9b64d4","#c56785", "#54bd59","#f8af6f", "black")
clade_colour1<- c("#0c37c2","#c56785","#9b64d4", "#54bd59","#f8af6f")

# euBac_18S tree
p=ggtree(pnas,size=.4, color="#495057")  %<+% pnas_lab +
  geom_tiplab(aes(color=Kingdom), size=.9, alpha=1)+
  #geom_text(aes(label=node),hjust=-.3, size= 1)+
  #geom_tippoint(aes(color=Kingdom), size=2, alpha=1) +
  scale_color_manual("Kingdom", values = clade_colour ) +
  theme_tree()+
  vexpand(.008,1)+
  vexpand(.008,-1)
plot(p)


# euArch_18S
s=ggtree(sci, size=.4, color="#495057")
s<- flip(s,878,969) 
s=s  %<+% sci_lab +
  geom_tiplab(aes(color=Kingdom), size=.9, alpha=1)+
  #geom_text(aes(label=node),hjust=-.3, size= 1)+
  scale_color_manual("Kingdom", values = clade_colour ) +
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree()
plot(s)

# 18S_archaea tree
r=ggtree(rna,size=.3, color="#495057")  %<+% rna_lab +
  geom_tiplab(aes(color=Kingdom), size=.9, alpha=1)+
  #geom_text(aes(label=node),hjust=-.3, size= 1)+
  #geom_tippoint(aes(color=Kingdom), size=2, alpha=1) +
  scale_color_manual("Kingdom", values = clade_colour ) +
  theme_tree()+
  vexpand(.008,1)+
  vexpand(.008,-1)
plot(r)


# euBac_concat tree
g=ggtree(gm,size=.3, color="#495057")  %<+% tip_lab +
  geom_tiplab(aes(color=Kingdom), size=.9, alpha=1)+
  #geom_text(aes(label=node),hjust=-.3, size= 1)+
  #geom_tippoint(aes(color=Kingdom), size=2, alpha=.75) +
  scale_color_manual("Kingdom", values = clade_colour ) +
  theme_tree()+
  vexpand(.008,1)+
  vexpand(.008,-1)
g<- flip(g,479,655)
plot(g)

