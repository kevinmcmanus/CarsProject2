library(ggplot2)
im=influence.measures(m2)
coefs=m2$coefficients
mt2=mtcars2
mt2$has.inf=factor(ifelse(apply(im$is.inf,1,sum)>0,"High Influence","Low Influence"),
                   levels=c("Low Influence", "High Influence"))

mycolors = scales::hue_pal()(4)
g=ggplot( data=mt2, aes(x=hp, y=mpg, col=tran.type)) +
        geom_point( aes(size=has.inf,shape=tran.type)) +
        geom_abline(intercept = coefs[1], slope=coefs[2], color=mycolors[3]) +
        geom_abline(intercept = coefs[1]+ coefs[3], slope=coefs[2], color=mycolors[1])+
        labs(title="Figure 5: Miles Per Gallon\nActual (Shape) and Predicted (Line)",
             y="Miles Per Gallon", x = "Engine Horsepower (hp)") +
        scale_fill_discrete(name="Transmission Type")
