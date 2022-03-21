test_that("divide_codons works", {
  expect_equal(divide_codons("ATGATG"), c("ATG","ATG"))
})

