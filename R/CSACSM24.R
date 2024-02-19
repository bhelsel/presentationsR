# Copyright © 2024 University of Kansas. All rights reserved.

#' @title CSACSM24: Presentation for the 2024 Central States ACSM Regional Meeting
#'
#' @description Useful functions for accelerometry data processing and analysis and
#'     a presentation for the 2024 Centeral States ACSM Regional Meeting. The title
#'     of the presentation is "An introduction to open-source R software for wearable
#'     device data processing and analysis". The presentation can be downloaded at
#'     \url{https://github.com/bhelsel/CSACSM24}.
#'
#' @section CSACSM24 functions:
#'
#' \code{\link{render_presentation}}
#'
#' @docType package
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
#' @importFrom utils browseURL
#' @name CSACSM24

NULL
