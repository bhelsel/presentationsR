
#' @title render_presentation
#' @description Copies presentation to an output directory and opens the HTML presentation in web browser
#' @param outdir Output directory to copy and render the Quarto presentation files
#' @param name Name of the presentation or workshop to render
#' @param open_html Open the HTML version of the presentation
#' @param save_as_pdf Save the HTML version of the presentation as a pdf document
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
  
  qmd_f <- list.files(inputdir, pattern = ".qmd$", full.names = TRUE)
  quarto::quarto_render(input = qmd_f, ...)
  html_f <- gsub(".qmd$", ".html", qmd_f)
  out_html_f <- file.path(outdir, basename(html_f))
  file.copy(html_f, out_html_f)
  invisible(file.remove(html_f))
  if(open_html) utils::browseURL(out_html_f)
  if(save_as_pdf) pagedown::chrome_print(input = out_html_f, output = gsub(".html$", ".pdf", out_html_f))
}







