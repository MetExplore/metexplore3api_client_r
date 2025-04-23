#' Create a new FiltersResponse
#'
#' @description
#' FiltersResponse Class
#'
#' @docType class
#' @title FiltersResponse
#' @description FiltersResponse Class
#' @format An \code{R6Class} generator object
#' @field message Message to describe that it's ok or not character
#' @field success Indicates if the response is a success or a fail character
#' @field status Code of the response integer
#' @field ids array of database ids (integers) list(integer)
#' @field db_identifiers array of MetExplore identifiers (strings) list(character)
#' @field names array of names (strings) list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FiltersResponse <- R6::R6Class(
  "FiltersResponse",
  public = list(
    `message` = NULL,
    `success` = NULL,
    `status` = NULL,
    `ids` = NULL,
    `db_identifiers` = NULL,
    `names` = NULL,

    #' @description
    #' Initialize a new FiltersResponse class.
    #'
    #' @param message Message to describe that it's ok or not
    #' @param success Indicates if the response is a success or a fail
    #' @param status Code of the response
    #' @param ids array of database ids (integers)
    #' @param db_identifiers array of MetExplore identifiers (strings)
    #' @param names array of names (strings)
    #' @param ... Other optional arguments.
    initialize = function(`message`, `success`, `status`, `ids`, `db_identifiers`, `names`, ...) {
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
      if (!missing(`ids`)) {
        stopifnot(is.vector(`ids`), length(`ids`) != 0)
        sapply(`ids`, function(x) stopifnot(is.character(x)))
        self$`ids` <- `ids`
      }
      if (!missing(`db_identifiers`)) {
        stopifnot(is.vector(`db_identifiers`), length(`db_identifiers`) != 0)
        sapply(`db_identifiers`, function(x) stopifnot(is.character(x)))
        self$`db_identifiers` <- `db_identifiers`
      }
      if (!missing(`names`)) {
        stopifnot(is.vector(`names`), length(`names`) != 0)
        sapply(`names`, function(x) stopifnot(is.character(x)))
        self$`names` <- `names`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return FiltersResponse in JSON format
    toJSON = function() {
      FiltersResponseObject <- list()
      if (!is.null(self$`message`)) {
        FiltersResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`success`)) {
        FiltersResponseObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`status`)) {
        FiltersResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`ids`)) {
        FiltersResponseObject[["ids"]] <-
          self$`ids`
      }
      if (!is.null(self$`db_identifiers`)) {
        FiltersResponseObject[["db_identifiers"]] <-
          self$`db_identifiers`
      }
      if (!is.null(self$`names`)) {
        FiltersResponseObject[["names"]] <-
          self$`names`
      }
      FiltersResponseObject
    },

    #' @description
    #' Deserialize JSON string into an instance of FiltersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FiltersResponse
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
      if (!is.null(this_object$`ids`)) {
        self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[integer]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`db_identifiers`)) {
        self$`db_identifiers` <- ApiClient$new()$deserializeObj(this_object$`db_identifiers`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`names`)) {
        self$`names` <- ApiClient$new()$deserializeObj(this_object$`names`, "array[character]", loadNamespace("metexplore3api"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return FiltersResponse in JSON format
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
        if (!is.null(self$`ids`)) {
          sprintf(
          '"ids":
             [%s]
          ',
          paste(unlist(lapply(self$`ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`db_identifiers`)) {
          sprintf(
          '"db_identifiers":
             [%s]
          ',
          paste(unlist(lapply(self$`db_identifiers`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`names`)) {
          sprintf(
          '"names":
             [%s]
          ',
          paste(unlist(lapply(self$`names`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of FiltersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FiltersResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`success` <- this_object$`success`
      self$`status` <- this_object$`status`
      self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[integer]", loadNamespace("metexplore3api"))
      self$`db_identifiers` <- ApiClient$new()$deserializeObj(this_object$`db_identifiers`, "array[character]", loadNamespace("metexplore3api"))
      self$`names` <- ApiClient$new()$deserializeObj(this_object$`names`, "array[character]", loadNamespace("metexplore3api"))
      self
    },

    #' @description
    #' Validate JSON input with respect to FiltersResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for FiltersResponse: the required field `message` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FiltersResponse: the required field `success` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.numeric(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be an integer:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FiltersResponse: the required field `status` is missing."))
      }
      # check the required field `ids`
      if (!is.null(input_json$`ids`)) {
        stopifnot(is.vector(input_json$`ids`), length(input_json$`ids`) != 0)
        tmp <- sapply(input_json$`ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FiltersResponse: the required field `ids` is missing."))
      }
      # check the required field `db_identifiers`
      if (!is.null(input_json$`db_identifiers`)) {
        stopifnot(is.vector(input_json$`db_identifiers`), length(input_json$`db_identifiers`) != 0)
        tmp <- sapply(input_json$`db_identifiers`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FiltersResponse: the required field `db_identifiers` is missing."))
      }
      # check the required field `names`
      if (!is.null(input_json$`names`)) {
        stopifnot(is.vector(input_json$`names`), length(input_json$`names`) != 0)
        tmp <- sapply(input_json$`names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FiltersResponse: the required field `names` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FiltersResponse
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

      # check if the required `ids` is null
      if (is.null(self$`ids`)) {
        return(FALSE)
      }

      # check if the required `db_identifiers` is null
      if (is.null(self$`db_identifiers`)) {
        return(FALSE)
      }

      # check if the required `names` is null
      if (is.null(self$`names`)) {
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

      # check if the required `ids` is null
      if (is.null(self$`ids`)) {
        invalid_fields["ids"] <- "Non-nullable required field `ids` cannot be null."
      }

      # check if the required `db_identifiers` is null
      if (is.null(self$`db_identifiers`)) {
        invalid_fields["db_identifiers"] <- "Non-nullable required field `db_identifiers` cannot be null."
      }

      # check if the required `names` is null
      if (is.null(self$`names`)) {
        invalid_fields["names"] <- "Non-nullable required field `names` cannot be null."
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
# FiltersResponse$unlock()
#
## Below is an example to define the print function
# FiltersResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FiltersResponse$lock()

