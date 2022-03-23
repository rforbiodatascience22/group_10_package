test_that("split_codons works", {
  expect_equal(split_codons("ATGATG"), c("ATG","ATG"))
})

