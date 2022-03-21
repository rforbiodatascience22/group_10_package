test_that("transcribing works", {
  expect_identical(transcribe(DNA = "ATTCT"), "AUUCU")
})

