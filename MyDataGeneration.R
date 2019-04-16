
MyDataGeneration <- function(samp, es, disttype){
  if (disttype==1){
    var1 <- rnorm(samp, 0, 1) 
    var2 <- rnorm(samp, 0 + es, 1)
  }else if (disttype==2){
    var1 <- rexp(samp, 1) 
    var2 <- rexp(samp, 1/(1+es)) 
  }else if (disttype==3){
    var1 <- rlnorm(samp, 0, 1) 
    var2 <- rlnorm(samp, 0 + es, 1)
  }else if (disttype==4){
    shape = 4
    rate = 4
    var1 <- rgamma(samp, shape, rate)
    var2 <- rgamma(samp, shape, shape/(1+es))
  }
  
  else{
    stop('Please choose a distribution from 1 to 4')
  }
  
  
  Y <- c(var1, var2)
  group <- as.factor(c(rep(1, samp), rep(2,samp)))
  dat <- data.frame(Y,group)
  return(dat) 
}