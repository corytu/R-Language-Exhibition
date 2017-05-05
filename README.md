# R Language Playground (two branches)
1. gh-pages (public html pages, see introduction below)
2. master (code files and documents, ordered alphabetically below)
    * cachematrix.R: Create and cache a matrix. Find its inverse matrix if it exists.
    * my_grid_arrange_shared_legend.R: Arrange grobs with a shared legend. Shared axes are also allowed.
    * R_Tutorial.pdf: A tutorial I gave to BLP in Oct 2016.
    * Taiwan_tourism_economics.R: Create a motion chart by `googleVis` package, showing some economic indexes and tourist numbers in Taiwan in recent years.
    * ui.R, server.R: A Shiny application showing the proportions of older adults across districts in Taiwan.

## Hello World!
**My name is Yu-Zhen, and I am from Taiwan.**

## Project Demonstration
* [Relationships between Visitor Numbers and Taiwan Economics](https://corytu.github.io/R_Language_Playground/Relationships_between_Visitor_Numbers_and_Taiwan_Economics.html) (Mar 2017)<br>
The webpage implements `googleVis` package of R and demonstrates the relationships between visitor numbers and multiple economics indexes in Taiwan. Taiwan's economic system seems to have been strongly affected by China. We need to find our way to guarantee our economy growth without China's support if we want independence of our country.
* __[Old Population Proportions in Districts in Taiwan](https://corytu.shinyapps.io/old_populations_dist/) (Mar 2017)<br>__
This Shiny app illustrates the percentages of old population in every district in Taiwan. It is widely referred in local health authorities in Taiwan, helping the promotion of primary health and creating an elder-friendly society. Last updated in March, 2017. [This webpage](https://corytu.github.io/R_Language_Playground/Old_Population_Proportions.html) provides details of how it works in English.
* [Air quality in New York in 1973](https://corytu.shinyapps.io/airquality/) (Feb 2017)<br>
My first Shiny application uses "airquality" data frame in R and plots the relationship between selected variables. Details are available <a href="https://corytu.github.io/R_Language_Playground/Air_Quality_in_New_York_in_1973.html">here</a>.
* [Taiwan National Parks](https://corytu.github.io/R_Language_Playground/Taiwan_National_Parks.html) (Feb 2017)<br>
It shows all nine national parks in Taiwan. The hyperlinks to each national park are provided once users click the markers.
* [Playing mtcars dataset](https://corytu.github.io/R_Language_Playground/play_mtcars_dataset.html) (Feb 2017)<br>
It is a rather simple presentation with plotly tool. The data are from R built-in "mtcars" dataset.

## Given Tutorial Slides
* <a href="https://corytu.github.io/R_Language_Playground/Plotting_with_R_ggplot2.html">Plotting with R: ggplot2</a> (Mar 2017)<br>
After a brief introduction of R plotting systems, a guidance for creating scatter plots and bar plots including legends and facets for conditions is provided. It also covers methods to add error bars and regression lines. Practices come along so that people can apply their newly learned skills. Slides are done with R markdown.
* <a href="https://github.com/corytu/R_Language_Playground/blob/master/R_Tutorial_20161012_BLP.pdf">R Programming tutorial</a> (Oct 2016)<br>
An R tutorial which covers the history and overview of R, the characteristics of various R objects, and vectorized operations. It also contains the functions people use to input/output the data or scripts. The control structures and function writing in R are introduced in the end.

## Personal Notes
### Data cleaning and manipulation
* _Ordering the data frame with data in its column(s)_<br>
`order` function can do the trick here. For example, `airquality[order(airquality$Month),]` and `airquality[order(airquality$Day),]` order that data frame by Month and Day respectively. Multiple argumets in `order` are allowed.

### Data visualization
* <a href="http://stackoverflow.com/questions/10357768/plotting-lines-and-the-group-aesthetic-in-ggplot2">Plotting lines and the group aesthetic in ggplot2</a><br>
A good thing to know when using `ggplot2` to plot a line chart where x-axis is a categorical variable.
* <a href="http://stackoverflow.com/questions/34889766/what-is-the-width-argument-in-position-dodge">What is the width argument in position_dodge?</a><br>
Decent explanation and demonstration of mechanisms of `ggplot2::position_dodge`.
* [Share a legend between multiple plots using grid.arrange](https://github.com/tidyverse/ggplot2/wiki/Share-a-legend-between-two-ggplot2-graphs)<br>
Using `grid` to place the plots and the legends in an arbitrary layout. I also modified this function to allow shared axes titles and to specify only ncol or nrow. The modified scripts is in the master branch.

### Functions for general R programming
* _All arguments after an ellipsis must have default values_<br>
For example, `paste (..., sep = " ", collapse = NULL)` in its documentation.
* _Generating messages for function users_<br>
`message` is used for generating a diagnostic message, while `warning` and `stop` are for generating warnings and fetal errors respectively. `stopifnot`, on the other hand, is "If any of the expressions in `...` are not all TRUE, `stop` is called, producing an error message indicating the first of the elements of `...` which were not true."
* _Using functions (once) without loading the package_<br>
Specify the package and function separated by `::`. For example, calling `reshape2::melt` is equivalent to `library(reshape2)` or `require(reshape2)` before `melt`.

### Useful packages (ordered alphabetically)
* [car](https://cran.r-project.org/package=car)<br>
Short for "Companion to Applied Regression". Two of the useful functions are `Anova` and `Manova`, which can calculate type-II or type-III ANOVA and MANOVA respectively.
* [cowplot](https://cran.r-project.org/web/packages/cowplot/vignettes/introduction.html)<br>
Merging multiple ggplots and labeling them respectively in one graph.
* [dplyr](https://cran.r-project.org/web/packages/dplyr/vignettes/introduction.html)<br>
Some other ways to manipulate or cleanse data.
* [e1071](https://cran.r-project.org/package=e1071)<br>
LIBSVM package for R.
* [ggplot2](http://ggplot2.org)<br>
A popular plotting system in R.
* [gridExtra](https://cran.r-project.org/package=gridExtra)<br>
"Miscellaneous Functions for 'Grid' Graphics." A tutorial can be found <a href="http://www.sthda.com/english/wiki/ggplot2-easy-way-to-mix-multiple-graphs-on-the-same-page-r-software-and-data-visualization">here</a>.
* <a href="https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html">magrittr</a><br>
The "pipe-like" operator `%>%` allows people to transmit a value or object to an expression or function call.
* [MCMCglmm](https://cran.r-project.org/package=MCMCglmm)<br>
A package for fitting Bayesian mixed models in R. More introduction and tutorial <a href="https://github.com/tmalsburg/MCMCglmm-intro">here</a>.
* [plotly](https://plot.ly/r/)<br>
A powerful package to build interactive plots. Its `plot_ly` function creates various types of plots, and `ggplotly` turns most of `ggplot2` objects interactive.
* [rattle](http://rattle.togaware.com)<br>
Wonderful GUI for machine learning analyses. The author emphasizes its capability of creating logs when users click the GUI, and exporting them as a shortcut for further argument tuning. Programming is still encouraged.
* [reshape2](https://cran.r-project.org/package=reshape2)<br>
`melt` the data into a long-format or `cast` it into a wide-format. An example is provided <a href="https://corytu.github.io/R_Language_Playground/reshape2_melt.html">here</a>.
* [shiny](https://shiny.rstudio.com/)<br>
Building interactive interface and present data to others even they don't know R. Its tutorial is very worth reading.

Last update: May 5, 2017

*Copyrights &copy; 2017 by Yu-Zhen Tu. All rights reserved.*
