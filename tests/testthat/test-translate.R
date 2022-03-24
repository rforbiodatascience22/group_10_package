test_that("translated sequence is correct", {
  expect_identical(translate(codons=c("GAG","UGA","UGU")),"E_C")

})
