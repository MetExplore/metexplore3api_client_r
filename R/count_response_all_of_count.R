#' Create a new CountResponseAllOfCount
#'
#' @description
#' CountResponseAllOfCount Class
#'
#' @docType class
#' @title CountResponseAllOfCount
#' @description CountResponseAllOfCount Class
#' @format An \code{R6Class} generator object
#' @field pathways The number of pathways in the network integer [optional]
#' @field reactions The number of reactions in the network integer [optional]
#' @field metabolites The number of metabolites in the network integer [optional]
#' @field enzymes The number of enzymes in the network integer [optional]
#' @field proteins The number of proteins in the network integer [optional]
#' @field genes The number of genes in the network integer [optional]
#' @field compartments The number of compartments in the network integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CountResponseAllOfCount <- R6::R6Class(
  "CountResponseAllOfCount",
  public = list(
    `pathways` = NULL,
    `reactions` = NULL,
    `metabolites` = NULL,
    `enzymes` = NULL,
    `proteins` = NULL,
    `genes` = NULL,
    `compartments` = NULL,

    #' @description
    #' Initialize a new CountResponseAllOfCount class.
    #'
    #' @param pathways The number of pathways in the network
    #' @param reactions The number of reactions in the network
    #' @param metabolites The number of metabolites in the network
    #' @param enzymes The number of enzymes in the network
    #' @param proteins The number of proteins in the network
    #' @param genes The number of genes in the network
    #' @param compartments The number of compartments in the network
    #' @param ... Other optional arguments.
    initialize = function(`pathways` = NULL, `reactions` = NULL, `metabolites` = NULL, `enzymes` = NULL, `proteins` = NULL, `genes` = NULL, `compartments` = NULL, ...) {
      if (!is.null(`pathways`)) {
        if (!(is.numeric(`pathways`) && length(`pathways`) == 1)) {
          stop(paste("Error! Invalid data for `pathways`. Must be an integer:", `pathways`))
        }
        self$`pathways` <- `pathways`
      }
      if (!is.null(`reactions`)) {
        if (!(is.numeric(`reactions`) && length(`reactions`) == 1)) {
          stop(paste("Error! Invalid data for `reactions`. Must be an integer:", `reactions`))
        }
        self$`reactions` <- `reactions`
      }
      if (!is.null(`metabolites`)) {
        if (!(is.numeric(`metabolites`) && length(`metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `metabolites`. Must be an integer:", `metabolites`))
        }
        self$`metabolites` <- `metabolites`
      }
      if (!is.null(`enzymes`)) {
        if (!(is.numeric(`enzymes`) && length(`enzymes`) == 1)) {
          stop(paste("Error! Invalid data for `enzymes`. Must be an integer:", `enzymes`))
        }
        self$`enzymes` <- `enzymes`
      }
      if (!is.null(`proteins`)) {
        if (!(is.numeric(`proteins`) && length(`proteins`) == 1)) {
          stop(paste("Error! Invalid data for `proteins`. Must be an integer:", `proteins`))
        }
        self$`proteins` <- `proteins`
      }
      if (!is.null(`genes`)) {
        if (!(is.numeric(`genes`) && length(`genes`) == 1)) {
          stop(paste("Error! Invalid data for `genes`. Must be an integer:", `genes`))
        }
        self$`genes` <- `genes`
      }
      if (!is.null(`compartments`)) {
        if (!(is.numeric(`compartments`) && length(`compartments`) == 1)) {
          stop(paste("Error! Invalid data for `compartments`. Must be an integer:", `compartments`))
        }
        self$`compartments` <- `compartments`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return CountResponseAllOfCount in JSON format
    toJSON = function() {
      CountResponseAllOfCountObject <- list()
      if (!is.null(self$`pathways`)) {
        CountResponseAllOfCountObject[["pathways"]] <-
          self$`pathways`
      }
      if (!is.null(self$`reactions`)) {
        CountResponseAllOfCountObject[["reactions"]] <-
          self$`reactions`
      }
      if (!is.null(self$`metabolites`)) {
        CountResponseAllOfCountObject[["metabolites"]] <-
          self$`metabolites`
      }
      if (!is.null(self$`enzymes`)) {
        CountResponseAllOfCountObject[["enzymes"]] <-
          self$`enzymes`
      }
      if (!is.null(self$`proteins`)) {
        CountResponseAllOfCountObject[["proteins"]] <-
          self$`proteins`
      }
      if (!is.null(self$`genes`)) {
        CountResponseAllOfCountObject[["genes"]] <-
          self$`genes`
      }
      if (!is.null(self$`compartments`)) {
        CountResponseAllOfCountObject[["compartments"]] <-
          self$`compartments`
      }
      CountResponseAllOfCountObject
    },

    #' @description
    #' Deserialize JSON string into an instance of CountResponseAllOfCount
    #'
    #' @param input_json the JSON input
    #' @return the instance of CountResponseAllOfCount
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pathways`)) {
        self$`pathways` <- this_object$`pathways`
      }
      if (!is.null(this_object$`reactions`)) {
        self$`reactions` <- this_object$`reactions`
      }
      if (!is.null(this_object$`metabolites`)) {
        self$`metabolites` <- this_object$`metabolites`
      }
      if (!is.null(this_object$`enzymes`)) {
        self$`enzymes` <- this_object$`enzymes`
      }
      if (!is.null(this_object$`proteins`)) {
        self$`proteins` <- this_object$`proteins`
      }
      if (!is.null(this_object$`genes`)) {
        self$`genes` <- this_object$`genes`
      }
      if (!is.null(this_object$`compartments`)) {
        self$`compartments` <- this_object$`compartments`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return CountResponseAllOfCount in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`pathways`)) {
          sprintf(
          '"pathways":
            %d
                    ',
          self$`pathways`
          )
        },
        if (!is.null(self$`reactions`)) {
          sprintf(
          '"reactions":
            %d
                    ',
          self$`reactions`
          )
        },
        if (!is.null(self$`metabolites`)) {
          sprintf(
          '"metabolites":
            %d
                    ',
          self$`metabolites`
          )
        },
        if (!is.null(self$`enzymes`)) {
          sprintf(
          '"enzymes":
            %d
                    ',
          self$`enzymes`
          )
        },
        if (!is.null(self$`proteins`)) {
          sprintf(
          '"proteins":
            %d
                    ',
          self$`proteins`
          )
        },
        if (!is.null(self$`genes`)) {
          sprintf(
          '"genes":
            %d
                    ',
          self$`genes`
          )
        },
        if (!is.null(self$`compartments`)) {
          sprintf(
          '"compartments":
            %d
                    ',
          self$`compartments`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of CountResponseAllOfCount
    #'
    #' @param input_json the JSON input
    #' @return the instance of CountResponseAllOfCount
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pathways` <- this_object$`pathways`
      self$`reactions` <- this_object$`reactions`
      self$`metabolites` <- this_object$`metabolites`
      self$`enzymes` <- this_object$`enzymes`
      self$`proteins` <- this_object$`proteins`
      self$`genes` <- this_object$`genes`
      self$`compartments` <- this_object$`compartments`
      self
    },

    #' @description
    #' Validate JSON input with respect to CountResponseAllOfCount and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CountResponseAllOfCount
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
# CountResponseAllOfCount$unlock()
#
## Below is an example to define the print function
# CountResponseAllOfCount$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CountResponseAllOfCount$lock()

