# CH4goat <img src="man/figures/logo.png" align="right" />

## Overview
CH4goat is a deep learning models for calculate the methane emission from goats :goat:. It contains two black-box model (model1 & model2) using the dataset from Konkuk University.

## Installation  
``` r
# The development version from GitHub:
# install.packages("devtools")
devtools::install_github("adatalab/CH4goat")
```

## Usage
### base_frame
``` r
# making a base frame for predict the methane emission from goats
base_frame(model = 1) # use when using model1 (inputs = DMI, OMI, CPI, NDFI, DDMI, DOMI, DCPI, and DNDFI)
base_frame(model = 2) # use when using model2 (inputs = DMI, OMI, CPI, and NDFI)
```

### compute
``` r
# example dataset
base_frame(model = 2)
base_frame[1,] <- c(600,530,80,300) # unit is g/d

# calculating the methane emission from goats using deep learning model.
neuralnet::compute(model2, base_frame)$net.result # unit is L/d
```

## Youtube tutorial
<iframe width="1280" height="720" src="https://www.youtube.com/embed/nfOxvrhkmy0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

## Notification
This package is under development. Everyone can contribute to this package. **If you have the *in vivo* data of goats and want to progress this model, please contact via [email](ruminoreticulum@gmail.com) or github. :goat:**


## Getting helps
Email: ruminoreticulum@gmail.com
