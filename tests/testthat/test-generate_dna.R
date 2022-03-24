test_that("generated sequence has correct length", {
  expect_equal(nchar(generate_dna(length = 10)), 10)
})
