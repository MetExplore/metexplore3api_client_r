#' Create a new AnalysisMapping
#'
#' @description
#' Analysis Mapping object
#'
#' @docType class
#' @title AnalysisMapping
#' @description AnalysisMapping Class
#' @format An \code{R6Class} generator object
#' @field id id of the analysis integer [optional]
#' @field name name of the analysis character [optional]
#' @field json json of the mapping response character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnalysisMapping <- R6::R6Class(
  "AnalysisMapping",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `json` = NULL,

    #' @description
    #' Initialize a new AnalysisMapping class.
    #'
    #' @param id id of the analysis
    #' @param name name of the analysis
    #' @param json json of the mapping response
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `json` = NULL, ...) {
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
      if (!is.null(`json`)) {
        if (!(is.character(`json`) && length(`json`) == 1)) {
          stop(paste("Error! Invalid data for `json`. Must be a string:", `json`))
        }
        self$`json` <- `json`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return AnalysisMapping in JSON format
    toJSON = function() {
      AnalysisMappingObject <- list()
      if (!is.null(self$`id`)) {
        AnalysisMappingObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        AnalysisMappingObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`json`)) {
        AnalysisMappingObject[["json"]] <-
          self$`json`
      }
      AnalysisMappingObject
    },

    #' @description
    #' Deserialize JSON string into an instance of AnalysisMapping
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnalysisMapping
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`json`)) {
        self$`json` <- this_object$`json`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return AnalysisMapping in JSON format
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
        },
        if (!is.null(self$`json`)) {
          sprintf(
          '"json":
            "%s"
                    ',
          self$`json`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnalysisMapping
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnalysisMapping
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`json` <- this_object$`json`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnalysisMapping and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnalysisMapping
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
# AnalysisMapping$unlock()
#
## Below is an example to define the print function
# AnalysisMapping$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnalysisMapping$lock()

