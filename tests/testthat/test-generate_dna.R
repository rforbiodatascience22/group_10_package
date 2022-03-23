test_that("str_length is number of characters", {
  expect_equal(nchar(generate_dna(length = 10)), 10)
})
