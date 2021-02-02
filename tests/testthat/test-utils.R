test_that("Testing  utils", {
  testthat::expect_equal(colhex2col("#FFFFFF"), "white")
  testthat::expect_equal(colhex2col("#000000"), "black")
})
