library(factoextra)
library(Rtsne)
library(dplyr)
data("iris")
df <- cbind(iris$Sepal.Length, iris$Sepal.Width, iris$Petal.Length, iris$Petal.Width)
#pca_iris = prcomp(df, center = TRUE, scale = TRUE)
#去除重复行
df <- df %>% distinct(V1,V2,V3,V4, .keep_all = T)
tsne_output <- Rtsne(df, dims = 2, perplexity = 30, 
                     check_duplicates = TRUE, pca = TRUE)

