---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# tidyquintro

<!-- badges: start -->
[![R build status](https://github.com/Athanasiamo/tidyquintro/workflows/R-CMD-check/badge.svg)](https://github.com/Athanasiamo/tidyquintro/actions)
[![Travis build status](https://travis-ci.com/Athanasiamo/tidyquintro.svg?branch=master)](https://travis-ci.com/Athanasiamo/tidyquintro)
<!-- badges: end -->

A 4 hour workshop with quick introduction to [tidyverse](https://www.tidyverse.org/).

## Workshop preparations

This package contains materials that are necessary for the workshop. 
You can install tidyquintro from [github]() with


```r
# install.packages("remotes")
remotes::install_github("Athanasiamo/tidyquintro")
```

This will also install the packages that the tutorial will cover.
Additionally, the exercises connected to each of the topics will also be accessible via the learnr-package.


```r
library(tidyquintro)
```


```r
learnr::available_tutorials("tidyquintro")
#> Available tutorials:
#> * tidyquintro
#>   - 001-filtering        : "Subsetting data"
#>   - 002-chaining         : "Chaining data - the pipe"
#>   - 003-mutating         : "Altering or adding variables to data sets"
#>   - 004-pivoting         : "Pivoting data - long and wide formats"
#>   - 006-grouping         : "Grouping data sets"
#>   - 007-nesting          : "Working with nested data sets"
#>   - 008-nesting-analyses : "Running analyses in nested data sets"
```

## Timeline
All parts (except first intro) come with small exercises and breaks between.

- Introduction to [tidyverse](https://www.tidyverse.org/) concepts (15 minutes)  

- Tidy data wrangling (with translations to base-R) (~ 2 hours) 
  - sub-setting data with [dplyr](https://dplyr.tidyverse.org/) (~25 min)  
  - chaining commands with the pipe `%>%` (~10 min)  
  - adding and altering variables with [dplyr](https://dplyr.tidyverse.org/)  (~25 min)  
  - pivoting data with [tidyr](https://tidyr.tidyverse.org/) (~25 min) 
  
- Lunch break (30 min)  

- Tidy data analysis with purrr and broom - avoiding loops (~ 1.5 hours)   
  - nesting data with [tidyr](https://tidyr.tidyverse.org/) (~25 min)  
  - working on nested data with [purrr](https://purrr.tidyverse.org/) (~25 min)  
  - analyses in nested data with [purrr](https://purrr.tidyverse.org/), [tidyr](https://tidyr.tidyverse.org/) and [broom](https://github.com/tidymodels/broom) (~25 min)  
