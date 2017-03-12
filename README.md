# R Language Playground
__*This respository is NOT intended to be licensed.*__

## Hello World!
* My name is Yu-Zhen, and I am from Taiwan. Welcome to my playground for R language.

## Tutorial Slides
* <a href="https://corytu.github.io/R_Language_Playground/Plotting_with_R_ggplot2.html">Plotting with R: ggplot2</a> (Mar 2017)<br>
After a brief introduction of R plotting systems, a guidance for creating scatter plots and bar plots including legends and facets for conditions is provided. It also covers methods to add error bars and regression lines. Practices come along so that people can apply their newly learned skills. Slides are done with R markdown.
* <a href="https://github.com/corytu/R_Language_Playground/blob/master/R_Tutorial_20161012_BLP.pdf">R Programming tutorial</a> (Oct 2016)<br>
An R tutorial which covers the history and overview of R, the characteristics of various R objects, and vectorized operations. It also contains the functions people use to input/output the data or scripts. The control structures and function writing in R are introduced in the end.

## Project Demonstration
* <a href="https://corytu.shinyapps.io/airquality/">Air quality in New York in 1973</a> (Feb 2017)<br>
My first Shiny application uses "airquality" data frame in R and plots the relationship between selected variables. Details are available <a href="https://corytu.github.io/R_Language_Playground/Air_Quality_in_New_York_in_1973.html">here</a>. The ui.R and server.R are in the master branch of this repository.
* <a href="https://corytu.github.io/R_Language_Playground/Taiwan_National_Parks.html">Taiwan National Parks</a> (Feb 2017)<br>
It shows all nine national parks in Taiwan. The hyperlinks to each national park are provided once users click the markers.
* <a href="https://corytu.github.io/R_Language_Playground/play_mtcars_dataset.html">Playing mtcars dataset</a> (Feb 2017)<br>
It is a rather simple presentation with plotly tool. The data are from R built-in "mtcars" dataset.

## Personal Notes
*I might organize and publish some personal notes of R here (mostly in Mandarin), but it is not one of my priorities now.*
### Data cleaning and manipulation
* TBA

### Data visualization
* TBA

### Functions for general R programming
* TBA

### Useful packages (ordered alphabetically)
* <a href="https://cran.r-project.org/web/packages/cowplot/vignettes/introduction.html">cowplot</a>: Merging multiple ggplots and labeling them respectively in one graph.
* <a href="http://ggplot2.org">ggplot2</a>: A popular plotting system in R.
* [magrittr] (https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html): The most critical function is the "pipe-like" operator `%>%`, which allows people transmit a value or object to an expression or function call.
* <a href="https://cran.r-project.org/package=reshape2">reshape2</a>: `melt` the data into a long-format or `cast` it into a wide-format. An example is provided <a href="https://corytu.github.io/R_Language_Playground/reshape2_melt.html">here</a>.

# Here are two branches if you view on GitHub:
## gh-pages (public html pages, ordered alphabetically below)
* Air quality in New York in 1973: Using "airquality" data frame in R and demonstrating a simple shiny application.
* Play mtcars dataset: A simple plotly demonstration with "mtcars" data frame in R.
* Plotting with R ggplot2: Organizing scatter plots, bar plots, and faceting. Slides are done with R markdown tools.
* Taiwan National Parks: Showing all nine national parks in Taiwan (Feb 2017) with leaflet and R.

## master (code files and documents, ordered alphabetically below)
* cachematrix.R: Create and cache a matrix. Find its inverse matrix if it exists.
* R_Tutorial.pdf: A tutorial I gave to BLP in Oct 2016.

Last update: March 13, 2017

*Copyrights &copy; 2017 by Yu-Zhen Tu. All rights reserved.*
