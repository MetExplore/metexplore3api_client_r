#' Create a new GraphResponseAllOfResult
#'
#' @description
#' GraphResponseAllOfResult Class
#'
#' @docType class
#' @title GraphResponseAllOfResult
#' @description GraphResponseAllOfResult Class
#' @format An \code{R6Class} generator object
#' @field graph  \link{Graph} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GraphResponseAllOfResult <- R6::R6Class(
  "GraphResponseAllOfResult",
  public = list(
    `graph` = NULL,

    #' @description
    #' Initialize a new GraphResponseAllOfResult class.
    #'
    #' @param graph graph
    #' @param ... Other optional arguments.
    initialize = function(`graph` = NULL, ...) {
      if (!is.null(`graph`)) {
        stopifnot(R6::is.R6(`graph`))
        self$`graph` <- `graph`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return GraphResponseAllOfResult in JSON format
    toJSON = function() {
      GraphResponseAllOfResultObject <- list()
      if (!is.null(self$`graph`)) {
        GraphResponseAllOfResultObject[["graph"]] <-
          self$`graph`$toJSON()
      }
      GraphResponseAllOfResultObject
    },

    #' @description
    #' Deserialize JSON string into an instance of GraphResponseAllOfResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of GraphResponseAllOfResult
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`graph`)) {
        `graph_object` <- Graph$new()
        `graph_object`$fromJSON(jsonlite::toJSON(this_object$`graph`, auto_unbox = TRUE, digits = NA))
        self$`graph` <- `graph_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return GraphResponseAllOfResult in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`graph`)) {
          sprintf(
          '"graph":
          %s
          ',
          jsonlite::toJSON(self$`graph`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of GraphResponseAllOfResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of GraphResponseAllOfResult
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`graph` <- Graph$new()$fromJSON(jsonlite::toJSON(this_object$`graph`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GraphResponseAllOfResult and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GraphResponseAllOfResult
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# GraphResponseAllOfResult$unlock()
#
## Below is an example to define the print function
# GraphResponseAllOfResult$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GraphResponseAllOfResult$lock()

