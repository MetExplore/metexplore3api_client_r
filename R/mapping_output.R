#' Create a new MappingOutput
#'
#' @description
#' MappingOutput Class
#'
#' @docType class
#' @title MappingOutput
#' @description MappingOutput Class
#' @format An \code{R6Class} generator object
#' @field input  \link{MappingQuery}
#' @field date Creation date of the mapping character
#' @field map mapping between the entries and the metabolic identifiers in MetExplore object
#' @field entities  \link{MappingOutputEntities}
#' @field statistics  \link{StatisticsMapping}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MappingOutput <- R6::R6Class(
  "MappingOutput",
  public = list(
    `input` = NULL,
    `date` = NULL,
    `map` = NULL,
    `entities` = NULL,
    `statistics` = NULL,

    #' @description
    #' Initialize a new MappingOutput class.
    #'
    #' @param input input
    #' @param date Creation date of the mapping
    #' @param map mapping between the entries and the metabolic identifiers in MetExplore
    #' @param entities entities
    #' @param statistics statistics
    #' @param ... Other optional arguments.
    initialize = function(`input`, `date`, `map`, `entities`, `statistics`, ...) {
      if (!missing(`input`)) {
        stopifnot(R6::is.R6(`input`))
        self$`input` <- `input`
      }
      if (!missing(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!missing(`map`)) {
        self$`map` <- `map`
      }
      if (!missing(`entities`)) {
        stopifnot(R6::is.R6(`entities`))
        self$`entities` <- `entities`
      }
      if (!missing(`statistics`)) {
        stopifnot(R6::is.R6(`statistics`))
        self$`statistics` <- `statistics`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return MappingOutput in JSON format
    toJSON = function() {
      MappingOutputObject <- list()
      if (!is.null(self$`input`)) {
        MappingOutputObject[["input"]] <-
          self$`input`$toJSON()
      }
      if (!is.null(self$`date`)) {
        MappingOutputObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`map`)) {
        MappingOutputObject[["map"]] <-
          self$`map`
      }
      if (!is.null(self$`entities`)) {
        MappingOutputObject[["entities"]] <-
          self$`entities`$toJSON()
      }
      if (!is.null(self$`statistics`)) {
        MappingOutputObject[["statistics"]] <-
          self$`statistics`$toJSON()
      }
      MappingOutputObject
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingOutput
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingOutput
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`input`)) {
        `input_object` <- MappingQuery$new()
        `input_object`$fromJSON(jsonlite::toJSON(this_object$`input`, auto_unbox = TRUE, digits = NA))
        self$`input` <- `input_object`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`map`)) {
        self$`map` <- this_object$`map`
      }
      if (!is.null(this_object$`entities`)) {
        `entities_object` <- MappingOutputEntities$new()
        `entities_object`$fromJSON(jsonlite::toJSON(this_object$`entities`, auto_unbox = TRUE, digits = NA))
        self$`entities` <- `entities_object`
      }
      if (!is.null(this_object$`statistics`)) {
        `statistics_object` <- StatisticsMapping$new()
        `statistics_object`$fromJSON(jsonlite::toJSON(this_object$`statistics`, auto_unbox = TRUE, digits = NA))
        self$`statistics` <- `statistics_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return MappingOutput in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`input`)) {
          sprintf(
          '"input":
          %s
          ',
          jsonlite::toJSON(self$`input`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`date`)) {
          sprintf(
          '"date":
            "%s"
                    ',
          self$`date`
          )
        },
        if (!is.null(self$`map`)) {
          sprintf(
          '"map":
            "%s"
                    ',
          self$`map`
          )
        },
        if (!is.null(self$`entities`)) {
          sprintf(
          '"entities":
          %s
          ',
          jsonlite::toJSON(self$`entities`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`statistics`)) {
          sprintf(
          '"statistics":
          %s
          ',
          jsonlite::toJSON(self$`statistics`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingOutput
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingOutput
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`input` <- MappingQuery$new()$fromJSON(jsonlite::toJSON(this_object$`input`, auto_unbox = TRUE, digits = NA))
      self$`date` <- this_object$`date`
      self$`map` <- this_object$`map`
      self$`entities` <- MappingOutputEntities$new()$fromJSON(jsonlite::toJSON(this_object$`entities`, auto_unbox = TRUE, digits = NA))
      self$`statistics` <- StatisticsMapping$new()$fromJSON(jsonlite::toJSON(this_object$`statistics`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to MappingOutput and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `input`
      if (!is.null(input_json$`input`)) {
        stopifnot(R6::is.R6(input_json$`input`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutput: the required field `input` is missing."))
      }
      # check the required field `date`
      if (!is.null(input_json$`date`)) {
        if (!(is.character(input_json$`date`) && length(input_json$`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", input_json$`date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutput: the required field `date` is missing."))
      }
      # check the required field `map`
      if (!is.null(input_json$`map`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutput: the required field `map` is missing."))
      }
      # check the required field `entities`
      if (!is.null(input_json$`entities`)) {
        stopifnot(R6::is.R6(input_json$`entities`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutput: the required field `entities` is missing."))
      }
      # check the required field `statistics`
      if (!is.null(input_json$`statistics`)) {
        stopifnot(R6::is.R6(input_json$`statistics`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutput: the required field `statistics` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MappingOutput
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `input` is null
      if (is.null(self$`input`)) {
        return(FALSE)
      }

      if (!str_detect(self$`date`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        return(FALSE)
      }

      # check if the required `map` is null
      if (is.null(self$`map`)) {
        return(FALSE)
      }

      # check if the required `entities` is null
      if (is.null(self$`entities`)) {
        return(FALSE)
      }

      # check if the required `statistics` is null
      if (is.null(self$`statistics`)) {
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
      # check if the required `input` is null
      if (is.null(self$`input`)) {
        invalid_fields["input"] <- "Non-nullable required field `input` cannot be null."
      }

      if (!str_detect(self$`date`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        invalid_fields["date"] <- "Invalid value for `date`, must conform to the pattern ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$."
      }

      # check if the required `map` is null
      if (is.null(self$`map`)) {
        invalid_fields["map"] <- "Non-nullable required field `map` cannot be null."
      }

      # check if the required `entities` is null
      if (is.null(self$`entities`)) {
        invalid_fields["entities"] <- "Non-nullable required field `entities` cannot be null."
      }

      # check if the required `statistics` is null
      if (is.null(self$`statistics`)) {
        invalid_fields["statistics"] <- "Non-nullable required field `statistics` cannot be null."
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
# MappingOutput$unlock()
#
## Below is an example to define the print function
# MappingOutput$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MappingOutput$lock()

