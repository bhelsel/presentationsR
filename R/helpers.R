
#' @title render_presentation
#' @description Copies presentation to an output directory and opens the HTML presentation in web browser
#' @param name Name of the presentation or workshop to render
#' @param ... Additional parameters passed to quarto::quarto_render
#' @return A rendered Quarto revealjs presentation in the output directory
#'     that is opened on the user's default Internet browser
#' @details Copies presentation to an output directory and opens the HTML presentation in web browser
#' @seealso
#'  \code{\link[quarto]{quarto_render}}
#'  \code{\link[utils]{browseURL}}
#' @rdname render_presentation
#' @export
#' @importFrom quarto quarto_render
#' @importFrom utils browseURL

render_presentation <- function(name, ...){
  inputdir <- system.file(file.path("qmd", name), package = "presentationsR")
  qmd_f <- list.files(inputdir, pattern = ".qmd$", full.names = TRUE)
  quarto::quarto_render(input = qmd_f, ...)
  html_f <- gsub(".qmd$", ".html", qmd_f)
  utils::browseURL(html_f)
  invisible(file.remove(html_f))
}







