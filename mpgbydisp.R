library(ggplot2)

g=ggplot( data=mtcars2, aes(x=disp, y=mpg, col=tran.type)) +
        geom_point(size=5, aes(shape=eng.type)) +
        stat_smooth(method="lm", size=2) +
        labs(title="Miles Per Gallon by Engine Displacement\nand Engine and Transmission Type",
             y="Miles Per Gallon", x = "Engine Displacement (Cubic Inches)") +
        scale_fill_discrete(name="Transmission Type")
        