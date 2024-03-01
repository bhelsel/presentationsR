
# presentationsR

The goal of presentationsR is to provide an accessible version of wearable device presentations given by Dr. Brian Helsel. Currently, the only included presentation is from the 2024 Central States American College of Sports Medicine's regional meeting.

<hr style="border: 1px solid;">

## R and RStudio Installation

You can install R and RStudio [here](https://posit.co/download/rstudio-desktop/) if you do not already have it installed on your computer. It is necessary to have R installed to download this presentation, but you may choose to interact with in another integrated development environment (IDE) like VS Code or your terminal.

<hr style="border: 1px solid;">

## Installing presentationsR

Install the presentationsR package using the `devtools` R package. If you do not already have the packages in the description file installed, you will want to consider adjusting the timeout option to install the presentationsR package. This package is set up to install some commonly used R packages for physical activity research. 

``` r
install.packages("devtools") # install the devtools package via CRAN

options(timeout = 999999) # Increase to avoid timeout issues

devtools::install_github("bhelsel/presentationsR") # Install the presentationsR package via GitHub

```

<hr style="border: 1px solid;">

## Downloading the presentation

The presentation is currently inside Quarto document located in the qmd folder within the package. You can open the presentation in your default web browser by running the `render_presentation` function within the `presentationsR` package. The presentation will be rendered as a revealjs presentation which will allow you to see the content and speaker notes.

```r

presentationsR::render_presentation(name = "csacsm24")

```

<hr style="border: 1px solid;">

Enjoy the content and let me know if you have any questions or are interested in collaborating on current or future projects! You can reach me by email at [bhelsel@kumc.edu](mailto:bhelsel@kumc.edu).

**Brian C. Helsel, PhD**  
**Assistant Professor**  
KU Alzheimer’s Disease Research Center  
Department of Neurology  
University of Kansas Medical Center



