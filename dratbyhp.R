library(ggplot2)

g=ggplot( data=mtcars2, aes(x=hp, y=drat, col=tran.type)) +
        geom_point(size=5, aes(shape=eng.type)) +
        stat_smooth(method="lm", size=2) +
        labs(title="Rear Axle Ratio by Engine Horsepower\nand Engine and Transmission Type",
             y="Rear Axle Ratio", x = "Gross Engine Horsepower")
        

