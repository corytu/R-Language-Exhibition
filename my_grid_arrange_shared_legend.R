# Modified from [Share a legend between two ggplot2 graphs](https://github.com/tidyverse/ggplot2/wiki/Share-a-legend-between-two-ggplot2-graphs)
# Author: Yu-Zhen Tu
# Date: April 23, 2017
# --
# Description:
# This function combines ggplot objects into one plot and lets the common legend share across the original plots.
# In addition, my modified function allows users to share a common x-axis or y-axis across all original plots.
# If the legend position is at bottom with a common x-axis, a warning message is given to the users in order to avoid the possible confusion.
# --
# Arguments:
# ...: ggplot objects to be combined.
# ncol, nrow: Number of columns and rows of the combined plot. If one of them is unspecified, it will be automatically carried with number of "ggplot objects devided by specified ncol or nrow".
# position: Character string. Final position of the common legend. It can be either "right" or "bottom".
# common.x, common.y: Logical values. Whether or not the x-axis or y-axis is common across the ggplot objects?

library(ggplot2)
library(gridExtra)
library(grid)

my_grid_arrange_shared_legend <- function(..., ncol = NULL, nrow = NULL, position = c("right", "bottom"),
                                          common.x = FALSE, common.y = FALSE) {
  plots <- list(...)
  position <- match.arg(position)
  if (is.null(ncol) & !is.null(nrow)) {ncol <- ceiling(length(plots)/nrow)}
  if (!is.null(ncol) & is.null(nrow)) {nrow <- ceiling(length(plots)/ncol)}
  
  g <- ggplotGrob(plots[[1]] + theme(legend.position = position))$grobs
  legend <- g[[which(sapply(g, function(x) {x$name}) == "guide-box")]]
  lheight <- sum(legend$heights)
  lwidth <- sum(legend$widths)
  gl <- lapply(plots, function(x) {x + theme(legend.position="none")})
  
  if (common.x) {
    xlabel <- g[[grep("axis.title.x", sapply(g, function(x) {x$name}))]]
    xheight <- sum(xlabel$heights)
    xwidth <- sum(xlabel$widths)
    gl <- lapply(gl, function(x) {x + theme(axis.title.x = element_blank())})
  }
  if (common.y) {
    ylabel <- g[[grep("axis.title.y", sapply(g, function(x) {x$name}))]]
    yheight <- sum(ylabel$heights)
    ywidth <- sum(ylabel$widths)
    gl <- lapply(gl, function(x) {x + theme(axis.title.y = element_blank())})
  }
  
  gl <- c(gl, ncol = ncol, nrow = nrow)
  if (common.x & position == "bottom") {warning("The x-axis and the legend position may be confusing.")}
  
  if (common.x & common.y) {
    combined <- switch(position,
                       "bottom" = arrangeGrob(ylabel,
                                              arrangeGrob(do.call(arrangeGrob, gl),
                                                          xlabel,
                                                          legend,
                                                          ncol = 1,
                                                          heights = unit.c(unit(1, "npc") - lheight - xheight, xheight, lheight)),
                                              ncol = 2,
                                              widths = unit.c(ywidth, unit(1, "npc") - ywidth)),
                       "right" = arrangeGrob(arrangeGrob(ylabel,
                                                         do.call(arrangeGrob, gl),
                                                         legend,
                                                         ncol = 3,
                                                         widths = unit.c(ywidth, unit(1, "npc") - ywidth - lwidth, lwidth)),
                                             xlabel,
                                             ncol = 1,
                                             heights = unit.c(unit(1, "npc") - xheight, xheight)))
  }
  else if (common.x) {
    combined <- switch(position,
                       "bottom" = arrangeGrob(do.call(arrangeGrob, gl),
                                              xlabel,
                                              legend,
                                              ncol = 1,
                                              heights = unit.c(unit(1, "npc") - lheight - xheight, xheight, lheight)),
                       "right" = arrangeGrob(arrangeGrob(do.call(arrangeGrob, gl),
                                                         xlabel,
                                                         ncol = 1,
                                                         heights = unit.c(unit(1, "npc") - xheight, xheight)),
                                             legend,
                                             ncol = 2,
                                             widths = unit.c(unit(1, "npc") - lwidth, lwidth)))
  }
  else if (common.y) {
    combined <- switch(position,
                       "bottom" = arrangeGrob(ylabel,
                                              arrangeGrob(do.call(arrangeGrob, gl),
                                                          legend,
                                                          ncol = 1,
                                                          heights = unit.c(unit(1, "npc") - lheight, lheight)),
                                              ncol = 2,
                                              widths = unit.c(ywidth, unit(1, "npc") - ywidth)),
                       "right" = arrangeGrob(ylabel,
                                             do.call(arrangeGrob, gl),
                                             legend,
                                             ncol = 3,
                                             widths = unit.c(ywidth, unit(1, "npc") - ywidth - lwidth, lwidth)))
  }
  else {
    combined <- switch(position,
                       "bottom" = arrangeGrob(do.call(arrangeGrob, gl),
                                              legend,
                                              ncol = 1,
                                              heights = unit.c(unit(1, "npc") - lheight, lheight)),
                       "right" = arrangeGrob(do.call(arrangeGrob, gl),
                                             legend,
                                             ncol = 2,
                                             widths = unit.c(unit(1, "npc") - lwidth, lwidth)))
  }
  
  grid.newpage()
  grid.draw(combined)
  
  # return gtable invisibly
  invisible(combined)
}
