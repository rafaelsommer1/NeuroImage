library(neurobase)

args = commandArgs(trailingOnly=TRUE)


directory <- args[1]
lesions_list <- dir(directory)
setwd(directory)

lesions = list()
for(i in 1:length(lesions_list)) {
        lesions[[i]] <- readnii(lesions_list[i])

}

map <- Reduce("+", lesions)

writenii(map, filename = "map")
