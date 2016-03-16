library(ggplot2)


mtcarstmp <- data.frame(mtcars2, predict=predict(m1), resid=resid(m1))
g=ggplot( data=mtcarstmp, aes(x=predict, y=resid)) +
        #        stat_smooth(method="lm", color="Black") +
        geom_point(size=3, aes(col=tran.type)) +
        geom_hline(yintercept=0, size=2, col="Black")+
        
        labs(title="Residuals\nModel: mpg~hp",
             y="Residual(mpg)", x = "Predicted MPG" )
#        scale_fill_discrete(name="Transmission Type")
