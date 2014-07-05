read.fitocracy <-function(file){
  
  a<-read.csv(file)
  weight<-c()
  reps<-c()
  for( i in 1:length(a[,1])){
    weight<-c(weight,(strsplit(x=as.character(a[,8]),split = " kg")[[i]][[1]]))
    reps<-c(reps,as.numeric(gsub(x=strsplit(x=as.character(a[,8]),split = " kg")[[i]][[2]],pattern="[^0-9]",replacement = ""))
    )
  }
  
  weight<-as.numeric(weight)
  
  exercise <- as.character(a[1,1])
  
  df<-data.frame(exercise=exercise,date=as.Date(a[,2]), weight=weight,reps=reps)
  
  return(df)
}