#' Create a new Enrichment
#'
#' @description
#' Enrichment result
#'
#' @docType class
#' @title Enrichment
#' @description Enrichment Class
#' @format An \code{R6Class} generator object
#' @field label label of the pathway character
#' @field nb_total_metabolites total number of metabolites integer
#' @field nb_mapped_metabolites number of mapped metabolites integer
#' @field nb_total_reactions total number of reactions integer
#' @field nb_mapped_reactions number of mapped reactions integer
#' @field pval_metabolites result of the right-tailed fisher test for metabolites numeric
#' @field bonferroni_pval_metabolites bonferroni correction of the p-value for metabolites numeric
#' @field bh_pval_metabolites Benjamini-Hochberg correction of the p-value for metabolites numeric
#' @field pval_reactions result of the right-tailed fisher test for reactions numeric
#' @field bonferroni_pval_reactions bonferroni correction of the p-value for reactions numeric
#' @field bh_pval_reactions Benjamini-Hochberg correction of the p-value for reactions numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Enrichment <- R6::R6Class(
  "Enrichment",
  public = list(
    `label` = NULL,
    `nb_total_metabolites` = NULL,
    `nb_mapped_metabolites` = NULL,
    `nb_total_reactions` = NULL,
    `nb_mapped_reactions` = NULL,
    `pval_metabolites` = NULL,
    `bonferroni_pval_metabolites` = NULL,
    `bh_pval_metabolites` = NULL,
    `pval_reactions` = NULL,
    `bonferroni_pval_reactions` = NULL,
    `bh_pval_reactions` = NULL,

    #' @description
    #' Initialize a new Enrichment class.
    #'
    #' @param label label of the pathway
    #' @param nb_total_metabolites total number of metabolites
    #' @param nb_mapped_metabolites number of mapped metabolites
    #' @param nb_total_reactions total number of reactions
    #' @param nb_mapped_reactions number of mapped reactions
    #' @param pval_metabolites result of the right-tailed fisher test for metabolites
    #' @param bonferroni_pval_metabolites bonferroni correction of the p-value for metabolites
    #' @param bh_pval_metabolites Benjamini-Hochberg correction of the p-value for metabolites
    #' @param pval_reactions result of the right-tailed fisher test for reactions
    #' @param bonferroni_pval_reactions bonferroni correction of the p-value for reactions
    #' @param bh_pval_reactions Benjamini-Hochberg correction of the p-value for reactions
    #' @param ... Other optional arguments.
    initialize = function(`label`, `nb_total_metabolites`, `nb_mapped_metabolites`, `nb_total_reactions`, `nb_mapped_reactions`, `pval_metabolites`, `bonferroni_pval_metabolites`, `bh_pval_metabolites`, `pval_reactions`, `bonferroni_pval_reactions`, `bh_pval_reactions`, ...) {
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`nb_total_metabolites`)) {
        if (!(is.numeric(`nb_total_metabolites`) && length(`nb_total_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_metabolites`. Must be an integer:", `nb_total_metabolites`))
        }
        self$`nb_total_metabolites` <- `nb_total_metabolites`
      }
      if (!missing(`nb_mapped_metabolites`)) {
        if (!(is.numeric(`nb_mapped_metabolites`) && length(`nb_mapped_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_metabolites`. Must be an integer:", `nb_mapped_metabolites`))
        }
        self$`nb_mapped_metabolites` <- `nb_mapped_metabolites`
      }
      if (!missing(`nb_total_reactions`)) {
        if (!(is.numeric(`nb_total_reactions`) && length(`nb_total_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_reactions`. Must be an integer:", `nb_total_reactions`))
        }
        self$`nb_total_reactions` <- `nb_total_reactions`
      }
      if (!missing(`nb_mapped_reactions`)) {
        if (!(is.numeric(`nb_mapped_reactions`) && length(`nb_mapped_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_reactions`. Must be an integer:", `nb_mapped_reactions`))
        }
        self$`nb_mapped_reactions` <- `nb_mapped_reactions`
      }
      if (!missing(`pval_metabolites`)) {
        self$`pval_metabolites` <- `pval_metabolites`
      }
      if (!missing(`bonferroni_pval_metabolites`)) {
        self$`bonferroni_pval_metabolites` <- `bonferroni_pval_metabolites`
      }
      if (!missing(`bh_pval_metabolites`)) {
        self$`bh_pval_metabolites` <- `bh_pval_metabolites`
      }
      if (!missing(`pval_reactions`)) {
        self$`pval_reactions` <- `pval_reactions`
      }
      if (!missing(`bonferroni_pval_reactions`)) {
        self$`bonferroni_pval_reactions` <- `bonferroni_pval_reactions`
      }
      if (!missing(`bh_pval_reactions`)) {
        self$`bh_pval_reactions` <- `bh_pval_reactions`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Enrichment in JSON format
    toJSON = function() {
      EnrichmentObject <- list()
      if (!is.null(self$`label`)) {
        EnrichmentObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`nb_total_metabolites`)) {
        EnrichmentObject[["nb_total_metabolites"]] <-
          self$`nb_total_metabolites`
      }
      if (!is.null(self$`nb_mapped_metabolites`)) {
        EnrichmentObject[["nb_mapped_metabolites"]] <-
          self$`nb_mapped_metabolites`
      }
      if (!is.null(self$`nb_total_reactions`)) {
        EnrichmentObject[["nb_total_reactions"]] <-
          self$`nb_total_reactions`
      }
      if (!is.null(self$`nb_mapped_reactions`)) {
        EnrichmentObject[["nb_mapped_reactions"]] <-
          self$`nb_mapped_reactions`
      }
      if (!is.null(self$`pval_metabolites`)) {
        EnrichmentObject[["pval_metabolites"]] <-
          self$`pval_metabolites`
      }
      if (!is.null(self$`bonferroni_pval_metabolites`)) {
        EnrichmentObject[["bonferroni_pval_metabolites"]] <-
          self$`bonferroni_pval_metabolites`
      }
      if (!is.null(self$`bh_pval_metabolites`)) {
        EnrichmentObject[["bh_pval_metabolites"]] <-
          self$`bh_pval_metabolites`
      }
      if (!is.null(self$`pval_reactions`)) {
        EnrichmentObject[["pval_reactions"]] <-
          self$`pval_reactions`
      }
      if (!is.null(self$`bonferroni_pval_reactions`)) {
        EnrichmentObject[["bonferroni_pval_reactions"]] <-
          self$`bonferroni_pval_reactions`
      }
      if (!is.null(self$`bh_pval_reactions`)) {
        EnrichmentObject[["bh_pval_reactions"]] <-
          self$`bh_pval_reactions`
      }
      EnrichmentObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Enrichment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Enrichment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`nb_total_metabolites`)) {
        self$`nb_total_metabolites` <- this_object$`nb_total_metabolites`
      }
      if (!is.null(this_object$`nb_mapped_metabolites`)) {
        self$`nb_mapped_metabolites` <- this_object$`nb_mapped_metabolites`
      }
      if (!is.null(this_object$`nb_total_reactions`)) {
        self$`nb_total_reactions` <- this_object$`nb_total_reactions`
      }
      if (!is.null(this_object$`nb_mapped_reactions`)) {
        self$`nb_mapped_reactions` <- this_object$`nb_mapped_reactions`
      }
      if (!is.null(this_object$`pval_metabolites`)) {
        self$`pval_metabolites` <- this_object$`pval_metabolites`
      }
      if (!is.null(this_object$`bonferroni_pval_metabolites`)) {
        self$`bonferroni_pval_metabolites` <- this_object$`bonferroni_pval_metabolites`
      }
      if (!is.null(this_object$`bh_pval_metabolites`)) {
        self$`bh_pval_metabolites` <- this_object$`bh_pval_metabolites`
      }
      if (!is.null(this_object$`pval_reactions`)) {
        self$`pval_reactions` <- this_object$`pval_reactions`
      }
      if (!is.null(this_object$`bonferroni_pval_reactions`)) {
        self$`bonferroni_pval_reactions` <- this_object$`bonferroni_pval_reactions`
      }
      if (!is.null(this_object$`bh_pval_reactions`)) {
        self$`bh_pval_reactions` <- this_object$`bh_pval_reactions`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Enrichment in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`label`)) {
          sprintf(
          '"label":
            "%s"
                    ',
          self$`label`
          )
        },
        if (!is.null(self$`nb_total_metabolites`)) {
          sprintf(
          '"nb_total_metabolites":
            %d
                    ',
          self$`nb_total_metabolites`
          )
        },
        if (!is.null(self$`nb_mapped_metabolites`)) {
          sprintf(
          '"nb_mapped_metabolites":
            %d
                    ',
          self$`nb_mapped_metabolites`
          )
        },
        if (!is.null(self$`nb_total_reactions`)) {
          sprintf(
          '"nb_total_reactions":
            %d
                    ',
          self$`nb_total_reactions`
          )
        },
        if (!is.null(self$`nb_mapped_reactions`)) {
          sprintf(
          '"nb_mapped_reactions":
            %d
                    ',
          self$`nb_mapped_reactions`
          )
        },
        if (!is.null(self$`pval_metabolites`)) {
          sprintf(
          '"pval_metabolites":
            %d
                    ',
          self$`pval_metabolites`
          )
        },
        if (!is.null(self$`bonferroni_pval_metabolites`)) {
          sprintf(
          '"bonferroni_pval_metabolites":
            %d
                    ',
          self$`bonferroni_pval_metabolites`
          )
        },
        if (!is.null(self$`bh_pval_metabolites`)) {
          sprintf(
          '"bh_pval_metabolites":
            %d
                    ',
          self$`bh_pval_metabolites`
          )
        },
        if (!is.null(self$`pval_reactions`)) {
          sprintf(
          '"pval_reactions":
            %d
                    ',
          self$`pval_reactions`
          )
        },
        if (!is.null(self$`bonferroni_pval_reactions`)) {
          sprintf(
          '"bonferroni_pval_reactions":
            %d
                    ',
          self$`bonferroni_pval_reactions`
          )
        },
        if (!is.null(self$`bh_pval_reactions`)) {
          sprintf(
          '"bh_pval_reactions":
            %d
                    ',
          self$`bh_pval_reactions`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Enrichment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Enrichment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`label` <- this_object$`label`
      self$`nb_total_metabolites` <- this_object$`nb_total_metabolites`
      self$`nb_mapped_metabolites` <- this_object$`nb_mapped_metabolites`
      self$`nb_total_reactions` <- this_object$`nb_total_reactions`
      self$`nb_mapped_reactions` <- this_object$`nb_mapped_reactions`
      self$`pval_metabolites` <- this_object$`pval_metabolites`
      self$`bonferroni_pval_metabolites` <- this_object$`bonferroni_pval_metabolites`
      self$`bh_pval_metabolites` <- this_object$`bh_pval_metabolites`
      self$`pval_reactions` <- this_object$`pval_reactions`
      self$`bonferroni_pval_reactions` <- this_object$`bonferroni_pval_reactions`
      self$`bh_pval_reactions` <- this_object$`bh_pval_reactions`
      self
    },

    #' @description
    #' Validate JSON input with respect to Enrichment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `label` is missing."))
      }
      # check the required field `nb_total_metabolites`
      if (!is.null(input_json$`nb_total_metabolites`)) {
        if (!(is.numeric(input_json$`nb_total_metabolites`) && length(input_json$`nb_total_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_metabolites`. Must be an integer:", input_json$`nb_total_metabolites`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `nb_total_metabolites` is missing."))
      }
      # check the required field `nb_mapped_metabolites`
      if (!is.null(input_json$`nb_mapped_metabolites`)) {
        if (!(is.numeric(input_json$`nb_mapped_metabolites`) && length(input_json$`nb_mapped_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_metabolites`. Must be an integer:", input_json$`nb_mapped_metabolites`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `nb_mapped_metabolites` is missing."))
      }
      # check the required field `nb_total_reactions`
      if (!is.null(input_json$`nb_total_reactions`)) {
        if (!(is.numeric(input_json$`nb_total_reactions`) && length(input_json$`nb_total_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_reactions`. Must be an integer:", input_json$`nb_total_reactions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `nb_total_reactions` is missing."))
      }
      # check the required field `nb_mapped_reactions`
      if (!is.null(input_json$`nb_mapped_reactions`)) {
        if (!(is.numeric(input_json$`nb_mapped_reactions`) && length(input_json$`nb_mapped_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_reactions`. Must be an integer:", input_json$`nb_mapped_reactions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `nb_mapped_reactions` is missing."))
      }
      # check the required field `pval_metabolites`
      if (!is.null(input_json$`pval_metabolites`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `pval_metabolites` is missing."))
      }
      # check the required field `bonferroni_pval_metabolites`
      if (!is.null(input_json$`bonferroni_pval_metabolites`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `bonferroni_pval_metabolites` is missing."))
      }
      # check the required field `bh_pval_metabolites`
      if (!is.null(input_json$`bh_pval_metabolites`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `bh_pval_metabolites` is missing."))
      }
      # check the required field `pval_reactions`
      if (!is.null(input_json$`pval_reactions`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `pval_reactions` is missing."))
      }
      # check the required field `bonferroni_pval_reactions`
      if (!is.null(input_json$`bonferroni_pval_reactions`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `bonferroni_pval_reactions` is missing."))
      }
      # check the required field `bh_pval_reactions`
      if (!is.null(input_json$`bh_pval_reactions`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `bh_pval_reactions` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Enrichment
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `nb_total_metabolites` is null
      if (is.null(self$`nb_total_metabolites`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_metabolites` is null
      if (is.null(self$`nb_mapped_metabolites`)) {
        return(FALSE)
      }

      # check if the required `nb_total_reactions` is null
      if (is.null(self$`nb_total_reactions`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_reactions` is null
      if (is.null(self$`nb_mapped_reactions`)) {
        return(FALSE)
      }

      # check if the required `pval_metabolites` is null
      if (is.null(self$`pval_metabolites`)) {
        return(FALSE)
      }

      # check if the required `bonferroni_pval_metabolites` is null
      if (is.null(self$`bonferroni_pval_metabolites`)) {
        return(FALSE)
      }

      # check if the required `bh_pval_metabolites` is null
      if (is.null(self$`bh_pval_metabolites`)) {
        return(FALSE)
      }

      # check if the required `pval_reactions` is null
      if (is.null(self$`pval_reactions`)) {
        return(FALSE)
      }

      # check if the required `bonferroni_pval_reactions` is null
      if (is.null(self$`bonferroni_pval_reactions`)) {
        return(FALSE)
      }

      # check if the required `bh_pval_reactions` is null
      if (is.null(self$`bh_pval_reactions`)) {
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
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `nb_total_metabolites` is null
      if (is.null(self$`nb_total_metabolites`)) {
        invalid_fields["nb_total_metabolites"] <- "Non-nullable required field `nb_total_metabolites` cannot be null."
      }

      # check if the required `nb_mapped_metabolites` is null
      if (is.null(self$`nb_mapped_metabolites`)) {
        invalid_fields["nb_mapped_metabolites"] <- "Non-nullable required field `nb_mapped_metabolites` cannot be null."
      }

      # check if the required `nb_total_reactions` is null
      if (is.null(self$`nb_total_reactions`)) {
        invalid_fields["nb_total_reactions"] <- "Non-nullable required field `nb_total_reactions` cannot be null."
      }

      # check if the required `nb_mapped_reactions` is null
      if (is.null(self$`nb_mapped_reactions`)) {
        invalid_fields["nb_mapped_reactions"] <- "Non-nullable required field `nb_mapped_reactions` cannot be null."
      }

      # check if the required `pval_metabolites` is null
      if (is.null(self$`pval_metabolites`)) {
        invalid_fields["pval_metabolites"] <- "Non-nullable required field `pval_metabolites` cannot be null."
      }

      # check if the required `bonferroni_pval_metabolites` is null
      if (is.null(self$`bonferroni_pval_metabolites`)) {
        invalid_fields["bonferroni_pval_metabolites"] <- "Non-nullable required field `bonferroni_pval_metabolites` cannot be null."
      }

      # check if the required `bh_pval_metabolites` is null
      if (is.null(self$`bh_pval_metabolites`)) {
        invalid_fields["bh_pval_metabolites"] <- "Non-nullable required field `bh_pval_metabolites` cannot be null."
      }

      # check if the required `pval_reactions` is null
      if (is.null(self$`pval_reactions`)) {
        invalid_fields["pval_reactions"] <- "Non-nullable required field `pval_reactions` cannot be null."
      }

      # check if the required `bonferroni_pval_reactions` is null
      if (is.null(self$`bonferroni_pval_reactions`)) {
        invalid_fields["bonferroni_pval_reactions"] <- "Non-nullable required field `bonferroni_pval_reactions` cannot be null."
      }

      # check if the required `bh_pval_reactions` is null
      if (is.null(self$`bh_pval_reactions`)) {
        invalid_fields["bh_pval_reactions"] <- "Non-nullable required field `bh_pval_reactions` cannot be null."
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
# Enrichment$unlock()
#
## Below is an example to define the print function
# Enrichment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Enrichment$lock()

