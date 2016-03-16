q2plot <- function(cvar){
  
  ggplot(aes(x=1:nrow(training),y=CompressiveStrength,
             col=cut2(training[,cvar],g=5)),
         data=training) +
          labs(title=paste("Compressive strength by",
                           names(training)[cvar])) +
    geom_point()
}