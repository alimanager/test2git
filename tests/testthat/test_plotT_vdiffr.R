library(vdiffr)
library(ggplot2)
data(iris)


library(vdiffr)

plot1 <- plotT(iris,"Sepal.Length","Sepal.Width")
plot2 <- plotT(iris[-c(1:100),],"Sepal.Length","Sepal.Width")

test_that("#5.2 - Test graphics Plot with vdiffr",{

  vdiffr::expect_doppelganger("iris" ,plot1)
  vdiffr::expect_doppelganger("iris 100",plot2)
})
# manage_cases()

