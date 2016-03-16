
mtcars2=mtcars

#1 means automatic, 0 means Manual
mtcars2$tran.type=factor(ifelse(mtcars$am==0,"Automatic","Manual"))

#0 means V, 1 means straight
mtcars2$eng.type = factor(ifelse(mtcars$vs == 1,"Inline","V-Block"))

#slice the rear axle ratio into 3 equal buckets
q=quantile(mtcars$drat,c(0.33,0.67))
mtcars2$drat.size=cut(mtcars2$drat,c(0,q,10),labels=c("Low","Medium","High"))


