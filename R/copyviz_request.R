#' Create a new COPYVIZRequest
#'
#' @description
#' Object containing the viz id
#'
#' @docType class
#' @title COPYVIZRequest
#' @description COPYVIZRequest Class
#' @format An \code{R6Class} generator object
#' @field id the viz id integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
COPYVIZRequest <- R6::R6Class(
  "COPYVIZRequest",
  public = list(
    `id` = NULL,

    #' @description
    #' Initialize a new COPYVIZRequest class.
    #'
    #' @param id the viz id
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
    #' @return COPYVIZRequest in JSON format
    toJSON = function() {
      COPYVIZRequestObject <- list()
      if (!is.null(self$`id`)) {
        COPYVIZRequestObject[["id"]] <-
          self$`id`
      }
      COPYVIZRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of COPYVIZRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of COPYVIZRequest
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
    #' @return COPYVIZRequest in JSON format
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
    #' Deserialize JSON string into an instance of COPYVIZRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of COPYVIZRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self
    },

    #' @description
    #' Validate JSON input with respect to COPYVIZRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for COPYVIZRequest: the required field `id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of COPYVIZRequest
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
# COPYVIZRequest$unlock()
#
## Below is an example to define the print function
# COPYVIZRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# COPYVIZRequest$lock()

