# R Language Playground

## Hello World!
**My name is Yu-Zhen, and I am from Taiwan. Welcome to my playground for R language.**

## Project Demonstration
* <a href="https://corytu.shinyapps.io/old_populations_dist/">Old Population Proportions in Districts in Taiwan</a> (Mar 2017)<br>
This Shiny app illustrates the percentages of old population in every district in Taiwan. Last updated in March, 2017. <a href="https://corytu.github.io/R_Language_Playground/Aged_Population_Proportions.html">This webpage</a> provides details of how it works in English.
* <a href="https://corytu.shinyapps.io/airquality/">Air quality in New York in 1973</a> (Feb 2017)<br>
My first Shiny application uses "airquality" data frame in R and plots the relationship between selected variables. Details are available <a href="https://corytu.github.io/R_Language_Playground/Air_Quality_in_New_York_in_1973.html">here</a>.
* <a href="https://corytu.github.io/R_Language_Playground/Taiwan_National_Parks.html">Taiwan National Parks</a> (Feb 2017)<br>
It shows all nine national parks in Taiwan. The hyperlinks to each national park are provided once users click the markers.
* <a href="https://corytu.github.io/R_Language_Playground/play_mtcars_dataset.html">Playing mtcars dataset</a> (Feb 2017)<br>
It is a rather simple presentation with plotly tool. The data are from R built-in "mtcars" dataset.

## Tutorial Slides
* <a href="https://corytu.github.io/R_Language_Playground/Plotting_with_R_ggplot2.html">Plotting with R: ggplot2</a> (Mar 2017)<br>
After a brief introduction of R plotting systems, a guidance for creating scatter plots and bar plots including legends and facets for conditions is provided. It also covers methods to add error bars and regression lines. Practices come along so that people can apply their newly learned skills. Slides are done with R markdown.
* <a href="https://github.com/corytu/R_Language_Playground/blob/master/R_Tutorial_20161012_BLP.pdf">R Programming tutorial</a> (Oct 2016)<br>
An R tutorial which covers the history and overview of R, the characteristics of various R objects, and vectorized operations. It also contains the functions people use to input/output the data or scripts. The control structures and function writing in R are introduced in the end.

## Personal Notes
*I might organize and publish some personal notes of R here (mostly in Mandarin), but it is not one of my priorities now.*
### Data cleaning and manipulation
* TBA

### Data visualization
* TBA

### Functions for general R programming
* Using two colons `::` allows one to use functions (once) without loading the package. For example, calling `reshape2::melt` is equivalent to `library(reshape2)` or `require(reshape2)` before `melt`.
* More TBA

### Useful packages (ordered alphabetically)
* <a href="https://cran.r-project.org/package=car">car</a>: Short for "Companion to Applied Regression". Two of the useful functions are `Anova` and `Manova`, which can calculate type-II or type-III ANOVA and MANOVA respectively.
* <a href="https://cran.r-project.org/web/packages/cowplot/vignettes/introduction.html">cowplot</a>: Merging multiple ggplots and labeling them respectively in one graph.
* <a href="https://cran.r-project.org/package=e1071">e1071</a>: LIBSVM package for R.
* <a href="http://ggplot2.org">ggplot2</a>: A popular plotting system in R.
* <a href="https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html">magrittr</a>: The "pipe-like" operator `%>%` allows people to transmit a value or object to an expression or function call.
* <a href="https://cran.r-project.org/package=reshape2">reshape2</a>: `melt` the data into a long-format or `cast` it into a wide-format. An example is provided <a href="https://corytu.github.io/R_Language_Playground/reshape2_melt.html">here</a>.
* <a href="https://shiny.rstudio.com/">shiny</a>: Building interactive interface and present data to others even they don't know R. Its tutorial is very worth reading.

# Here are two branches if you view on GitHub:
* gh-pages (public html pages, see introduction above)
* master (code files and documents, ordered alphabetically below)
    * cachematrix.R: Create and cache a matrix. Find its inverse matrix if it exists.
    * R_Tutorial.pdf: A tutorial I gave to BLP in Oct 2016.

Last update: March 13, 2017

*Copyrights &copy; 2017 by Yu-Zhen Tu. All rights reserved.*
