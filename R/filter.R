#' Create a new Filter
#'
#' @description
#' result filter object
#'
#' @docType class
#' @title Filter
#' @description Filter Class
#' @format An \code{R6Class} generator object
#' @field filtertype type of filter character
#' @field ids array ids of list(integer)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Filter <- R6::R6Class(
  "Filter",
  public = list(
    `filtertype` = NULL,
    `ids` = NULL,

    #' @description
    #' Initialize a new Filter class.
    #'
    #' @param filtertype type of filter
    #' @param ids array ids of
    #' @param ... Other optional arguments.
    initialize = function(`filtertype`, `ids`, ...) {
      if (!missing(`filtertype`)) {
        if (!(`filtertype` %in% c("Compartment2Reaction", "Compartment2Enzyme", "Compartment2Protein", "Compartment2Pathway", "Compartment2Metabolite", "Compartment2Gene", "Gene2Pathway", "Protein2Pathway", "Enzyme2Pathway", "Metabolite2Pathway", "Reaction2Pathway", "Gene2Reaction", "Protein2Reaction", "Enzyme2Reaction", "Metabolite2Reaction", "Pathway2Reaction", "Gene2Metabolite", "Protein2Metabolite", "Enzyme2Metabolite", "Reaction2Metabolite", "Pathway2Metabolite", "Gene2Enzyme", "Protein2Enzyme", "Metabolite2Enzyme", "Reaction2Enzyme", "Pathway2Enzyme", "Gene2Protein", "Enzyme2Protein", "Reaction2Protein", "Metabolite2Protein", "Pathway2Protein", "Metabolite2Gene", "Protein2Gene", "Enzyme2Gene", "Reaction2Gene", "Pathway2Gene", "Protein2Compartment", "Enzyme2Compartment", "Metabolite2Compartment", "Reaction2Compartment", "Pathway2Compartment", "Gene2Compartment"))) {
          stop(paste("Error! \"", `filtertype`, "\" cannot be assigned to `filtertype`. Must be \"Compartment2Reaction\", \"Compartment2Enzyme\", \"Compartment2Protein\", \"Compartment2Pathway\", \"Compartment2Metabolite\", \"Compartment2Gene\", \"Gene2Pathway\", \"Protein2Pathway\", \"Enzyme2Pathway\", \"Metabolite2Pathway\", \"Reaction2Pathway\", \"Gene2Reaction\", \"Protein2Reaction\", \"Enzyme2Reaction\", \"Metabolite2Reaction\", \"Pathway2Reaction\", \"Gene2Metabolite\", \"Protein2Metabolite\", \"Enzyme2Metabolite\", \"Reaction2Metabolite\", \"Pathway2Metabolite\", \"Gene2Enzyme\", \"Protein2Enzyme\", \"Metabolite2Enzyme\", \"Reaction2Enzyme\", \"Pathway2Enzyme\", \"Gene2Protein\", \"Enzyme2Protein\", \"Reaction2Protein\", \"Metabolite2Protein\", \"Pathway2Protein\", \"Metabolite2Gene\", \"Protein2Gene\", \"Enzyme2Gene\", \"Reaction2Gene\", \"Pathway2Gene\", \"Protein2Compartment\", \"Enzyme2Compartment\", \"Metabolite2Compartment\", \"Reaction2Compartment\", \"Pathway2Compartment\", \"Gene2Compartment\".", sep = ""))
        }
        if (!(is.character(`filtertype`) && length(`filtertype`) == 1)) {
          stop(paste("Error! Invalid data for `filtertype`. Must be a string:", `filtertype`))
        }
        self$`filtertype` <- `filtertype`
      }
      if (!missing(`ids`)) {
        stopifnot(is.vector(`ids`), length(`ids`) != 0)
        sapply(`ids`, function(x) stopifnot(is.character(x)))
        self$`ids` <- `ids`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Filter in JSON format
    toJSON = function() {
      FilterObject <- list()
      if (!is.null(self$`filtertype`)) {
        FilterObject[["filtertype"]] <-
          self$`filtertype`
      }
      if (!is.null(self$`ids`)) {
        FilterObject[["ids"]] <-
          self$`ids`
      }
      FilterObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Filter
    #'
    #' @param input_json the JSON input
    #' @return the instance of Filter
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`filtertype`)) {
        if (!is.null(this_object$`filtertype`) && !(this_object$`filtertype` %in% c("Compartment2Reaction", "Compartment2Enzyme", "Compartment2Protein", "Compartment2Pathway", "Compartment2Metabolite", "Compartment2Gene", "Gene2Pathway", "Protein2Pathway", "Enzyme2Pathway", "Metabolite2Pathway", "Reaction2Pathway", "Gene2Reaction", "Protein2Reaction", "Enzyme2Reaction", "Metabolite2Reaction", "Pathway2Reaction", "Gene2Metabolite", "Protein2Metabolite", "Enzyme2Metabolite", "Reaction2Metabolite", "Pathway2Metabolite", "Gene2Enzyme", "Protein2Enzyme", "Metabolite2Enzyme", "Reaction2Enzyme", "Pathway2Enzyme", "Gene2Protein", "Enzyme2Protein", "Reaction2Protein", "Metabolite2Protein", "Pathway2Protein", "Metabolite2Gene", "Protein2Gene", "Enzyme2Gene", "Reaction2Gene", "Pathway2Gene", "Protein2Compartment", "Enzyme2Compartment", "Metabolite2Compartment", "Reaction2Compartment", "Pathway2Compartment", "Gene2Compartment"))) {
          stop(paste("Error! \"", this_object$`filtertype`, "\" cannot be assigned to `filtertype`. Must be \"Compartment2Reaction\", \"Compartment2Enzyme\", \"Compartment2Protein\", \"Compartment2Pathway\", \"Compartment2Metabolite\", \"Compartment2Gene\", \"Gene2Pathway\", \"Protein2Pathway\", \"Enzyme2Pathway\", \"Metabolite2Pathway\", \"Reaction2Pathway\", \"Gene2Reaction\", \"Protein2Reaction\", \"Enzyme2Reaction\", \"Metabolite2Reaction\", \"Pathway2Reaction\", \"Gene2Metabolite\", \"Protein2Metabolite\", \"Enzyme2Metabolite\", \"Reaction2Metabolite\", \"Pathway2Metabolite\", \"Gene2Enzyme\", \"Protein2Enzyme\", \"Metabolite2Enzyme\", \"Reaction2Enzyme\", \"Pathway2Enzyme\", \"Gene2Protein\", \"Enzyme2Protein\", \"Reaction2Protein\", \"Metabolite2Protein\", \"Pathway2Protein\", \"Metabolite2Gene\", \"Protein2Gene\", \"Enzyme2Gene\", \"Reaction2Gene\", \"Pathway2Gene\", \"Protein2Compartment\", \"Enzyme2Compartment\", \"Metabolite2Compartment\", \"Reaction2Compartment\", \"Pathway2Compartment\", \"Gene2Compartment\".", sep = ""))
        }
        self$`filtertype` <- this_object$`filtertype`
      }
      if (!is.null(this_object$`ids`)) {
        self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[integer]", loadNamespace("metexplore3api?"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Filter in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`filtertype`)) {
          sprintf(
          '"filtertype":
            "%s"
                    ',
          self$`filtertype`
          )
        },
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
    },

    #' @description
    #' Deserialize JSON string into an instance of Filter
    #'
    #' @param input_json the JSON input
    #' @return the instance of Filter
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`filtertype`) && !(this_object$`filtertype` %in% c("Compartment2Reaction", "Compartment2Enzyme", "Compartment2Protein", "Compartment2Pathway", "Compartment2Metabolite", "Compartment2Gene", "Gene2Pathway", "Protein2Pathway", "Enzyme2Pathway", "Metabolite2Pathway", "Reaction2Pathway", "Gene2Reaction", "Protein2Reaction", "Enzyme2Reaction", "Metabolite2Reaction", "Pathway2Reaction", "Gene2Metabolite", "Protein2Metabolite", "Enzyme2Metabolite", "Reaction2Metabolite", "Pathway2Metabolite", "Gene2Enzyme", "Protein2Enzyme", "Metabolite2Enzyme", "Reaction2Enzyme", "Pathway2Enzyme", "Gene2Protein", "Enzyme2Protein", "Reaction2Protein", "Metabolite2Protein", "Pathway2Protein", "Metabolite2Gene", "Protein2Gene", "Enzyme2Gene", "Reaction2Gene", "Pathway2Gene", "Protein2Compartment", "Enzyme2Compartment", "Metabolite2Compartment", "Reaction2Compartment", "Pathway2Compartment", "Gene2Compartment"))) {
        stop(paste("Error! \"", this_object$`filtertype`, "\" cannot be assigned to `filtertype`. Must be \"Compartment2Reaction\", \"Compartment2Enzyme\", \"Compartment2Protein\", \"Compartment2Pathway\", \"Compartment2Metabolite\", \"Compartment2Gene\", \"Gene2Pathway\", \"Protein2Pathway\", \"Enzyme2Pathway\", \"Metabolite2Pathway\", \"Reaction2Pathway\", \"Gene2Reaction\", \"Protein2Reaction\", \"Enzyme2Reaction\", \"Metabolite2Reaction\", \"Pathway2Reaction\", \"Gene2Metabolite\", \"Protein2Metabolite\", \"Enzyme2Metabolite\", \"Reaction2Metabolite\", \"Pathway2Metabolite\", \"Gene2Enzyme\", \"Protein2Enzyme\", \"Metabolite2Enzyme\", \"Reaction2Enzyme\", \"Pathway2Enzyme\", \"Gene2Protein\", \"Enzyme2Protein\", \"Reaction2Protein\", \"Metabolite2Protein\", \"Pathway2Protein\", \"Metabolite2Gene\", \"Protein2Gene\", \"Enzyme2Gene\", \"Reaction2Gene\", \"Pathway2Gene\", \"Protein2Compartment\", \"Enzyme2Compartment\", \"Metabolite2Compartment\", \"Reaction2Compartment\", \"Pathway2Compartment\", \"Gene2Compartment\".", sep = ""))
      }
      self$`filtertype` <- this_object$`filtertype`
      self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[integer]", loadNamespace("metexplore3api?"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Filter and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `filtertype`
      if (!is.null(input_json$`filtertype`)) {
        if (!(is.character(input_json$`filtertype`) && length(input_json$`filtertype`) == 1)) {
          stop(paste("Error! Invalid data for `filtertype`. Must be a string:", input_json$`filtertype`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Filter: the required field `filtertype` is missing."))
      }
      # check the required field `ids`
      if (!is.null(input_json$`ids`)) {
        stopifnot(is.vector(input_json$`ids`), length(input_json$`ids`) != 0)
        tmp <- sapply(input_json$`ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Filter: the required field `ids` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Filter
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `filtertype` is null
      if (is.null(self$`filtertype`)) {
        return(FALSE)
      }

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
      # check if the required `filtertype` is null
      if (is.null(self$`filtertype`)) {
        invalid_fields["filtertype"] <- "Non-nullable required field `filtertype` cannot be null."
      }

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
# Filter$unlock()
#
## Below is an example to define the print function
# Filter$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Filter$lock()

