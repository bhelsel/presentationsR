
# presentationsR

The goal of presentationsR is to provide an accessible version of wearable device presentations given by Dr. Brian Helsel.

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

The presentation is currently inside Quarto document located in the qmd folder
within the package. To make downloading the package easier, you can use the
`render_presentation` function that is exported in `presentationsR`. The
`outdir` argument should be changed to the location that you want to
presentation rendered to on your local computer. Once you run the
`render_presentation` in your R console, the presentation will be rendered as a
revealjs presentation which will allow you to see the content and speaker notes.

```r

username = "name"

outdir = sprintf("/Users/%s/Downloads", username)

presentationsR::render_presentation(outdir, name = "wearables")

```

<hr style="border: 1px solid;">

Enjoy the content and let me know if you have any questions or are interested in collaborating on current or future projects! You can reach me by email at [bhelsel@kumc.edu](mailto:bhelsel@kumc.edu).

**Brian C. Helsel, PhD**  
**Assistant Professor**  
KU Alzheimer’s Disease Research Center  
Department of Neurology  
University of Kansas Medical Center



