library(ggplot2)
g=ggplot(data=mtcars2, aes(x=tran.type, y=mpg, fill=tran.type))+
#        facet_wrap(~cyl)+
        geom_boxplot() +
       facet_grid(.~cyl, labeller=function(x){list(paste("Cylinders:",x$cyl))})+
        # facet_grid(.~cyl, labeller = label_both)+
        labs(title="Figure 1: Miles Per Gallon\nby Number of Cylinders and Transmission Type",
             y="Miles Per Gallon", x = "Transmission Type")+
        theme(legend.position = "none")
        # scale_fill_discrete(name="Transmission Type")
        