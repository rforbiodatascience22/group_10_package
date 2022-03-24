test_that("transcribed sequence is correct", {
  expect_identical(transcribe(dna_string = "ATTCT"), "AUUCU")
})
