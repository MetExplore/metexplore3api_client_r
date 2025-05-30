#' MetExplore 3 REST api
#'
#' Rest API for [MetExplore](https://metexplore.toulouse.inrae.fr/index.html/) content.
#'
#' The version of the OpenAPI document: 0.23.1
#' Contact: contact-metexplore@inrae.fr
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Networks operations
#' @description NetworksApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @examples
#' \dontrun{
#' ####################  ADDNETWORK  ####################
#'
#' library(metexplore3api)
#' var_network <- c(Network$new(123, "name_example", 123, 123, "organism_name_example", "db_identifier_example", "strain_example", "tissue_example", "cell_type_example", "source_example", "version_example", "description_example", "url_example", "identifier_origin_example", "date_creation_example", "date_last_modif_example", 123, 123, Permission$new())) # array[Network] |  (Optional)
#'
#' #add a Network
#' api_instance <- NetworksApi$new()
#'
#' # Configure HTTP bearer authorization: userAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # Configure API key authorization: appAuth
#' api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$ADDNETWORK(network = var_networkdata_file = "result.txt")
#' result <- api_instance$ADDNETWORK(network = var_network)
#' dput(result)
#'
#'
#' ####################  GETNETWORKS  ####################
#'
#' library(metexplore3api)
#' var_id <- 56 # integer | the network id (Optional)
#' var_format <- "summary" # character | format of the output (Optional)
#'
#' #Get all networks
#' api_instance <- NetworksApi$new()
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$GETNETWORKS(id = var_id, format = var_formatdata_file = "result.txt")
#' result <- api_instance$GETNETWORKS(id = var_id, format = var_format)
#' dput(result)
#'
#'
#' ####################  UPDATENETWORK  ####################
#'
#' library(metexplore3api)
#' var_network <- Network$new(123, "name_example", 123, 123, "organism_name_example", "db_identifier_example", "strain_example", "tissue_example", "cell_type_example", "source_example", "version_example", "description_example", "url_example", "identifier_origin_example", "date_creation_example", "date_last_modif_example", 123, 123, Permission$new()) # Network |  (Optional)
#'
#' #update a Metabolic Networ
#' api_instance <- NetworksApi$new()
#'
#' # Configure HTTP bearer authorization: userAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # Configure API key authorization: appAuth
#' api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$UPDATENETWORK(network = var_networkdata_file = "result.txt")
#' result <- api_instance$UPDATENETWORK(network = var_network)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
NetworksApi <- R6::R6Class(
  "NetworksApi",
  public = list(
    api_client = NULL,

    #' @description
    #' Initialize a new NetworksApi.
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
    #' add a Network
    #'
    #' @param network (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return NetworkResponse
    ADDNETWORK = function(network = NULL, data_file = NULL, ...) {
      local_var_response <- self$ADDNETWORKWithHttpInfo(network, data_file = data_file, ...)
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
    #' add a Network
    #'
    #' @param network (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (NetworkResponse) with additional information such as HTTP status code, headers
    ADDNETWORKWithHttpInfo = function(network = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE


      if (!is.null(`network`)) {
        body.items <- paste(unlist(lapply(`network`, function(param) {
                                                             param$toJSONString()
                                                         })), collapse = ",")
        local_var_body <- paste0("[", body.items, "]")
      } else {
        body <- NULL
      }

      local_var_url_path <- "/networks"
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
      local_var_content_types <- list("application/json")

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "POST",
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
          self$api_client$deserialize(local_var_resp$response_as_text(), "NetworkResponse", loadNamespace("metexplore3api")),
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
    },

    #' @description
    #' Get all networks
    #'
    #' @param id (optional) the network id
    #' @param format (optional) format of the output (default value: "summary")
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return GETNETWORKS200Response
    GETNETWORKS = function(id = NULL, format = "summary", data_file = NULL, ...) {
      local_var_response <- self$GETNETWORKSWithHttpInfo(id, format, data_file = data_file, ...)
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
    #' Get all networks
    #'
    #' @param id (optional) the network id
    #' @param format (optional) format of the output (default value: "summary")
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (GETNETWORKS200Response) with additional information such as HTTP status code, headers
    GETNETWORKSWithHttpInfo = function(id = NULL, format = "summary", data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE



      query_params[["id"]] <- `id`

      if (!is.null(`format`) && !(`format` %in% c("graph", "summary"))) {
        stop("Invalid value for format when calling NetworksApi$GETNETWORKS. Must be [graph, summary].")
      }
      query_params[["format"]] <- `format`

      local_var_url_path <- "/networks"

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
          self$api_client$deserialize(local_var_resp$response_as_text(), "GETNETWORKS200Response", loadNamespace("metexplore3api")),
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
    },

    #' @description
    #' update a Metabolic Networ
    #'
    #' @param network (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return NetworkResponse
    UPDATENETWORK = function(network = NULL, data_file = NULL, ...) {
      local_var_response <- self$UPDATENETWORKWithHttpInfo(network, data_file = data_file, ...)
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
    #' update a Metabolic Networ
    #'
    #' @param network (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (NetworkResponse) with additional information such as HTTP status code, headers
    UPDATENETWORKWithHttpInfo = function(network = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE


      if (!is.null(`network`)) {
        local_var_body <- `network`$toJSONString()
      } else {
        body <- NULL
      }

      local_var_url_path <- "/networks"
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
      local_var_content_types <- list("application/json")

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "PATCH",
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
          self$api_client$deserialize(local_var_resp$response_as_text(), "NetworkResponse", loadNamespace("metexplore3api")),
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
