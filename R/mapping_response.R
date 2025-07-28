#' Create a new MappingResponse
#'
#' @description
#' MappingResponse Class
#'
#' @docType class
#' @title MappingResponse
#' @description MappingResponse Class
#' @format An \code{R6Class} generator object
#' @field message Message to describe that it's ok or not character
#' @field success Indicates if the response is a success or a fail character
#' @field status Code of the response integer
#' @field input  \link{MappingQuery}
#' @field date Creation date of the mapping character
#' @field map mapping between the entries and the metabolic identifiers in MetExplore object
#' @field entities  \link{MappingOutputEntities}
#' @field statistics  \link{StatisticsMapping}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MappingResponse <- R6::R6Class(
  "MappingResponse",
  public = list(
    `message` = NULL,
    `success` = NULL,
    `status` = NULL,
    `input` = NULL,
    `date` = NULL,
    `map` = NULL,
    `entities` = NULL,
    `statistics` = NULL,

    #' @description
    #' Initialize a new MappingResponse class.
    #'
    #' @param message Message to describe that it's ok or not
    #' @param success Indicates if the response is a success or a fail
    #' @param status Code of the response
    #' @param input input
    #' @param date Creation date of the mapping
    #' @param map mapping between the entries and the metabolic identifiers in MetExplore
    #' @param entities entities
    #' @param statistics statistics
    #' @param ... Other optional arguments.
    initialize = function(`message`, `success`, `status`, `input`, `date`, `map`, `entities`, `statistics`, ...) {
      if (!missing(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!missing(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!missing(`status`)) {
        if (!(is.numeric(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be an integer:", `status`))
        }
        self$`status` <- `status`
      }
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
    #' @return MappingResponse in JSON format
    toJSON = function() {
      MappingResponseObject <- list()
      if (!is.null(self$`message`)) {
        MappingResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`success`)) {
        MappingResponseObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`status`)) {
        MappingResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`input`)) {
        MappingResponseObject[["input"]] <-
          self$`input`$toJSON()
      }
      if (!is.null(self$`date`)) {
        MappingResponseObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`map`)) {
        MappingResponseObject[["map"]] <-
          self$`map`
      }
      if (!is.null(self$`entities`)) {
        MappingResponseObject[["entities"]] <-
          self$`entities`$toJSON()
      }
      if (!is.null(self$`statistics`)) {
        MappingResponseObject[["statistics"]] <-
          self$`statistics`$toJSON()
      }
      MappingResponseObject
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
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
    #' @return MappingResponse in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        },
        if (!is.null(self$`success`)) {
          sprintf(
          '"success":
            %s
                    ',
          tolower(self$`success`)
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            %d
                    ',
          self$`status`
          )
        },
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
    #' Deserialize JSON string into an instance of MappingResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`success` <- this_object$`success`
      self$`status` <- this_object$`status`
      self$`input` <- MappingQuery$new()$fromJSON(jsonlite::toJSON(this_object$`input`, auto_unbox = TRUE, digits = NA))
      self$`date` <- this_object$`date`
      self$`map` <- this_object$`map`
      self$`entities` <- MappingOutputEntities$new()$fromJSON(jsonlite::toJSON(this_object$`entities`, auto_unbox = TRUE, digits = NA))
      self$`statistics` <- StatisticsMapping$new()$fromJSON(jsonlite::toJSON(this_object$`statistics`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to MappingResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        if (!(is.character(input_json$`message`) && length(input_json$`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", input_json$`message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingResponse: the required field `message` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingResponse: the required field `success` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.numeric(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be an integer:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingResponse: the required field `status` is missing."))
      }
      # check the required field `input`
      if (!is.null(input_json$`input`)) {
        stopifnot(R6::is.R6(input_json$`input`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingResponse: the required field `input` is missing."))
      }
      # check the required field `date`
      if (!is.null(input_json$`date`)) {
        if (!(is.character(input_json$`date`) && length(input_json$`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", input_json$`date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingResponse: the required field `date` is missing."))
      }
      # check the required field `map`
      if (!is.null(input_json$`map`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingResponse: the required field `map` is missing."))
      }
      # check the required field `entities`
      if (!is.null(input_json$`entities`)) {
        stopifnot(R6::is.R6(input_json$`entities`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingResponse: the required field `entities` is missing."))
      }
      # check the required field `statistics`
      if (!is.null(input_json$`statistics`)) {
        stopifnot(R6::is.R6(input_json$`statistics`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingResponse: the required field `statistics` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MappingResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `message` is null
      if (is.null(self$`message`)) {
        return(FALSE)
      }

      # check if the required `success` is null
      if (is.null(self$`success`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

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
      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
      }

      # check if the required `success` is null
      if (is.null(self$`success`)) {
        invalid_fields["success"] <- "Non-nullable required field `success` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

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
# MappingResponse$unlock()
#
## Below is an example to define the print function
# MappingResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MappingResponse$lock()

