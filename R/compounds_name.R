#' Create a new CompoundsName
#'
#' @description
#' list of compounds names to convert
#'
#' @docType class
#' @title CompoundsName
#' @description CompoundsName Class
#' @format An \code{R6Class} generator object
#' @field queryList list of compounds input separated by a semi colon list(character) [optional]
#' @field inputType type of the input character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompoundsName <- R6::R6Class(
  "CompoundsName",
  public = list(
    `queryList` = NULL,
    `inputType` = NULL,

    #' @description
    #' Initialize a new CompoundsName class.
    #'
    #' @param queryList list of compounds input separated by a semi colon
    #' @param inputType type of the input
    #' @param ... Other optional arguments.
    initialize = function(`queryList` = NULL, `inputType` = NULL, ...) {
      if (!is.null(`queryList`)) {
        stopifnot(is.vector(`queryList`), length(`queryList`) != 0)
        sapply(`queryList`, function(x) stopifnot(is.character(x)))
        self$`queryList` <- `queryList`
      }
      if (!is.null(`inputType`)) {
        if (!(`inputType` %in% c("name", "hmdb", "pubchem", "chebi", "metlin", "kegg"))) {
          stop(paste("Error! \"", `inputType`, "\" cannot be assigned to `inputType`. Must be \"name\", \"hmdb\", \"pubchem\", \"chebi\", \"metlin\", \"kegg\".", sep = ""))
        }
        if (!(is.character(`inputType`) && length(`inputType`) == 1)) {
          stop(paste("Error! Invalid data for `inputType`. Must be a string:", `inputType`))
        }
        self$`inputType` <- `inputType`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return CompoundsName in JSON format
    toJSON = function() {
      CompoundsNameObject <- list()
      if (!is.null(self$`queryList`)) {
        CompoundsNameObject[["queryList"]] <-
          self$`queryList`
      }
      if (!is.null(self$`inputType`)) {
        CompoundsNameObject[["inputType"]] <-
          self$`inputType`
      }
      CompoundsNameObject
    },

    #' @description
    #' Deserialize JSON string into an instance of CompoundsName
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundsName
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`queryList`)) {
        self$`queryList` <- ApiClient$new()$deserializeObj(this_object$`queryList`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`inputType`)) {
        if (!is.null(this_object$`inputType`) && !(this_object$`inputType` %in% c("name", "hmdb", "pubchem", "chebi", "metlin", "kegg"))) {
          stop(paste("Error! \"", this_object$`inputType`, "\" cannot be assigned to `inputType`. Must be \"name\", \"hmdb\", \"pubchem\", \"chebi\", \"metlin\", \"kegg\".", sep = ""))
        }
        self$`inputType` <- this_object$`inputType`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return CompoundsName in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`queryList`)) {
          sprintf(
          '"queryList":
             [%s]
          ',
          paste(unlist(lapply(self$`queryList`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`inputType`)) {
          sprintf(
          '"inputType":
            "%s"
                    ',
          self$`inputType`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompoundsName
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompoundsName
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`queryList` <- ApiClient$new()$deserializeObj(this_object$`queryList`, "array[character]", loadNamespace("metexplore3api"))
      if (!is.null(this_object$`inputType`) && !(this_object$`inputType` %in% c("name", "hmdb", "pubchem", "chebi", "metlin", "kegg"))) {
        stop(paste("Error! \"", this_object$`inputType`, "\" cannot be assigned to `inputType`. Must be \"name\", \"hmdb\", \"pubchem\", \"chebi\", \"metlin\", \"kegg\".", sep = ""))
      }
      self$`inputType` <- this_object$`inputType`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompoundsName and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompoundsName
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# CompoundsName$unlock()
#
## Below is an example to define the print function
# CompoundsName$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompoundsName$lock()

