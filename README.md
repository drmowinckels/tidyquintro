
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

### Recommended setup

This workshop is a combination of presentation, live coding and
exercises. If you are attending it as a webinar, having a dual monitor
set-up is recommended. This would enable you to follow the live coding,
by also typing in the commands and experience the effects you self.
Programming is a skill where you learn best by doing.

That being said, as there are also exercises you can also follow using a
single monitor.

### Install R

Make sure to have R installed on your computer. It is recommended that
you have a newer version of R installed, preferably higher than 4.0.0,
but at minimum higher than 3.5.3. Download R from [the
R-project](https://www.r-project.org/)

#### Windows computers

The tidyverse packages require
[rtools](https://cran.r-project.org/bin/windows/Rtools/) to be
installed. Make sure to have the required version installed before
proceeding.

### Install RStudio

The best experience with the workshop is to have an RStudio newer than
1.3. It is not necessary, but highly recommended.

[RStudio downloads
page](https://rstudio.com/products/rstudio/download/#download)

### Install course materials

This package contains materials that are necessary for the workshop.

You can install tidyquintro from
[github](https://github.com/Athanasiamo/tidyquintro), which will also
install the packages that the tutorial will cover, with

``` r
install.packages("remotes")
remotes::install_github("Athanasiamo/tidyquintro")
```

#### If install fails

If the above install fails, you can try installing everything
individually and then the package from source. Start by installing the
dependent packages for the course:

``` r
install.packages(c("tidyverse", "palmerpenguins", "learnr", "remotes"))
remotes::install_github("rstudio-education/gradethis")
```

When these are successful, you should be able to install the course
package. Download the newest tar-version from the [source](source/)
directory, make sure you know where it has downloaded to and install
with

``` r
# Alter the /path/to section to the path where the downloaded file is. 
install.packages("/path/to/tidyquintro_0.1.01.tar.gz", repos = NULL)
```

If you are still struggling to install the package, please create [a
ticket](https://github.com/Athanasiamo/tidyquintro/issues) pasting the
command and output you get so I can help you get it sorted.

### Loading the package

Loading the package will also load the necessary libraries directly

``` r
library(tidyquintro)
```

Additionally, there are exercises connected to each of the topics which
will also be accessible via the
[learnr](https://rstudio.github.io/learnr/)-package.

``` r
learnr::available_tutorials("tidyquintro")
#> Available tutorials:
#> * tidyquintro
#>   - 001-plotting    : "Plotting data"
#>   - 002-subsetting  : "Subsetting data"
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
      - grouped summaries with [dplyr](https://dplyr.tidyverse.org/)
        (\~25 min)  
      - working with nested data using
        [purrr](https://purrr.tidyverse.org/) (\~25 min)

## Slides

All slides for the workshop can be found at:

<https://athanasiamo.github.io/tidyquintro/>
