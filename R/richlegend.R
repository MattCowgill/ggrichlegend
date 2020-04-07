#' Add a rich legend to a plot
#'
#' @param plot plot
#' @param aes_type "fill" or "colour"
#' @param x x
#' @param y y
#' @param label.padding label.padding
#' @param label.size label.size
#' @param ... additional parameters passed to `ggtext::geom_richtext()`
#' @name richlegend
#' @export
richlegend <- function(plot,
                       aes_type = "fill",
                       x, y,
                       label.padding = unit(0, "lines"),
                       label.size = 0,
                       ...) {


  legend_call <- richlegend_call(plot = plot,
                                 aes_type = aes_type,
                                 x = x, y = y,
                                 label.padding = unit(0, "lines"),
                                 label.size = 0,
                                 ...)

  eval(legend_call)

}
