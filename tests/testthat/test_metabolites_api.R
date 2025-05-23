# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test MetabolitesApi")

api_instance <- MetabolitesApi$new()

test_that("COUNTMETABOLITES", {
  # tests for COUNTMETABOLITES
  # base path: https://metexplore.toulouse.inrae.fr/metexplore3-api
  # get the number of metabolites in a network
  # get the number of metabolites in a network
  # @param id_network integer the id_network for the metabolites
  # @return [CountResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("DELMETABOLITE", {
  # tests for DELMETABOLITE
  # base path: https://metexplore.toulouse.inrae.fr/metexplore3-api
  # del Metabolite
  # delete for Metabolite
  # @param del_analysis_request DelAnalysisRequest  (optional)
  # @return [MetabolitesResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GETMETABOLITES", {
  # tests for GETMETABOLITES
  # base path: https://metexplore.toulouse.inrae.fr/metexplore3-api
  # get Metabolite
  # get from Metabolite
  # @param id integer the id for the Metabolite (optional)
  # @param id_network integer the id_network for the Metabolite (optional)
  # @param id_collection integer the id_collection for the Metabolite (optional)
  # @return [MetabolitesResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("POSTMETABOLITE", {
  # tests for POSTMETABOLITE
  # base path: https://metexplore.toulouse.inrae.fr/metexplore3-api
  # add Metabolite
  # add for Metabolite
  # @param metabolites_response array[MetabolitesResponse]  (optional)
  # @return [MetabolitesResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("UPDATEMETABOLITE", {
  # tests for UPDATEMETABOLITE
  # base path: https://metexplore.toulouse.inrae.fr/metexplore3-api
  # update Metabolite
  # update for Metabolite
  # @param metabolites_response array[MetabolitesResponse]  (optional)
  # @return [MetabolitesResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})
