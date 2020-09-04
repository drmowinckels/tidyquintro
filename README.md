
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyquintro

<!-- badges: start -->

[![R build
status](https://github.com/Athanasiamo/tidyquintro/workflows/R-CMD-check/badge.svg)](https://github.com/Athanasiamo/tidyquintro/actions)
[![Travis build
status](https://travis-ci.com/Athanasiamo/tidyquintro.svg?branch=master)](https://travis-ci.com/Athanasiamo/tidyquintro)
<!-- badges: end -->

A 4 hour workshop with quick introduction to
[tidyverse](https://www.tidyverse.org/).

## Workshop preparations

This package contains materials that are necessary for the workshop. You
can install tidyquintro from [github](), which will also install the
packages that the tutorial will cover, with

``` r
# install.packages("remotes")
remotes::install_github("Athanasiamo/tidyquintro")
```

Loading the package will also load the necessary libraries directly

``` r
library(tidyquintro)
```

Additionally, the exercises connected to each of the topics will also be
accessible via the learnr-package.

``` r
learnr::available_tutorials("tidyquintro")
#> Available tutorials:
#> * tidyquintro
#>   - 001-plotting    : "Plotting data"
#>   - 002-filtering   : "Subsetting data"
#>   - 003-chaining    : "Chaining data - the pipe"
#>   - 004-mutating    : "Altering or adding variables to data sets"
#>   - 005-pivoting    : "Pivoting data - long and wide formats"
#>   - 006-summarising : "Summarising data"
#>   - 007-nesting     : "Working with nested data sets"
```

## Timeline

All parts (except first intro) come with small exercises and breaks
between.

  - **Introduction to [tidyverse](https://www.tidyverse.org/) concepts**
    (15 minutes)

  - **Tidy data wrangling** - with translations to base-R (\~ 2 hours)
    
      - plotting data with [ggplot2](https://ggplot2.tidyverse.org/)
        (\~25 min)
      - sub-setting data with [dplyr](https://dplyr.tidyverse.org/)
        (\~25 min)  
      - chaining commands with the pipe `%>%` (\~10 min)  
      - adding and altering variables with
        [dplyr](https://dplyr.tidyverse.org/) (\~25 min)

  - **Lunch break** (30 min)

  - **Tidy data reshaping & summaries** - avoiding loops (\~ 1.5 hours)
    
      - pivoting data with [tidyr](https://tidyr.tidyverse.org/) (\~25
        min)
      - nesting data with [tidyr](https://tidyr.tidyverse.org/) (\~25
        min)  
      - working with nested data with
        [purrr](https://purrr.tidyverse.org/) (\~25 min)
