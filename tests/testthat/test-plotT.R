context("plotT")
library(visualTest)
library(ggplot2)
data(iris)

# save plots as png image
png("tests/testthat/test1.png")
plotT(iris,"Sepal.Length","Sepal.Width")
dev.off()

png("tests/testthat/test2.png")
plotT(iris[-c(1:50),],"Sepal.Length","Sepal.Width")
dev.off()

# get numeric print of graphics
getFingerprint(file = "tests/testthat/test1.png")
getFingerprint(file = "tests/testthat/test2.png")



test_that("#5 - Test similarité des graphics ",{


   expect_true(isSimilar(file="tests/testthat/test1.png", # graphic 1
              fingerprint = getFingerprint(file = "tests/testthat/test2.png"), # Fingerprint du graphic 2
              threshold =0.05) # degrée de similarité
  )

})
