#' Create a new Analysis
#'
#' @description
#' Analysis object
#'
#' @docType class
#' @title Analysis
#' @description Analysis Class
#' @format An \code{R6Class} generator object
#' @field id id of the analysis integer [optional]
#' @field name name of the analysis character [optional]
#' @field description description of the analysis character [optional]
#' @field url url of the analysis character [optional]
#' @field date_creation date of the creation of the analysis (ISO 8601 full-time format) character [optional]
#' @field date_edition date of the last modification (ISO 8601 full-time format) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Analysis <- R6::R6Class(
  "Analysis",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `url` = NULL,
    `date_creation` = NULL,
    `date_edition` = NULL,

    #' @description
    #' Initialize a new Analysis class.
    #'
    #' @param id id of the analysis
    #' @param name name of the analysis
    #' @param description description of the analysis
    #' @param url url of the analysis
    #' @param date_creation date of the creation of the analysis (ISO 8601 full-time format)
    #' @param date_edition date of the last modification (ISO 8601 full-time format)
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `description` = NULL, `url` = NULL, `date_creation` = NULL, `date_edition` = NULL, ...) {
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
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`date_creation`)) {
        if (!(is.character(`date_creation`) && length(`date_creation`) == 1)) {
          stop(paste("Error! Invalid data for `date_creation`. Must be a string:", `date_creation`))
        }
        self$`date_creation` <- `date_creation`
      }
      if (!is.null(`date_edition`)) {
        if (!(is.character(`date_edition`) && length(`date_edition`) == 1)) {
          stop(paste("Error! Invalid data for `date_edition`. Must be a string:", `date_edition`))
        }
        self$`date_edition` <- `date_edition`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Analysis in JSON format
    toJSON = function() {
      AnalysisObject <- list()
      if (!is.null(self$`id`)) {
        AnalysisObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        AnalysisObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        AnalysisObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`url`)) {
        AnalysisObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`date_creation`)) {
        AnalysisObject[["date_creation"]] <-
          self$`date_creation`
      }
      if (!is.null(self$`date_edition`)) {
        AnalysisObject[["date_edition"]] <-
          self$`date_edition`
      }
      AnalysisObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Analysis
    #'
    #' @param input_json the JSON input
    #' @return the instance of Analysis
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
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`date_creation`)) {
        self$`date_creation` <- this_object$`date_creation`
      }
      if (!is.null(this_object$`date_edition`)) {
        self$`date_edition` <- this_object$`date_edition`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Analysis in JSON format
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
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
            "%s"
                    ',
          self$`url`
          )
        },
        if (!is.null(self$`date_creation`)) {
          sprintf(
          '"date_creation":
            "%s"
                    ',
          self$`date_creation`
          )
        },
        if (!is.null(self$`date_edition`)) {
          sprintf(
          '"date_edition":
            "%s"
                    ',
          self$`date_edition`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Analysis
    #'
    #' @param input_json the JSON input
    #' @return the instance of Analysis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`url` <- this_object$`url`
      self$`date_creation` <- this_object$`date_creation`
      self$`date_edition` <- this_object$`date_edition`
      self
    },

    #' @description
    #' Validate JSON input with respect to Analysis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Analysis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (!str_detect(self$`date_creation`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        return(FALSE)
      }

      if (!str_detect(self$`date_edition`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      if (!str_detect(self$`date_creation`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        invalid_fields["date_creation"] <- "Invalid value for `date_creation`, must conform to the pattern ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$."
      }

      if (!str_detect(self$`date_edition`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        invalid_fields["date_edition"] <- "Invalid value for `date_edition`, must conform to the pattern ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$."
      }

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
# Analysis$unlock()
#
## Below is an example to define the print function
# Analysis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Analysis$lock()

