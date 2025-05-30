#' MetExplore 3 REST api
#'
#' Rest API for [MetExplore](https://metexplore.toulouse.inrae.fr/index.html/) content.
#'
#' The version of the OpenAPI document: 0.23.1
#' Contact: contact-metexplore@inrae.fr
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Jobs operations
#' @description JobsApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @examples
#' \dontrun{
#' ####################  GETJOBS  ####################
#'
#' library(metexplore3api)
#' var_id <- "id_example" # character | the job id (Optional)
#'
#' #get jobs
#' api_instance <- JobsApi$new()
#'
#' # Configure HTTP bearer authorization: userAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # Configure API key authorization: appAuth
#' api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$GETJOBS(id = var_iddata_file = "result.txt")
#' result <- api_instance$GETJOBS(id = var_id)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
JobsApi <- R6::R6Class(
  "JobsApi",
  public = list(
    api_client = NULL,

    #' @description
    #' Initialize a new JobsApi.
    #'
    #' @param api_client An instance of API client.
    initialize = function(api_client) {
      if (!missing(api_client)) {
        self$api_client <- api_client
      } else {
        self$api_client <- ApiClient$new()
      }
    },

    #' @description
    #' get jobs
    #'
    #' @param id (optional) the job id
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return GETJOBS200Response
    GETJOBS = function(id = NULL, data_file = NULL, ...) {
      local_var_response <- self$GETJOBSWithHttpInfo(id, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        local_var_response$content
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        local_var_response
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        local_var_response
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        local_var_response
      }
    },

    #' @description
    #' get jobs
    #'
    #' @param id (optional) the job id
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (GETJOBS200Response) with additional information such as HTTP status code, headers
    GETJOBSWithHttpInfo = function(id = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE


      query_params[["id"]] <- `id`

      local_var_url_path <- "/jobs"
      # Bearer token
      if (!is.null(self$api_client$bearer_token)) {
        header_params["Authorization"] <- paste("Bearer", self$api_client$bearer_token, sep = " ")
      }
      # API key authentication
      if ("x-app-key" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["x-app-key"]) > 0) {
        header_params["x-app-key"] <- paste(unlist(self$api_client$api_keys["x-app-key"]), collapse = "")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("application/json")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          write(local_var_resp$response, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$deserialize(local_var_resp$response_as_text(), "GETJOBS200Response", loadNamespace("metexplore3api")),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        local_var_resp
      } else if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        local_var_resp
      }
    }
  )
)
