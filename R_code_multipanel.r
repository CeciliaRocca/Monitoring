###Multipanel in R: the second lesson of Monitoring Ecosystem

install.packages("sp")
install.packages("GGally") #this is used for the function ggpair

library(sp)  #require(sp) will also do the job
library(GGally)

data(meuse)  #there is a dataset available named meuse

attach(meuse)

#Excercise: see the names of the variables and plot cadmium versus zinc
there are two ways: name(meuse), head(meuse)

plot(cadmium,zinc,pch=15,col="green",cex=2)

#Excersise: make all the possible paired plots in the datased
#don't use plots, use pairs(meuse)
#in case you receive the error "the sieze is too large" reshape the graph window with the mouse

pairs(~cadium+copper+lead+zinc,data=meuse)

#pairing from the 3rd to the 6th column

pairs(meuse[,3:6])

#Excersise: prettify the graph
pairs(meuse[,3:6],pch=18,col="red",cex=1.5)

#GGally package will prettify the graph
ggapirs(meuse[,3:6])
#it shows the frequency of the values for each column (ie: cadmium shows few high values and mostly low values)
#correlation: cadmium and copper have similar values, therefore high correlation: 0.925
