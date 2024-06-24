#' @keywords internal
"_PACKAGE"

# Copyright © 2024 University of Kansas. All rights reserved.

#' @title presentationsR: Presentations Created Using R and Quarto
#'
#' @description Render presentations created in R and Quarto.
#'
#' @section presentationsR functions:
#'
#' \code{\link{render_presentation}}
#'
#' @import agcounts
#' @importFrom compositions acomp clo gsi.buildilrBase ilr
#' @importFrom dplyr group_by summarise_at mutate vars rename ungroup
#' @importFrom ggplot2 ggplot aes geom_line scale_x_datetime labs theme_classic
#' @importFrom gt gt cols_width tab_options
#' @importFrom MoveKC ilr_pivotCoord
#' @importFrom PhysicalActivity wearingMarking
#' @importFrom quarto quarto_render
#' @importFrom read.gt3x read.gt3x
#' @importFrom reticulate py_module_available import `%as%`
#' @importFrom robCompositions pivotCoord
#' @importFrom sjmisc to_dummy
#' @importFrom utils browseURL
#' @name presentationsR

NULL
