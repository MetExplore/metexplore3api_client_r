#' MetExplore 3 REST api
#'
#' Rest API for [MetExplore](https://metexplore.toulouse.inrae.fr/index.html/) content.
#'
#' The version of the OpenAPI document: 0.23.1
#' Contact: contact-metexplore@inrae.fr
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Reactions operations
#' @description ReactionsApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @examples
#' \dontrun{
#' ####################  COUNTREACTIONS  ####################
#'
#' library(metexplore3api)
#' var_id_network <- 56 # integer | the id_network for the reactions
#'
#' #get the number of reactions in a network
#' api_instance <- ReactionsApi$new()
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$COUNTREACTIONS(var_id_networkdata_file = "result.txt")
#' result <- api_instance$COUNTREACTIONS(var_id_network)
#' dput(result)
#'
#'
#' ####################  DELREACTION  ####################
#'
#' library(metexplore3api)
#' var_reactions_response <- c(ReactionsResponse$new("message_example", "success_example", 123, c(Reaction$new(123, "name_example", "db_identifier_example", 123, 123, 123, "type_example", "ec_example", 123, 123, 123, "eq_identifier_example", "eq_name_example")))) # array[ReactionsResponse] |  (Optional)
#'
#' #delete Reaction
#' api_instance <- ReactionsApi$new()
#'
#' # Configure HTTP bearer authorization: userAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # Configure API key authorization: appAuth
#' api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$DELREACTION(reactions_response = var_reactions_responsedata_file = "result.txt")
#' result <- api_instance$DELREACTION(reactions_response = var_reactions_response)
#' dput(result)
#'
#'
#' ####################  GETREACTIONS  ####################
#'
#' library(metexplore3api)
#' var_id_network <- 56 # integer | the id of the network (Optional)
#' var_id_collection <- 56 # integer | the id of the collection for the Reaction (Optional)
#'
#' #get Reaction
#' api_instance <- ReactionsApi$new()
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$GETREACTIONS(id_network = var_id_network, id_collection = var_id_collectiondata_file = "result.txt")
#' result <- api_instance$GETREACTIONS(id_network = var_id_network, id_collection = var_id_collection)
#' dput(result)
#'
#'
#' ####################  POSTREACTION  ####################
#'
#' library(metexplore3api)
#' var_reaction <- c(Reaction$new(123, "name_example", "db_identifier_example", 123, 123, 123, "type_example", "ec_example", 123, 123, 123, "eq_identifier_example", "eq_name_example")) # array[Reaction] |  (Optional)
#'
#' #add Reaction
#' api_instance <- ReactionsApi$new()
#'
#' # Configure HTTP bearer authorization: userAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # Configure API key authorization: appAuth
#' api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$POSTREACTION(reaction = var_reactiondata_file = "result.txt")
#' result <- api_instance$POSTREACTION(reaction = var_reaction)
#' dput(result)
#'
#'
#' ####################  UPDATEREACTION  ####################
#'
#' library(metexplore3api)
#' var_reactions_response <- c(ReactionsResponse$new("message_example", "success_example", 123, c(Reaction$new(123, "name_example", "db_identifier_example", 123, 123, 123, "type_example", "ec_example", 123, 123, 123, "eq_identifier_example", "eq_name_example")))) # array[ReactionsResponse] |  (Optional)
#'
#' #update Reaction
#' api_instance <- ReactionsApi$new()
#'
#' # Configure HTTP bearer authorization: userAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # Configure API key authorization: appAuth
#' api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$UPDATEREACTION(reactions_response = var_reactions_responsedata_file = "result.txt")
#' result <- api_instance$UPDATEREACTION(reactions_response = var_reactions_response)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
ReactionsApi <- R6::R6Class(
  "ReactionsApi",
  public = list(
    api_client = NULL,

    #' @description
    #' Initialize a new ReactionsApi.
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
    #' get the number of reactions in a network
    #'
    #' @param id_network the id_network for the reactions
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return CountResponse
    COUNTREACTIONS = function(id_network, data_file = NULL, ...) {
      local_var_response <- self$COUNTREACTIONSWithHttpInfo(id_network, data_file = data_file, ...)
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
    #' get the number of reactions in a network
    #'
    #' @param id_network the id_network for the reactions
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (CountResponse) with additional information such as HTTP status code, headers
    COUNTREACTIONSWithHttpInfo = function(id_network, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`id_network`)) {
        stop("Missing required parameter `id_network`.")
      }


      query_params[["id_network"]] <- `id_network`

      local_var_url_path <- "/reactions/count"

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
          self$api_client$deserialize(local_var_resp$response_as_text(), "CountResponse", loadNamespace("metexplore3api")),
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
    #' delete Reaction
    #'
    #' @param reactions_response (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return ReactionsResponse
    DELREACTION = function(reactions_response = NULL, data_file = NULL, ...) {
      local_var_response <- self$DELREACTIONWithHttpInfo(reactions_response, data_file = data_file, ...)
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
    #' delete Reaction
    #'
    #' @param reactions_response (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (ReactionsResponse) with additional information such as HTTP status code, headers
    DELREACTIONWithHttpInfo = function(reactions_response = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE


      if (!is.null(`reactions_response`)) {
        body.items <- paste(unlist(lapply(`reactions_response`, function(param) {
                                                             param$toJSONString()
                                                         })), collapse = ",")
        local_var_body <- paste0("[", body.items, "]")
      } else {
        body <- NULL
      }

      local_var_url_path <- "/reactions"
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
                                 method = "DELETE",
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
          self$api_client$deserialize(local_var_resp$response_as_text(), "ReactionsResponse", loadNamespace("metexplore3api")),
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
    #' get Reaction
    #'
    #' @param id_network (optional) the id of the network
    #' @param id_collection (optional) the id of the collection for the Reaction
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return ReactionsResponse
    GETREACTIONS = function(id_network = NULL, id_collection = NULL, data_file = NULL, ...) {
      local_var_response <- self$GETREACTIONSWithHttpInfo(id_network, id_collection, data_file = data_file, ...)
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
    #' get Reaction
    #'
    #' @param id_network (optional) the id of the network
    #' @param id_collection (optional) the id of the collection for the Reaction
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (ReactionsResponse) with additional information such as HTTP status code, headers
    GETREACTIONSWithHttpInfo = function(id_network = NULL, id_collection = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE



      query_params[["id_network"]] <- `id_network`

      query_params[["id_collection"]] <- `id_collection`

      local_var_url_path <- "/reactions"

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
          self$api_client$deserialize(local_var_resp$response_as_text(), "ReactionsResponse", loadNamespace("metexplore3api")),
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
    #' add Reaction
    #'
    #' @param reaction (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return ReactionsResponse
    POSTREACTION = function(reaction = NULL, data_file = NULL, ...) {
      local_var_response <- self$POSTREACTIONWithHttpInfo(reaction, data_file = data_file, ...)
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
    #' add Reaction
    #'
    #' @param reaction (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (ReactionsResponse) with additional information such as HTTP status code, headers
    POSTREACTIONWithHttpInfo = function(reaction = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE


      if (!is.null(`reaction`)) {
        body.items <- paste(unlist(lapply(`reaction`, function(param) {
                                                             param$toJSONString()
                                                         })), collapse = ",")
        local_var_body <- paste0("[", body.items, "]")
      } else {
        body <- NULL
      }

      local_var_url_path <- "/reactions"
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
          self$api_client$deserialize(local_var_resp$response_as_text(), "ReactionsResponse", loadNamespace("metexplore3api")),
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
    #' update Reaction
    #'
    #' @param reactions_response (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return ReactionsResponse
    UPDATEREACTION = function(reactions_response = NULL, data_file = NULL, ...) {
      local_var_response <- self$UPDATEREACTIONWithHttpInfo(reactions_response, data_file = data_file, ...)
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
    #' update Reaction
    #'
    #' @param reactions_response (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (ReactionsResponse) with additional information such as HTTP status code, headers
    UPDATEREACTIONWithHttpInfo = function(reactions_response = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE


      if (!is.null(`reactions_response`)) {
        body.items <- paste(unlist(lapply(`reactions_response`, function(param) {
                                                             param$toJSONString()
                                                         })), collapse = ",")
        local_var_body <- paste0("[", body.items, "]")
      } else {
        body <- NULL
      }

      local_var_url_path <- "/reactions"
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
          self$api_client$deserialize(local_var_resp$response_as_text(), "ReactionsResponse", loadNamespace("metexplore3api")),
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
