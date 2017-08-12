# R-Language-Exhibition
Hello! My name is Yu-Zhen Tu, and I am from Taiwan. This is my webpage built to demonstrate my works done with R.

# Project Demonstration

## Personal projects
* __[Currency Dashboard of NTD](https://corytu.shinyapps.io/currency-dashboard/) (Jul 2017)<br>__
    1. Present the latest currency information with interactive plot and table
    2. Present the latest interest information with interactive plot
    3. Compare the exchanges prices between that of today and that of last week
    4. Calculate the return of investment if additional information provided
    5. [Currency-Dashboard](https://github.com/corytu/Currency-Dashboard) is my GitHub repository sharing the source code.
* [Relationships between Visitor Numbers and Taiwan Economics (Flash Player required)](https://corytu.github.io/R-Language-Exhibition/Docs/Relationships_between_Visitor_Numbers_and_Taiwan_Economics.html) (Mar 2017)<br>
The webpage implements `googleVis` package of R and demonstrates the relationships between visitor numbers and multiple economics indexes in Taiwan. Taiwan's economic system seems to have been strongly affected by China. We need to find our way to guarantee our economy growth without China's support if we want independence of our country.
* __[Old Population Proportions in Districts in Taiwan](https://corytu.shinyapps.io/old_populations_dist/) (Mar 2017)<br>__
This Shiny app illustrates the percentages of old population in every district in Taiwan. It is widely referred in local health authorities in Taiwan, helping the promotion of primary health and creating an elder-friendly society. Last updated in March, 2017. The source codes are in another repository of mine: [Old-Population-Proportions](https://github.com/corytu/Old-Population-Proportions).

## Assignment of [Practical Machine Learning](https://www.coursera.org/learn/practical-machine-learning/home/info) on Coursera
* [Predicting “How Well” People Perform Dumbbell Lifts](https://github.com/corytu/Predict-Dumbbell-Lifts)<br>
I used support vector machine, decision tree, and random forests techniques to predict whether participants are executing dumbbell lifts correctly. The data were generated from sensors on arm, forearm, belt, and dumbbell respectively. The cross-validations show that random forests have the best accuracy, and the results of random forests have 20/20 correct predictions for the testing dataset.

## Assignments of [Developing Data Products](https://www.coursera.org/learn/data-products/home/info) on Coursera
* [Air quality in New York in 1973](https://corytu.shinyapps.io/airquality/) (Feb 2017)<br>
My first Shiny application uses "airquality" data frame in R and plots the relationship between selected variables. Details are available <a href="https://corytu.github.io/R-Language-Exhibition/Docs/Air_Quality_in_New_York_in_1973.html">here</a>.
* [Taiwan National Parks](https://corytu.github.io/R-Language-Exhibition/Docs/Taiwan_National_Parks.html) (Feb 2017)<br>
It shows all nine national parks in Taiwan. The hyperlinks to each national park are provided once users click the markers.
* [Playing mtcars dataset](https://corytu.github.io/R-Language-Exhibition/Docs/play_mtcars_dataset.html) (Feb 2017)<br>
It is a rather simple presentation with plotly tool. The data are from R built-in "mtcars" dataset.

# Code Files
* [cachematrix.R](https://github.com/corytu/R-Language-Exhibition/blob/master/cachematrix.R): Create and cache a matrix. Find its inverse matrix if it exists.
* __[my-grid-arrange-shared-legend.R](https://github.com/corytu/R-Language-Exhibition/blob/master/my-grid-arrange-shared-legend.R)__: Arrange grobs with a shared legend. Shared axes are also allowed. Detailed discription is in the .R file. The only needed preparation is downloading and `source` it in R. Required packages will be installed if they cannot be found in library paths.
* [Taiwan-tourism-economics.R](https://github.com/corytu/R-Language-Exhibition/blob/master/Taiwan-tourism-economics.R): Create a motion chart by `googleVis` package, showing some economic indexes and tourist numbers in Taiwan in recent years.

# Given Tutorial Slides
* [R tutorial](https://corytu.github.io/R-Language-Exhibition/Docs/R-Tutorial.html) (Jul 2017)<br>
New tutorial slides created with R markdown. Additional practices are provided, compared with the tutorial last year.
* <a href="https://corytu.github.io/R-Language-Exhibition/Docs/Plotting_with_R_ggplot2.html">Plotting with R: ggplot2</a> (Mar 2017)<br>
After a brief introduction of R plotting systems, a guidance for creating scatter plots and bar plots including legends and facets for conditions is provided. It also covers methods to add error bars and regression lines. Practices come along so that people can apply their newly learned skills. Slides are done with R markdown.
* <a href="https://github.com/corytu/R-Language-Exhibition/blob/master/Docs/R_Tutorial_20161012_BLP.pdf">R Programming tutorial</a> (Oct 2016)<br>
An R tutorial which covers the history and overview of R, the characteristics of various R objects, and vectorized operations. It also contains the functions people use to input/output the data or scripts. The control structures and function writing in R are introduced in the end.

Last update: August 13, 2017
