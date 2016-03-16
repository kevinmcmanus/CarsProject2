m1=lm(mpg~hp, data=mtcars2)
m2=update(m1, mpg~wt+tran.type)
m3=update(m2, mpg~hp+tran.type+drat.size+factor(gear))
anova(m1, m2, m3)
