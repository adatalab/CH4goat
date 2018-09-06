# CH4goat

## Overview
CH4goat is a deep learning models for calculate the methane emission from goats. It contains two black-box model using the dataset from Konkuk University. One hundred and fifty data from 4 published (Li et al., 2010; Li, 2011; Choi, 2012; Hwang, 2013) and 3 unpublished experiments were used to develop models. 

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
base_frame(model = 1) # use when using model1 (DMI, OMI, CPI, NDFI, DDMI, DOMI, DCPI, and DNDFI)
base_frame(model = 2) # use when using model1 (DMI, OMI, CPI, and NDFI)
```

### compute
``` r
# example dataset
base_frame(model = 2)
base_frame[1,] <- c(600,530,80,300) # unit is g/d

# calculating the methane emission from goats using deep learning model.
neuralnet::compute(model2, base_frame)$net.result # unit is L/d
```

## Notification
**This package is under development.**


## Getting helps
Email: ruminoreticulum@gmail.com
