#' Create a new UpdateMappingAnalysisRequest
#'
#' @description
#' UpdateMappingAnalysisRequest Class
#'
#' @docType class
#' @title UpdateMappingAnalysisRequest
#' @description UpdateMappingAnalysisRequest Class
#' @format An \code{R6Class} generator object
#' @field id id of the mapping analysis integer [optional]
#' @field name new name of the analysis character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateMappingAnalysisRequest <- R6::R6Class(
  "UpdateMappingAnalysisRequest",
  public = list(
    `id` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new UpdateMappingAnalysisRequest class.
    #'
    #' @param id id of the mapping analysis
    #' @param name new name of the analysis
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return UpdateMappingAnalysisRequest in JSON format
    toJSON = function() {
      UpdateMappingAnalysisRequestObject <- list()
      if (!is.null(self$`id`)) {
        UpdateMappingAnalysisRequestObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        UpdateMappingAnalysisRequestObject[["name"]] <-
          self$`name`
      }
      UpdateMappingAnalysisRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateMappingAnalysisRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateMappingAnalysisRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return UpdateMappingAnalysisRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateMappingAnalysisRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateMappingAnalysisRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateMappingAnalysisRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateMappingAnalysisRequest
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
# UpdateMappingAnalysisRequest$unlock()
#
## Below is an example to define the print function
# UpdateMappingAnalysisRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateMappingAnalysisRequest$lock()

