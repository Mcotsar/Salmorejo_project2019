# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.


library(vegan)
library(ape)
#if you want ggplot because you are cool, please use library(ggplot2) 



tree = read.csv("salmorejo_project.csv")
rownames(tree)=tree[,1]
tree = tree[,2:ncol(tree)]
#https://www.rdocumentation.org/packages/vegan/versions/2.4-2/topics/vegdist 
tree2 = vegdist(treem method="jaccard")
hclust(tree2)
plot(hclust(tree2))
#tutorial for graphics here http://www.sthda.com/english/wiki/beautiful-dendrogram-visualizations-in-r-5-must-known-methods-unsupervised-machine-learning
plot(as.phylo(hclust(tree2)), edge.color = "slategrey",edge.width = 2, edge.lty = 2,label.offset = 0.02,tip.color = "dodgerblue4", main= "Types of salmorejo")
