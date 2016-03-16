library(ggplot2)

g=ggplot( data=mtcars2, aes(x=wt, y=mpg)) +
        stat_smooth(method="lm", color="Black") +
        geom_point(size=3, aes(col=tran.type)) +

        labs(title="Figure 2: Miles Per Gallon\nby Vehicle Weight and Transmission Type",
             y="Miles Per Gallon", x = "Vehicle Weight (Thousands of Pounds)") +
        scale_fill_discrete(name="Transmission Type")
