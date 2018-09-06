# CH4goat

## Overview
CH4goat is a deep learning models for calculate the methane emission from goats. It contains two black-box model.

## Installation  
``` r
# The development version from GitHub:
# install.packages("devtools")
devtools::install_github("adatalab/CH4goat")
```

## Usage
### base_frame
``` r
# make base frame for predict
base_frame(model = 1) # use when using model1 (DMI, OMI, CPI, NDFI, DDMI, DOMI, DCPI, and DNDFI)
base_frame(model = 2) # use when using model1 (DMI, OMI, CPI, and NDFI)
```

### model1
``` r
base_frame(model = 2)
base_frame[1,] <- c(600,530,80,300) # unit is g/d

neuralnet::compute(model2, base_frame)$net.result
```

## Notification
**This package is under development.**


## Getting helps
Email: ruminoreticulum@gmail.com
