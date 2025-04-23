#' Create a new MappingQuery
#'
#' @description
#' Mapping query
#'
#' @docType class
#' @title MappingQuery
#' @description MappingQuery Class
#' @format An \code{R6Class} generator object
#' @field entries  \link{MappingInputTable}
#' @field id_network id of the network in the database integer
#' @field type the type of biodata on which the mapping is done character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MappingQuery <- R6::R6Class(
  "MappingQuery",
  public = list(
    `entries` = NULL,
    `id_network` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new MappingQuery class.
    #'
    #' @param entries entries
    #' @param id_network id of the network in the database
    #' @param type the type of biodata on which the mapping is done
    #' @param ... Other optional arguments.
    initialize = function(`entries`, `id_network`, `type`, ...) {
      if (!missing(`entries`)) {
        stopifnot(R6::is.R6(`entries`))
        self$`entries` <- `entries`
      }
      if (!missing(`id_network`)) {
        if (!(is.numeric(`id_network`) && length(`id_network`) == 1)) {
          stop(paste("Error! Invalid data for `id_network`. Must be an integer:", `id_network`))
        }
        self$`id_network` <- `id_network`
      }
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return MappingQuery in JSON format
    toJSON = function() {
      MappingQueryObject <- list()
      if (!is.null(self$`entries`)) {
        MappingQueryObject[["entries"]] <-
          self$`entries`$toJSON()
      }
      if (!is.null(self$`id_network`)) {
        MappingQueryObject[["id_network"]] <-
          self$`id_network`
      }
      if (!is.null(self$`type`)) {
        MappingQueryObject[["type"]] <-
          self$`type`
      }
      MappingQueryObject
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingQuery
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingQuery
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entries`)) {
        `entries_object` <- MappingInputTable$new()
        `entries_object`$fromJSON(jsonlite::toJSON(this_object$`entries`, auto_unbox = TRUE, digits = NA))
        self$`entries` <- `entries_object`
      }
      if (!is.null(this_object$`id_network`)) {
        self$`id_network` <- this_object$`id_network`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return MappingQuery in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`entries`)) {
          sprintf(
          '"entries":
          %s
          ',
          jsonlite::toJSON(self$`entries`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`id_network`)) {
          sprintf(
          '"id_network":
            %d
                    ',
          self$`id_network`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingQuery
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingQuery
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entries` <- MappingInputTable$new()$fromJSON(jsonlite::toJSON(this_object$`entries`, auto_unbox = TRUE, digits = NA))
      self$`id_network` <- this_object$`id_network`
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to MappingQuery and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `entries`
      if (!is.null(input_json$`entries`)) {
        stopifnot(R6::is.R6(input_json$`entries`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingQuery: the required field `entries` is missing."))
      }
      # check the required field `id_network`
      if (!is.null(input_json$`id_network`)) {
        if (!(is.numeric(input_json$`id_network`) && length(input_json$`id_network`) == 1)) {
          stop(paste("Error! Invalid data for `id_network`. Must be an integer:", input_json$`id_network`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingQuery: the required field `id_network` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingQuery: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MappingQuery
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        return(FALSE)
      }

      # check if the required `id_network` is null
      if (is.null(self$`id_network`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
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
      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        invalid_fields["entries"] <- "Non-nullable required field `entries` cannot be null."
      }

      # check if the required `id_network` is null
      if (is.null(self$`id_network`)) {
        invalid_fields["id_network"] <- "Non-nullable required field `id_network` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# MappingQuery$unlock()
#
## Below is an example to define the print function
# MappingQuery$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MappingQuery$lock()

