#' Create a new MappingInputTable
#'
#' @description
#' Mapping input table. Must contain one key \"ids\"
#'
#' @docType class
#' @title MappingInputTable
#' @description MappingInputTable Class
#' @format An \code{R6Class} generator object
#' @field ids ids list(character)
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MappingInputTable <- R6::R6Class(
  "MappingInputTable",
  inherit = AnyType,
  public = list(
    `ids` = NULL,
    `_field_list` = c("ids"),
    `additional_properties` = list(),

    #' @description
    #' Initialize a new MappingInputTable class.
    #'
    #' @param ids ids
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    initialize = function(`ids`, additional_properties = NULL, ...) {
      if (!missing(`ids`)) {
        stopifnot(is.vector(`ids`), length(`ids`) != 0)
        sapply(`ids`, function(x) stopifnot(is.character(x)))
        self$`ids` <- `ids`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return MappingInputTable in JSON format
    toJSON = function() {
      MappingInputTableObject <- list()
      if (!is.null(self$`ids`)) {
        MappingInputTableObject[["ids"]] <-
          self$`ids`
      }
      for (key in names(self$additional_properties)) {
        MappingInputTableObject[[key]] <- self$additional_properties[[key]]
      }

      MappingInputTableObject
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingInputTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingInputTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ids`)) {
        self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[character]", loadNamespace("metexplore3api?"))
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return MappingInputTable in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`ids`)) {
          sprintf(
          '"ids":
             [%s]
          ',
          paste(unlist(lapply(self$`ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingInputTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingInputTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[character]", loadNamespace("metexplore3api?"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' Validate JSON input with respect to MappingInputTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ids`
      if (!is.null(input_json$`ids`)) {
        stopifnot(is.vector(input_json$`ids`), length(input_json$`ids`) != 0)
        tmp <- sapply(input_json$`ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingInputTable: the required field `ids` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MappingInputTable
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ids` is null
      if (is.null(self$`ids`)) {
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
      # check if the required `ids` is null
      if (is.null(self$`ids`)) {
        invalid_fields["ids"] <- "Non-nullable required field `ids` cannot be null."
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
# MappingInputTable$unlock()
#
## Below is an example to define the print function
# MappingInputTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MappingInputTable$lock()

