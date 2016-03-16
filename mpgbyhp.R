library(ggplot2)

g=ggplot( data=mtcars2, aes(x=hp, y=mpg, col=tran.type)) +
        geom_point(size=2, aes(shape=drat.size)) +
        stat_smooth(method="lm", size=1) +
        labs(title="Miles Per Gallon by Engine Horsepower\nand Transmission Type",
             y="Miles Per Gallon", x = "Engine Horsepower (hp)") +
        scale_fill_discrete(name="Transmission Type")
