# this code plots the new emergence of Tf and nTFs at every node of the phylogenetic tree

library(ggplot2)
library(ggtree)
library(treeio)
library(RColorBrewer)
library(ape)
# set working directory to file filder
setwd("/data/aksharad/figure_6")

############################# 18S_archaea 
tree= read.tree("./euBac_18S.tree")
df=read.delim("./euBac_18S_new_tf_ntf_counts", header = T)
df[is.na(df)] <- 0

## new_tf_count Figure 6A
p=ggtree(tree, size=.4, color="#495057") %<+% df +
  geom_point(aes(size = new_tf_count, fill=new_tf_count), alpha=1, shape=21)+
  scale_size_continuous(breaks = c(10,100,200,300,400,500, 600, 700, 794), range = c(1,6))+
  scale_fill_gradient2(midpoint = 400, low = "#ffe5ec", mid = "#e05780",high = "#9e0142")+
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree2() 
plot(p)  


## new_ntf_count Figure 6B
p=ggtree(tree, size=.4, color="#495057") %<+% df +
  geom_point(aes(size = new_ntf_count, fill=new_ntf_count), alpha=1, shape=21)+
  scale_size_continuous( breaks = c(10,50,100,200,300,342), range = c(1,3.5))+
  scale_fill_gradient2(midpoint = 171, low = "#e3f2fd", mid = "#48cae4",high = "#184e77")+
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree2()
plot(p)

############################# euArch_18S
tree= read.tree("./euArch_18S.tree")
df=read.delim("./euArch_18S_new_tf_ntf_counts", header = T)
df[is.na(df)] <- 0

## new_tf_count Figure S6 A
p=ggtree(tree, size=.4, color="#495057") %<+% df +
  geom_point(aes(size = new_tf_count, fill=new_tf_count), alpha=1, shape=21)+
  scale_size_continuous(breaks = c(10,100,200,300,400,500, 600, 700, 793), range = c(1,6))+
  scale_fill_gradient2(midpoint = 400, low = "#ffe5ec", mid = "#e05780",high = "#9e0142")+
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree2()
p<- flip(p,878,969) 
plot(p)  


## new_ntf_count Figure S6 B
p=ggtree(tree, size=.4, color="#495057") %<+% df +
  geom_point(aes(size = new_ntf_count, fill=new_ntf_count), alpha=1, shape=21)+
  scale_size_continuous( breaks = c(10,50,100,143), range = c(1,3))+
  scale_fill_gradient2(midpoint = 71, low = "#e3f2fd", mid = "#48cae4",high = "#184e77")+
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree2()
p<- flip(p,878,969) 
plot(p)

############################# 18S_archaea
tree= read.tree("./18S_archaea.tree")
df=read.delim("./18S_archaea_new_tf_ntf_counts", header = T)
df[is.na(df)] <- 0

## new_tf_count Figure S6 C
p=ggtree(tree, size=.4, color="#495057") %<+% df +
  geom_point(aes(size = new_tf_count, fill=new_tf_count), alpha=1, shape=21)+
  scale_size_continuous(breaks = c(10,100,200,300,400,500, 600, 700, 799), range = c(1,6))+
  scale_fill_gradient2(midpoint = 400, low = "#ffe5ec", mid = "#e05780",high = "#9e0142")+
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree2() 
plot(p)  


## new_ntf_count Figure S6 D
p=ggtree(tree, size=.4, color="#495057") %<+% df +
  geom_point(aes(size = new_ntf_count, fill=new_ntf_count), alpha=1, shape=21)+
  scale_size_continuous( breaks = c(10,50,100,132), range = c(1,3))+
  scale_fill_gradient2(midpoint = 66, low = "#e3f2fd", mid = "#48cae4",high = "#184e77")+
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree2()
plot(p)  

############################# euBac_concat
tree= read.tree("./euBac_concat.tree")
df=read.delim("./euBac_concat_new_tf_ntf_counts", header = T)
df[is.na(df)] <- 0

## new_tf_count Figure 6C
p=ggtree(tree, size=.4, color="#495057") %<+% df +
  geom_point(aes(size = new_tf_count, fill=new_tf_count), alpha=1, shape=21)+
  scale_size_continuous(breaks = c(5,20,50,100,150,200,250,300,350,400,450,510), range = c(1,6))+
  scale_fill_gradient2(midpoint = 255, low = "#ffe5ec", mid = "#e05780",high = "#9e0142")+
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree2()
p<- flip(p,479,655) 
plot(p)  


## new_ntf_count Figure 6D
p=ggtree(tree, size=.4, color="#495057") %<+% df +
  geom_point(aes(size = new_ntf_count, fill=new_ntf_count), alpha=1, shape=21)+
  scale_size_continuous( breaks = c(5,20,50,100,150,200,250), range = c(1,3))+
  scale_fill_gradient2(midpoint = 130, low = "#e3f2fd", mid = "#48cae4",high = "#184e77")+
  vexpand(.008,1)+
  vexpand(.008,-1)+
  theme_tree2()
p<- flip(p,479,655)
plot(p)

