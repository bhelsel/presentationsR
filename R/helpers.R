
#' @title render_presentation
#' @description Copies presentation to an output directory and opens the HTML presentation in web browser
#' @param outdir Directory to download the presentation to on your local computer
#' @param name Name of the presentation or workshop to render
#' @param open_html Open the revealjs in the default web browser, Default: TRUE
#' @param save_as_pdf Save the revealjs as a pdf document, Default: FALSE
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

render_presentation <- function(outdir, name, open_html = TRUE, save_as_pdf = FALSE, ...){
  if(!dir.exists(outdir)) dir.create(outdir)
  inputdir <- system.file(file.path("qmd", name), package = "presentationsR")
  file.copy(from = inputdir, to = outdir, recursive = TRUE)
  qmd_f <- list.files(file.path(outdir, name), pattern = ".qmd$", full.names = TRUE)
  quarto::quarto_render(input = qmd_f, ...)
  html_f <- gsub(".qmd$", ".html", qmd_f)
  unlink(file.path(outdir, name, "citations"), recursive = TRUE)
  unlink(file.path(outdir, name, "images"), recursive = TRUE)
  unlink(file.path(outdir, name, "styles"), recursive = TRUE)
  out_html_f <- file.path(outdir, name, basename(html_f))
  if(open_html) utils::browseURL(html_f)
  if(save_as_pdf) pagedown::chrome_print(input = html_f, output = gsub(".html$", ".pdf", html_f))
}






