library(ggplot2)

g=ggplot( data=mtcars2, aes(x=disp, y=hp )) +
        stat_smooth(method="lm", size=1, color="Black") +
        geom_point(size=3, aes(shape=eng.type, col=factor(cyl))) +

        labs(title="Engine Horsepower by Displacement",
             y="Engine Horsepower (hp)", x = "Engine Displacement (cu in") 
