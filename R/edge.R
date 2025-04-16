#' Create a new Edge
#'
#' @description
#' Edge Class
#'
#' @docType class
#' @title Edge
#' @description Edge Class
#' @format An \code{R6Class} generator object
#' @field source key value of the source character
#' @field relation the interaction between source and target nodes character [optional]
#' @field target references the key value of the target node object character
#' @field directed true for directed and false for undirected. The edge direction is determined by graph.directed property if not present character [optional]
#' @field label text display character [optional]
#' @field metadata custom data named list(\link{AnyType}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Edge <- R6::R6Class(
  "Edge",
  public = list(
    `source` = NULL,
    `relation` = NULL,
    `target` = NULL,
    `directed` = NULL,
    `label` = NULL,
    `metadata` = NULL,

    #' @description
    #' Initialize a new Edge class.
    #'
    #' @param source key value of the source
    #' @param target references the key value of the target node object
    #' @param relation the interaction between source and target nodes. Default to "linkedTo".
    #' @param directed true for directed and false for undirected. The edge direction is determined by graph.directed property if not present
    #' @param label text display. Default to "".
    #' @param metadata custom data
    #' @param ... Other optional arguments.
    initialize = function(`source`, `target`, `relation` = "linkedTo", `directed` = NULL, `label` = "", `metadata` = NULL, ...) {
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`target`)) {
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!is.null(`relation`)) {
        if (!(is.character(`relation`) && length(`relation`) == 1)) {
          stop(paste("Error! Invalid data for `relation`. Must be a string:", `relation`))
        }
        self$`relation` <- `relation`
      }
      if (!is.null(`directed`)) {
        if (!(is.logical(`directed`) && length(`directed`) == 1)) {
          stop(paste("Error! Invalid data for `directed`. Must be a boolean:", `directed`))
        }
        self$`directed` <- `directed`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`metadata`)) {
        stopifnot(is.vector(`metadata`), length(`metadata`) != 0)
        sapply(`metadata`, function(x) stopifnot(R6::is.R6(x)))
        self$`metadata` <- `metadata`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Edge in JSON format
    toJSON = function() {
      EdgeObject <- list()
      if (!is.null(self$`source`)) {
        EdgeObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`relation`)) {
        EdgeObject[["relation"]] <-
          self$`relation`
      }
      if (!is.null(self$`target`)) {
        EdgeObject[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`directed`)) {
        EdgeObject[["directed"]] <-
          self$`directed`
      }
      if (!is.null(self$`label`)) {
        EdgeObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`metadata`)) {
        EdgeObject[["metadata"]] <-
          lapply(self$`metadata`, function(x) x$toJSON())
      }
      EdgeObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Edge
    #'
    #' @param input_json the JSON input
    #' @return the instance of Edge
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`relation`)) {
        self$`relation` <- this_object$`relation`
      }
      if (!is.null(this_object$`target`)) {
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`directed`)) {
        self$`directed` <- this_object$`directed`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- ApiClient$new()$deserializeObj(this_object$`metadata`, "map(AnyType)", loadNamespace("metexplore3api?"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Edge in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`source`)) {
          sprintf(
          '"source":
            "%s"
                    ',
          self$`source`
          )
        },
        if (!is.null(self$`relation`)) {
          sprintf(
          '"relation":
            "%s"
                    ',
          self$`relation`
          )
        },
        if (!is.null(self$`target`)) {
          sprintf(
          '"target":
            "%s"
                    ',
          self$`target`
          )
        },
        if (!is.null(self$`directed`)) {
          sprintf(
          '"directed":
            %s
                    ',
          tolower(self$`directed`)
          )
        },
        if (!is.null(self$`label`)) {
          sprintf(
          '"label":
            "%s"
                    ',
          self$`label`
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
          %s
',
          jsonlite::toJSON(lapply(self$`metadata`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Edge
    #'
    #' @param input_json the JSON input
    #' @return the instance of Edge
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`relation` <- this_object$`relation`
      self$`target` <- this_object$`target`
      self$`directed` <- this_object$`directed`
      self$`label` <- this_object$`label`
      self$`metadata` <- ApiClient$new()$deserializeObj(this_object$`metadata`, "map(AnyType)", loadNamespace("metexplore3api?"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Edge and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Edge: the required field `source` is missing."))
      }
      # check the required field `target`
      if (!is.null(input_json$`target`)) {
        if (!(is.character(input_json$`target`) && length(input_json$`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", input_json$`target`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Edge: the required field `target` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Edge
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `target` is null
      if (is.null(self$`target`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `target` is null
      if (is.null(self$`target`)) {
        invalid_fields["target"] <- "Non-nullable required field `target` cannot be null."
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
# Edge$unlock()
#
## Below is an example to define the print function
# Edge$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Edge$lock()

