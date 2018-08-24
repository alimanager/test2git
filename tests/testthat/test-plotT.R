context("plotT")


test_that("#5 - Test graphics Plot",{
  devtools::install_github("MangoTheCat/visualTest")
  library(visualTest)

  png(filename = "img/test1.png")
  plotT(iris,"Sepal.Length","Sepal.Width")
  dev.off()

  png(filename = "img/test2.png")
  plotT(iris[-c(1:100),],"Sepal.Length","Sepal.Width")
  dev.off()

  getFingerprint(file = "img/test1.png")
  getFingerprint(file = "img/test2.png")

  expect_true(
    isSimilar(file="img/test1.png",
              fingerprint = getFingerprint(file = "img/test2.png"),
              threshold = 0.1)
  )

})
