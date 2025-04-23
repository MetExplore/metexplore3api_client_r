#' Create a new AddMappingAnalysesRequest
#'
#' @description
#' AddMappingAnalysesRequest Class
#'
#' @docType class
#' @title AddMappingAnalysesRequest
#' @description AddMappingAnalysesRequest Class
#' @format An \code{R6Class} generator object
#' @field name name of the mapping character
#' @field mapping  \link{MappingOutput}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AddMappingAnalysesRequest <- R6::R6Class(
  "AddMappingAnalysesRequest",
  public = list(
    `name` = NULL,
    `mapping` = NULL,

    #' @description
    #' Initialize a new AddMappingAnalysesRequest class.
    #'
    #' @param name name of the mapping
    #' @param mapping mapping
    #' @param ... Other optional arguments.
    initialize = function(`name`, `mapping`, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`mapping`)) {
        stopifnot(R6::is.R6(`mapping`))
        self$`mapping` <- `mapping`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return AddMappingAnalysesRequest in JSON format
    toJSON = function() {
      AddMappingAnalysesRequestObject <- list()
      if (!is.null(self$`name`)) {
        AddMappingAnalysesRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`mapping`)) {
        AddMappingAnalysesRequestObject[["mapping"]] <-
          self$`mapping`$toJSON()
      }
      AddMappingAnalysesRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of AddMappingAnalysesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AddMappingAnalysesRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`mapping`)) {
        `mapping_object` <- MappingOutput$new()
        `mapping_object`$fromJSON(jsonlite::toJSON(this_object$`mapping`, auto_unbox = TRUE, digits = NA))
        self$`mapping` <- `mapping_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return AddMappingAnalysesRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`mapping`)) {
          sprintf(
          '"mapping":
          %s
          ',
          jsonlite::toJSON(self$`mapping`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of AddMappingAnalysesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AddMappingAnalysesRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`mapping` <- MappingOutput$new()$fromJSON(jsonlite::toJSON(this_object$`mapping`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AddMappingAnalysesRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AddMappingAnalysesRequest: the required field `name` is missing."))
      }
      # check the required field `mapping`
      if (!is.null(input_json$`mapping`)) {
        stopifnot(R6::is.R6(input_json$`mapping`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AddMappingAnalysesRequest: the required field `mapping` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AddMappingAnalysesRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `mapping` is null
      if (is.null(self$`mapping`)) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `mapping` is null
      if (is.null(self$`mapping`)) {
        invalid_fields["mapping"] <- "Non-nullable required field `mapping` cannot be null."
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
# AddMappingAnalysesRequest$unlock()
#
## Below is an example to define the print function
# AddMappingAnalysesRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AddMappingAnalysesRequest$lock()

