#' Create a new DELNETWORKRequest
#'
#' @description
#' Object containing the network id
#'
#' @docType class
#' @title DELNETWORKRequest
#' @description DELNETWORKRequest Class
#' @format An \code{R6Class} generator object
#' @field id id of the network in the database integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DELNETWORKRequest <- R6::R6Class(
  "DELNETWORKRequest",
  public = list(
    `id` = NULL,

    #' @description
    #' Initialize a new DELNETWORKRequest class.
    #'
    #' @param id id of the network in the database
    #' @param ... Other optional arguments.
    initialize = function(`id`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return DELNETWORKRequest in JSON format
    toJSON = function() {
      DELNETWORKRequestObject <- list()
      if (!is.null(self$`id`)) {
        DELNETWORKRequestObject[["id"]] <-
          self$`id`
      }
      DELNETWORKRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of DELNETWORKRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DELNETWORKRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return DELNETWORKRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of DELNETWORKRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DELNETWORKRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self
    },

    #' @description
    #' Validate JSON input with respect to DELNETWORKRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DELNETWORKRequest: the required field `id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DELNETWORKRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
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
# DELNETWORKRequest$unlock()
#
## Below is an example to define the print function
# DELNETWORKRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DELNETWORKRequest$lock()

