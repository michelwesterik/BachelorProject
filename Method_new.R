#Method new: Perm test

Method_new<- function(SimData){
  formula <- Y~group
  res <- permTS(formula, data = SimData)
  return <- res}
