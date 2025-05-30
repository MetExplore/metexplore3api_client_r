# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ReactionsResponse")

model_instance <- ReactionsResponse$new()

test_that("message", {
  # tests for the property `message` (character)
  # Message to describe that it&#39;s ok or not

  # uncomment below to test the property
  #expect_equal(model.instance$`message`, "EXPECTED_RESULT")
})

test_that("success", {
  # tests for the property `success` (character)
  # Indicates if the response is a success or a fail

  # uncomment below to test the property
  #expect_equal(model.instance$`success`, "EXPECTED_RESULT")
})

test_that("status", {
  # tests for the property `status` (integer)
  # Code of the response

  # uncomment below to test the property
  #expect_equal(model.instance$`status`, "EXPECTED_RESULT")
})

test_that("results", {
  # tests for the property `results` (array[Reaction])
  # Array of Reaction

  # uncomment below to test the property
  #expect_equal(model.instance$`results`, "EXPECTED_RESULT")
})
