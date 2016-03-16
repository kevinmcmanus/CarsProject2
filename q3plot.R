q3plot <- function(){
  ggplot(aes(y=cut2(Superplasticizer,g=5)),data=training)+
    geom_histogram()
}