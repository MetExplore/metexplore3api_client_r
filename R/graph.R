#' Create a new Graph
#'
#' @description
#' Graph Class
#'
#' @docType class
#' @title Graph
#' @description Graph Class
#' @format An \code{R6Class} generator object
#' @field directed the graph mode (e.g. directed or undirected). character [optional]
#' @field type classification for the graph character [optional]
#' @field label text display character [optional]
#' @field metadata  named list(\link{AnyType}) [optional]
#' @field nodes nodes of the graph named list(\link{Node})
#' @field edges edges of the graph list(\link{Edge})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Graph <- R6::R6Class(
  "Graph",
  public = list(
    `directed` = NULL,
    `type` = NULL,
    `label` = NULL,
    `metadata` = NULL,
    `nodes` = NULL,
    `edges` = NULL,

    #' @description
    #' Initialize a new Graph class.
    #'
    #' @param nodes nodes of the graph
    #' @param edges edges of the graph
    #' @param directed the graph mode (e.g. directed or undirected).. Default to TRUE.
    #' @param type classification for the graph. Default to "metabolic graph".
    #' @param label text display. Default to "metabolic network".
    #' @param metadata metadata
    #' @param ... Other optional arguments.
    initialize = function(`nodes`, `edges`, `directed` = TRUE, `type` = "metabolic graph", `label` = "metabolic network", `metadata` = NULL, ...) {
      if (!missing(`nodes`)) {
        stopifnot(is.vector(`nodes`), length(`nodes`) != 0)
        sapply(`nodes`, function(x) stopifnot(R6::is.R6(x)))
        self$`nodes` <- `nodes`
      }
      if (!missing(`edges`)) {
        stopifnot(is.vector(`edges`), length(`edges`) != 0)
        sapply(`edges`, function(x) stopifnot(R6::is.R6(x)))
        self$`edges` <- `edges`
      }
      if (!is.null(`directed`)) {
        if (!(is.logical(`directed`) && length(`directed`) == 1)) {
          stop(paste("Error! Invalid data for `directed`. Must be a boolean:", `directed`))
        }
        self$`directed` <- `directed`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return Graph in JSON format
    toJSON = function() {
      GraphObject <- list()
      if (!is.null(self$`directed`)) {
        GraphObject[["directed"]] <-
          self$`directed`
      }
      if (!is.null(self$`type`)) {
        GraphObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`label`)) {
        GraphObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`metadata`)) {
        GraphObject[["metadata"]] <-
          lapply(self$`metadata`, function(x) x$toJSON())
      }
      if (!is.null(self$`nodes`)) {
        GraphObject[["nodes"]] <-
          lapply(self$`nodes`, function(x) x$toJSON())
      }
      if (!is.null(self$`edges`)) {
        GraphObject[["edges"]] <-
          lapply(self$`edges`, function(x) x$toJSON())
      }
      GraphObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Graph
    #'
    #' @param input_json the JSON input
    #' @return the instance of Graph
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`directed`)) {
        self$`directed` <- this_object$`directed`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- ApiClient$new()$deserializeObj(this_object$`metadata`, "map(AnyType)", loadNamespace("metexplore3api?"))
      }
      if (!is.null(this_object$`nodes`)) {
        self$`nodes` <- ApiClient$new()$deserializeObj(this_object$`nodes`, "map(Node)", loadNamespace("metexplore3api?"))
      }
      if (!is.null(this_object$`edges`)) {
        self$`edges` <- ApiClient$new()$deserializeObj(this_object$`edges`, "array[Edge]", loadNamespace("metexplore3api?"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Graph in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`directed`)) {
          sprintf(
          '"directed":
            %s
                    ',
          tolower(self$`directed`)
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
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
        },
        if (!is.null(self$`nodes`)) {
          sprintf(
          '"nodes":
          %s
',
          jsonlite::toJSON(lapply(self$`nodes`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`edges`)) {
          sprintf(
          '"edges":
          [%s]
',
          paste(sapply(self$`edges`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Graph
    #'
    #' @param input_json the JSON input
    #' @return the instance of Graph
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`directed` <- this_object$`directed`
      self$`type` <- this_object$`type`
      self$`label` <- this_object$`label`
      self$`metadata` <- ApiClient$new()$deserializeObj(this_object$`metadata`, "map(AnyType)", loadNamespace("metexplore3api?"))
      self$`nodes` <- ApiClient$new()$deserializeObj(this_object$`nodes`, "map(Node)", loadNamespace("metexplore3api?"))
      self$`edges` <- ApiClient$new()$deserializeObj(this_object$`edges`, "array[Edge]", loadNamespace("metexplore3api?"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Graph and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `nodes`
      if (!is.null(input_json$`nodes`)) {
        stopifnot(is.vector(input_json$`nodes`), length(input_json$`nodes`) != 0)
        tmp <- sapply(input_json$`nodes`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Graph: the required field `nodes` is missing."))
      }
      # check the required field `edges`
      if (!is.null(input_json$`edges`)) {
        stopifnot(is.vector(input_json$`edges`), length(input_json$`edges`) != 0)
        tmp <- sapply(input_json$`edges`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Graph: the required field `edges` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Graph
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `nodes` is null
      if (is.null(self$`nodes`)) {
        return(FALSE)
      }

      # check if the required `edges` is null
      if (is.null(self$`edges`)) {
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
      # check if the required `nodes` is null
      if (is.null(self$`nodes`)) {
        invalid_fields["nodes"] <- "Non-nullable required field `nodes` cannot be null."
      }

      # check if the required `edges` is null
      if (is.null(self$`edges`)) {
        invalid_fields["edges"] <- "Non-nullable required field `edges` cannot be null."
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
# Graph$unlock()
#
## Below is an example to define the print function
# Graph$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Graph$lock()

