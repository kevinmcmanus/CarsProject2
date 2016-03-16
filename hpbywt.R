library(ggplot2)

g=ggplot( data=mtcars2, aes(x=wt, y=hp )) +
        stat_smooth(method="lm", size=1, color="Black") +
      geom_point(size=3, aes( col=factor(cyl))) +
        
        labs(title="Engine Horsepower by Vehicle Weight",
             y="Engine Horsepower (hp)", x = "Vehicle Weight (1000 lbs)") 
