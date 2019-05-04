#Method new: Perm test

#Method_new<- function(SimData){
 # formula <- Y~group
  #res <- permTS(formula, data = SimData)
  #return <- res}

permTestRpackage <- function(group1,group2){
  
  g1g2 <- c(group1,group2)
  
  gLabels <- as.factor(c(rep(1,length(group1)),rep(2,length(group2))))
  
  theData <- data.frame(y=g1g2,x=gLabels)
  
  theRes <- GFD(y ~ x, data = theData, nperm = 10000, alpha = 0.05)
  
  return(theRes$WTS[4])
  
}