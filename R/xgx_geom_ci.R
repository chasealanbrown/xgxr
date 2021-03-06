#' Plot data with mean and confidence intervals
#'
#' @inheritParams xgx_stat_ci
#' @return ggplot2 plot layer
#'
#' @examples 
#' data <- data.frame(x = rep(c(1, 2, 3), each = 20),
#'                    y = rep(c(1, 2, 3), each = 20) + stats::rnorm(60))
#' ggplot2::ggplot(data, ggplot2::aes(x = x, y = y)) + 
#'   xgx_geom_ci(conf_level = 0.95)
#'  
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#' @importFrom stats rnorm
#' @export
xgx_geom_ci <- function(mapping = NULL, data = NULL, conf_level = 0.95,
                        distribution = "normal",
                        geom = list("point", "line", "errorbar"),
                        position = "identity",
                        fun.args = list(),
                        na.rm = FALSE,
                        show.legend = NA,
                        inherit.aes = TRUE,
                        ...) {
  return(list(xgx_stat_ci(mapping, data, conf_level,
                          distribution,
                          geom,
                          position,
                          fun.args,
                          na.rm,
                          show.legend,
                          inherit.aes,
                          ...)))
}
