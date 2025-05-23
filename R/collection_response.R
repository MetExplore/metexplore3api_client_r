#' Create a new CollectionResponse
#'
#' @description
#' CollectionResponse Class
#'
#' @docType class
#' @title CollectionResponse
#' @description CollectionResponse Class
#' @format An \code{R6Class} generator object
#' @field message Message to describe that it's ok or not character
#' @field success Indicates if the response is a success or a fail character
#' @field status Code of the response integer
#' @field collection  \link{Collection} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CollectionResponse <- R6::R6Class(
  "CollectionResponse",
  public = list(
    `message` = NULL,
    `success` = NULL,
    `status` = NULL,
    `collection` = NULL,

    #' @description
    #' Initialize a new CollectionResponse class.
    #'
    #' @param message Message to describe that it's ok or not
    #' @param success Indicates if the response is a success or a fail
    #' @param status Code of the response
    #' @param collection collection
    #' @param ... Other optional arguments.
    initialize = function(`message`, `success`, `status`, `collection` = NULL, ...) {
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
      if (!is.null(`collection`)) {
        stopifnot(R6::is.R6(`collection`))
        self$`collection` <- `collection`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return CollectionResponse in JSON format
    toJSON = function() {
      CollectionResponseObject <- list()
      if (!is.null(self$`message`)) {
        CollectionResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`success`)) {
        CollectionResponseObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`status`)) {
        CollectionResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`collection`)) {
        CollectionResponseObject[["collection"]] <-
          self$`collection`$toJSON()
      }
      CollectionResponseObject
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionResponse
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
      if (!is.null(this_object$`collection`)) {
        `collection_object` <- Collection$new()
        `collection_object`$fromJSON(jsonlite::toJSON(this_object$`collection`, auto_unbox = TRUE, digits = NA))
        self$`collection` <- `collection_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return CollectionResponse in JSON format
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
        if (!is.null(self$`collection`)) {
          sprintf(
          '"collection":
          %s
          ',
          jsonlite::toJSON(self$`collection`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`success` <- this_object$`success`
      self$`status` <- this_object$`status`
      self$`collection` <- Collection$new()$fromJSON(jsonlite::toJSON(this_object$`collection`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CollectionResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CollectionResponse: the required field `message` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionResponse: the required field `success` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.numeric(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be an integer:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionResponse: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CollectionResponse
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
# CollectionResponse$unlock()
#
## Below is an example to define the print function
# CollectionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CollectionResponse$lock()

