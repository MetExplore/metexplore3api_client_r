#' Create a new StepUpdate
#'
#' @description
#' Update object for steps
#'
#' @docType class
#' @title StepUpdate
#' @description StepUpdate Class
#' @format An \code{R6Class} generator object
#' @field id id of the step in the MetExplore database integer [optional]
#' @field column Column name to update character [optional]
#' @field value New value for the column character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StepUpdate <- R6::R6Class(
  "StepUpdate",
  public = list(
    `id` = NULL,
    `column` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new StepUpdate class.
    #'
    #' @param id id of the step in the MetExplore database
    #' @param column Column name to update
    #' @param value New value for the column
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `column` = NULL, `value` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`column`)) {
        if (!(is.character(`column`) && length(`column`) == 1)) {
          stop(paste("Error! Invalid data for `column`. Must be a string:", `column`))
        }
        self$`column` <- `column`
      }
      if (!is.null(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return StepUpdate in JSON format
    toJSON = function() {
      StepUpdateObject <- list()
      if (!is.null(self$`id`)) {
        StepUpdateObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`column`)) {
        StepUpdateObject[["column"]] <-
          self$`column`
      }
      if (!is.null(self$`value`)) {
        StepUpdateObject[["value"]] <-
          self$`value`
      }
      StepUpdateObject
    },

    #' @description
    #' Deserialize JSON string into an instance of StepUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of StepUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`column`)) {
        self$`column` <- this_object$`column`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return StepUpdate in JSON format
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
        if (!is.null(self$`column`)) {
          sprintf(
          '"column":
            "%s"
                    ',
          self$`column`
          )
        },
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            "%s"
                    ',
          self$`value`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of StepUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of StepUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`column` <- this_object$`column`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to StepUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StepUpdate
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
# StepUpdate$unlock()
#
## Below is an example to define the print function
# StepUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StepUpdate$lock()

