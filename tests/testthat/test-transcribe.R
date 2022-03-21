test_that("transcribing works", {
  expect_equal(transcribe(DNA = "ATTCT"), "AUUCU")
})
