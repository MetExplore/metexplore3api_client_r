#' Create a new Node
#'
#' @description
#' Node Class
#'
#' @docType class
#' @title Node
#' @description Node Class
#' @format An \code{R6Class} generator object
#' @field label text display character [optional]
#' @field metadata custom data named list(\link{AnyType}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Node <- R6::R6Class(
  "Node",
  public = list(
    `label` = NULL,
    `metadata` = NULL,

    #' @description
    #' Initialize a new Node class.
    #'
    #' @param label text display
    #' @param metadata custom data
    #' @param ... Other optional arguments.
    initialize = function(`label` = NULL, `metadata` = NULL, ...) {
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`metadata`)) {
        stopifnot(is.vector(`metadata`), length(`metadata`) != 0)
        sapply(`metadata`, function(x) stopifnot(R6::is.R6(x)))
        self$`metadata` <- `metadata`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Node in JSON format
    toJSON = function() {
      NodeObject <- list()
      if (!is.null(self$`label`)) {
        NodeObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`metadata`)) {
        NodeObject[["metadata"]] <-
          lapply(self$`metadata`, function(x) x$toJSON())
      }
      NodeObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Node
    #'
    #' @param input_json the JSON input
    #' @return the instance of Node
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- ApiClient$new()$deserializeObj(this_object$`metadata`, "map(AnyType)", loadNamespace("metexplore3api?"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Node in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`label`)) {
          sprintf(
          '"label":
            "%s"
                    ',
          self$`label`
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
          %s
',
          jsonlite::toJSON(lapply(self$`metadata`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Node
    #'
    #' @param input_json the JSON input
    #' @return the instance of Node
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`label` <- this_object$`label`
      self$`metadata` <- ApiClient$new()$deserializeObj(this_object$`metadata`, "map(AnyType)", loadNamespace("metexplore3api?"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Node and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Node
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
# Node$unlock()
#
## Below is an example to define the print function
# Node$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Node$lock()

