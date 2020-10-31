Trabajo Planras Extintas
================

# Introducción

Plantas extintas base de datos de la
[*IUCN*](https://www.iucnredlist.org/)

## Subtitulo

*cursiva* **negrita**

## Trabajando con los datos

cargar los paquetes necesarios para trabajar

``` r
library(tidyverse)
```

    ## Warning: package 'tidyverse' was built under R version 4.0.3

    ## -- Attaching packages --------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.2     v purrr   0.3.4
    ## v tibble  3.0.3     v dplyr   1.0.2
    ## v tidyr   1.1.2     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.5.0

    ## -- Conflicts ------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

Ahora voy a leer los datos con los que voy a trabajar

``` r
plants = readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   binomial_name = col_character(),
    ##   country = col_character(),
    ##   continent = col_character(),
    ##   group = col_character(),
    ##   year_last_seen = col_character(),
    ##   red_list_category = col_character()
    ## )

    ## See spec(...) for full column specifications.

## Filtrando los datos

El ejercicio sera para dejar solo las plantas de chile

``` r
Chile = plants %>%
  dplyr::filter(country == "Chile") %>% 
  dplyr::select(binomial_name, country)

Chile
```

    ## # A tibble: 2 x 2
    ##   binomial_name           country
    ##   <chr>                   <chr>  
    ## 1 Santalum fernandezianum Chile  
    ## 2 Sophora toromiro        Chile
