library(ggplot2)

n=nrow(mtcars2)
df <- data.frame( predict=c(predict(m1), predict(m2), predict(m3)),
                  resid  =c(resid(m1),   resid(m2),   resid(m3)),
                  Model  =c(rep("Model 1", n), rep("Model 2",n), rep("Model 3",n)),
                  Transmission = rep(mtcars2$tran.type, 3))
g=ggplot( data=df, aes(x=predict, y=resid, col=Model)) +
        geom_point(size=3, aes( shape=Transmission)) +
        facet_wrap(~Model) +
        geom_hline(yintercept=0, size=1, col="Black")+
        
        labs(title="Residuals\nFor All Three Models",
             y="Residual(mpg)", x = "Predicted MPG" )
