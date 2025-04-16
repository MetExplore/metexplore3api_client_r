#' Create a new MappingOutputEntities
#'
#' @description
#' MappingOutputEntities Class
#'
#' @docType class
#' @title MappingOutputEntities
#' @description MappingOutputEntities Class
#' @format An \code{R6Class} generator object
#' @field metabolites Map of mapped metabolite identifiers with mapping values object
#' @field reactions Map of mapped reaction identifiers with mapping values object
#' @field pathways Map of mapped pathway identifiers with mapping values object
#' @field genes Map of mapped gene identifiers with mapping values object
#' @field gene_products Map of mapped gene product identifiers with mapping values object
#' @field enzymes Map of mapped enzyme identifiers with mapping values object
#' @field compartments Map of mapped compartment identifiers with mapping values object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MappingOutputEntities <- R6::R6Class(
  "MappingOutputEntities",
  public = list(
    `metabolites` = NULL,
    `reactions` = NULL,
    `pathways` = NULL,
    `genes` = NULL,
    `gene_products` = NULL,
    `enzymes` = NULL,
    `compartments` = NULL,

    #' @description
    #' Initialize a new MappingOutputEntities class.
    #'
    #' @param metabolites Map of mapped metabolite identifiers with mapping values
    #' @param reactions Map of mapped reaction identifiers with mapping values
    #' @param pathways Map of mapped pathway identifiers with mapping values
    #' @param genes Map of mapped gene identifiers with mapping values
    #' @param gene_products Map of mapped gene product identifiers with mapping values
    #' @param enzymes Map of mapped enzyme identifiers with mapping values
    #' @param compartments Map of mapped compartment identifiers with mapping values
    #' @param ... Other optional arguments.
    initialize = function(`metabolites`, `reactions`, `pathways`, `genes`, `gene_products`, `enzymes`, `compartments`, ...) {
      if (!missing(`metabolites`)) {
        self$`metabolites` <- `metabolites`
      }
      if (!missing(`reactions`)) {
        self$`reactions` <- `reactions`
      }
      if (!missing(`pathways`)) {
        self$`pathways` <- `pathways`
      }
      if (!missing(`genes`)) {
        self$`genes` <- `genes`
      }
      if (!missing(`gene_products`)) {
        self$`gene_products` <- `gene_products`
      }
      if (!missing(`enzymes`)) {
        self$`enzymes` <- `enzymes`
      }
      if (!missing(`compartments`)) {
        self$`compartments` <- `compartments`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return MappingOutputEntities in JSON format
    toJSON = function() {
      MappingOutputEntitiesObject <- list()
      if (!is.null(self$`metabolites`)) {
        MappingOutputEntitiesObject[["metabolites"]] <-
          self$`metabolites`
      }
      if (!is.null(self$`reactions`)) {
        MappingOutputEntitiesObject[["reactions"]] <-
          self$`reactions`
      }
      if (!is.null(self$`pathways`)) {
        MappingOutputEntitiesObject[["pathways"]] <-
          self$`pathways`
      }
      if (!is.null(self$`genes`)) {
        MappingOutputEntitiesObject[["genes"]] <-
          self$`genes`
      }
      if (!is.null(self$`gene_products`)) {
        MappingOutputEntitiesObject[["gene_products"]] <-
          self$`gene_products`
      }
      if (!is.null(self$`enzymes`)) {
        MappingOutputEntitiesObject[["enzymes"]] <-
          self$`enzymes`
      }
      if (!is.null(self$`compartments`)) {
        MappingOutputEntitiesObject[["compartments"]] <-
          self$`compartments`
      }
      MappingOutputEntitiesObject
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingOutputEntities
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingOutputEntities
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metabolites`)) {
        self$`metabolites` <- this_object$`metabolites`
      }
      if (!is.null(this_object$`reactions`)) {
        self$`reactions` <- this_object$`reactions`
      }
      if (!is.null(this_object$`pathways`)) {
        self$`pathways` <- this_object$`pathways`
      }
      if (!is.null(this_object$`genes`)) {
        self$`genes` <- this_object$`genes`
      }
      if (!is.null(this_object$`gene_products`)) {
        self$`gene_products` <- this_object$`gene_products`
      }
      if (!is.null(this_object$`enzymes`)) {
        self$`enzymes` <- this_object$`enzymes`
      }
      if (!is.null(this_object$`compartments`)) {
        self$`compartments` <- this_object$`compartments`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return MappingOutputEntities in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`metabolites`)) {
          sprintf(
          '"metabolites":
            "%s"
                    ',
          self$`metabolites`
          )
        },
        if (!is.null(self$`reactions`)) {
          sprintf(
          '"reactions":
            "%s"
                    ',
          self$`reactions`
          )
        },
        if (!is.null(self$`pathways`)) {
          sprintf(
          '"pathways":
            "%s"
                    ',
          self$`pathways`
          )
        },
        if (!is.null(self$`genes`)) {
          sprintf(
          '"genes":
            "%s"
                    ',
          self$`genes`
          )
        },
        if (!is.null(self$`gene_products`)) {
          sprintf(
          '"gene_products":
            "%s"
                    ',
          self$`gene_products`
          )
        },
        if (!is.null(self$`enzymes`)) {
          sprintf(
          '"enzymes":
            "%s"
                    ',
          self$`enzymes`
          )
        },
        if (!is.null(self$`compartments`)) {
          sprintf(
          '"compartments":
            "%s"
                    ',
          self$`compartments`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of MappingOutputEntities
    #'
    #' @param input_json the JSON input
    #' @return the instance of MappingOutputEntities
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metabolites` <- this_object$`metabolites`
      self$`reactions` <- this_object$`reactions`
      self$`pathways` <- this_object$`pathways`
      self$`genes` <- this_object$`genes`
      self$`gene_products` <- this_object$`gene_products`
      self$`enzymes` <- this_object$`enzymes`
      self$`compartments` <- this_object$`compartments`
      self
    },

    #' @description
    #' Validate JSON input with respect to MappingOutputEntities and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `metabolites`
      if (!is.null(input_json$`metabolites`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutputEntities: the required field `metabolites` is missing."))
      }
      # check the required field `reactions`
      if (!is.null(input_json$`reactions`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutputEntities: the required field `reactions` is missing."))
      }
      # check the required field `pathways`
      if (!is.null(input_json$`pathways`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutputEntities: the required field `pathways` is missing."))
      }
      # check the required field `genes`
      if (!is.null(input_json$`genes`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutputEntities: the required field `genes` is missing."))
      }
      # check the required field `gene_products`
      if (!is.null(input_json$`gene_products`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutputEntities: the required field `gene_products` is missing."))
      }
      # check the required field `enzymes`
      if (!is.null(input_json$`enzymes`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutputEntities: the required field `enzymes` is missing."))
      }
      # check the required field `compartments`
      if (!is.null(input_json$`compartments`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MappingOutputEntities: the required field `compartments` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MappingOutputEntities
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `metabolites` is null
      if (is.null(self$`metabolites`)) {
        return(FALSE)
      }

      # check if the required `reactions` is null
      if (is.null(self$`reactions`)) {
        return(FALSE)
      }

      # check if the required `pathways` is null
      if (is.null(self$`pathways`)) {
        return(FALSE)
      }

      # check if the required `genes` is null
      if (is.null(self$`genes`)) {
        return(FALSE)
      }

      # check if the required `gene_products` is null
      if (is.null(self$`gene_products`)) {
        return(FALSE)
      }

      # check if the required `enzymes` is null
      if (is.null(self$`enzymes`)) {
        return(FALSE)
      }

      # check if the required `compartments` is null
      if (is.null(self$`compartments`)) {
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
      # check if the required `metabolites` is null
      if (is.null(self$`metabolites`)) {
        invalid_fields["metabolites"] <- "Non-nullable required field `metabolites` cannot be null."
      }

      # check if the required `reactions` is null
      if (is.null(self$`reactions`)) {
        invalid_fields["reactions"] <- "Non-nullable required field `reactions` cannot be null."
      }

      # check if the required `pathways` is null
      if (is.null(self$`pathways`)) {
        invalid_fields["pathways"] <- "Non-nullable required field `pathways` cannot be null."
      }

      # check if the required `genes` is null
      if (is.null(self$`genes`)) {
        invalid_fields["genes"] <- "Non-nullable required field `genes` cannot be null."
      }

      # check if the required `gene_products` is null
      if (is.null(self$`gene_products`)) {
        invalid_fields["gene_products"] <- "Non-nullable required field `gene_products` cannot be null."
      }

      # check if the required `enzymes` is null
      if (is.null(self$`enzymes`)) {
        invalid_fields["enzymes"] <- "Non-nullable required field `enzymes` cannot be null."
      }

      # check if the required `compartments` is null
      if (is.null(self$`compartments`)) {
        invalid_fields["compartments"] <- "Non-nullable required field `compartments` cannot be null."
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
# MappingOutputEntities$unlock()
#
## Below is an example to define the print function
# MappingOutputEntities$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MappingOutputEntities$lock()

