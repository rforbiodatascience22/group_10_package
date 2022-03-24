test_that("transcribing works", {
  expect_identical(transcribe(dna_string = "ATTCT"), "AUUCU")
})

