#main script
setwd("C:/Users/miche_000/Downloads/Shark")
start.time <- Sys.time()
source("Preparation.R")
source('SimulationOneCell.R')
source("SimulationAllCells.R")
source("collectResults.R")
source("GetErrors.R")
end.time <- Sys.time()
time.taken <- end.time - start.time
time.taken