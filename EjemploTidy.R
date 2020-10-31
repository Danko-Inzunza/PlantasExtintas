library(tidyverse)

##Base de datos

data("mtcars")

##Filtro con solo veiculos de 8 cilindros

Mt = mtcars %>% filter(cyl == 8)

