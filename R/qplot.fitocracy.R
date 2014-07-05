qplot.fitocracy<-function(file){
  lifts<-read.fitocracy(file)
  
  library(ggplot2)
  library(photonMonkey)
  p<-ggplot(lifts,aes(x=date,y=weight,size=reps))+
    geom_point()+
    stat_smooth(fullrange = T)+
    theme_pm2()+
    ggtitle(lifts$exercise[1])+
    ylab("weight (kg)")+
    xlab("Date")
  return(p)
}