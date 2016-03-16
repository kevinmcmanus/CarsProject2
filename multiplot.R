```{r explots, fig.width=12, echo=FALSE}
library(ggplot2)
library(grid)
g1=ggplot( data=mtcars2, aes(x=disp, y=mpg, col=tran.type)) +
        geom_point(size=5, aes(shape=eng.type)) +
        stat_smooth(method="lm", size=2) +
        labs(title="Engine Displacement",
             y="Miles Per Gallon", x = "Engine Displacement (Cubic Inches)") +
        theme(legend.position="none")
g2=ggplot( data=mtcars2, aes(x=wt, y=mpg, col=tran.type)) +
        geom_point(size=5, aes(shape=eng.type)) +
        stat_smooth(method="lm", size=2) +
        labs(title="Vehicle Weight",
             y=NULL, x = "Vehicle Weight (Thousands of Pounds)") +
        theme(legend.position="none")
g3=ggplot( data=mtcars2, aes(x=hp, y=mpg, col=tran.type)) +
        geom_point(size=5, aes(shape=eng.type)) +
        stat_smooth(method="lm", size=2) +
        labs(title="Engine HP",
             y=NULL, x = "Engine Gross Horsepower") +
        scale_fill_discrete(name="Transmission Type")

#pushViewport(viewport(layout=grid.layout(nrow=2, ncol=3)))
pushViewport(viewport(layout = grid.layout(nrow=2, ncol=3, heights = unit(c(1, 4), "null"))))
grid.text("Figure 2: Miles Per Gallon for Various Predictors\nand Engine and Transmission Types",
          vp = viewport(layout.pos.row = 1, layout.pos.col = 1:3))
print(g1,vp=viewport(layout.pos.row = 2, layout.pos.col = 1))
print(g2,vp=viewport(layout.pos.row = 2, layout.pos.col = 2))
print(g3,vp=viewport(layout.pos.row = 2, layout.pos.col = 3))
