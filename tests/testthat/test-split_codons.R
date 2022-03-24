test_that("codons are split correctly", {
  expect_equal(split_codons("ATGATG"), c("ATG","ATG"))
})
