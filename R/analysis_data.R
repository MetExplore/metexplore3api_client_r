#' Create a new AnalysisData
#'
#' @description
#' Analysis Data Step object
#'
#' @docType class
#' @title AnalysisData
#' @description AnalysisData Class
#' @format An \code{R6Class} generator object
#' @field id id of the Analysis Data integer [optional]
#' @field name name of the Analysis Data character [optional]
#' @field description description of the data character [optional]
#' @field type type of data character [optional]
#' @field json data in json format (optional) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnalysisData <- R6::R6Class(
  "AnalysisData",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `type` = NULL,
    `json` = NULL,

    #' @description
    #' Initialize a new AnalysisData class.
    #'
    #' @param id id of the Analysis Data
    #' @param name name of the Analysis Data
    #' @param description description of the data
    #' @param type type of data
    #' @param json data in json format (optional)
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `description` = NULL, `type` = NULL, `json` = NULL, ...) {
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("image", "datafile", "dataset", "plot", "viz", "other"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"image\", \"datafile\", \"dataset\", \"plot\", \"viz\", \"other\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return AnalysisData in JSON format
    toJSON = function() {
      AnalysisDataObject <- list()
      if (!is.null(self$`id`)) {
        AnalysisDataObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        AnalysisDataObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        AnalysisDataObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`type`)) {
        AnalysisDataObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`json`)) {
        AnalysisDataObject[["json"]] <-
          self$`json`
      }
      AnalysisDataObject
    },

    #' @description
    #' Deserialize JSON string into an instance of AnalysisData
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnalysisData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("image", "datafile", "dataset", "plot", "viz", "other"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"image\", \"datafile\", \"dataset\", \"plot\", \"viz\", \"other\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`json`)) {
        self$`json` <- this_object$`json`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return AnalysisData in JSON format
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
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
    #' Deserialize JSON string into an instance of AnalysisData
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnalysisData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("image", "datafile", "dataset", "plot", "viz", "other"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"image\", \"datafile\", \"dataset\", \"plot\", \"viz\", \"other\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`json` <- this_object$`json`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnalysisData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnalysisData
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
# AnalysisData$unlock()
#
## Below is an example to define the print function
# AnalysisData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnalysisData$lock()

