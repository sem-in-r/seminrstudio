#' Convert a hex color to X11
#'
#' @param colhex A hex color string
#'
#' @return returns the most similar X11 colour string
#' @export
#'
#' @examples
#' colhex2col("#A37BF0")
colhex2col <- function(colhex) {
  # Convert hex to RGB
  mycol   <- grDevices::col2rgb(colhex)
  # Convert all x11 colors to RGB, adn transform
  all_colors <- data.frame(grDevices::col2rgb(grDevices::colors()))
  all_colors <- stats::setNames(all_colors, grDevices::colors())

  by_rgb <- data.frame(t(all_colors))
  by_rgb <- sort(apply(by_rgb,1, function(x) sum(abs(x - mycol)) ))

  names(by_rgb[1])
}
