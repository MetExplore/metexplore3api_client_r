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
#' @field nb_total_biodata total number of the mapped biodata (metabolites, genes, ...) integer
#' @field nb_mapped_biodata number of mapped biodata (metabolites, genes, ...) integer
#' @field nb_total_reactions total number of reactions integer
#' @field nb_mapped_reactions number of mapped reactions integer
#' @field pval result of the right-tailed fisher test for the pathway numeric
#' @field bonferroni_pval bonferroni correction of the p-value for the pathway numeric
#' @field bh_pval Benjamini-Hochberg correction of the p-value for the pathway numeric
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
    `nb_total_biodata` = NULL,
    `nb_mapped_biodata` = NULL,
    `nb_total_reactions` = NULL,
    `nb_mapped_reactions` = NULL,
    `pval` = NULL,
    `bonferroni_pval` = NULL,
    `bh_pval` = NULL,
    `pval_reactions` = NULL,
    `bonferroni_pval_reactions` = NULL,
    `bh_pval_reactions` = NULL,

    #' @description
    #' Initialize a new Enrichment class.
    #'
    #' @param label label of the pathway
    #' @param nb_total_biodata total number of the mapped biodata (metabolites, genes, ...)
    #' @param nb_mapped_biodata number of mapped biodata (metabolites, genes, ...)
    #' @param nb_total_reactions total number of reactions
    #' @param nb_mapped_reactions number of mapped reactions
    #' @param pval result of the right-tailed fisher test for the pathway
    #' @param bonferroni_pval bonferroni correction of the p-value for the pathway
    #' @param bh_pval Benjamini-Hochberg correction of the p-value for the pathway
    #' @param pval_reactions result of the right-tailed fisher test for reactions
    #' @param bonferroni_pval_reactions bonferroni correction of the p-value for reactions
    #' @param bh_pval_reactions Benjamini-Hochberg correction of the p-value for reactions
    #' @param ... Other optional arguments.
    initialize = function(`label`, `nb_total_biodata`, `nb_mapped_biodata`, `nb_total_reactions`, `nb_mapped_reactions`, `pval`, `bonferroni_pval`, `bh_pval`, `pval_reactions`, `bonferroni_pval_reactions`, `bh_pval_reactions`, ...) {
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`nb_total_biodata`)) {
        if (!(is.numeric(`nb_total_biodata`) && length(`nb_total_biodata`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_biodata`. Must be an integer:", `nb_total_biodata`))
        }
        self$`nb_total_biodata` <- `nb_total_biodata`
      }
      if (!missing(`nb_mapped_biodata`)) {
        if (!(is.numeric(`nb_mapped_biodata`) && length(`nb_mapped_biodata`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_biodata`. Must be an integer:", `nb_mapped_biodata`))
        }
        self$`nb_mapped_biodata` <- `nb_mapped_biodata`
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
      if (!missing(`pval`)) {
        self$`pval` <- `pval`
      }
      if (!missing(`bonferroni_pval`)) {
        self$`bonferroni_pval` <- `bonferroni_pval`
      }
      if (!missing(`bh_pval`)) {
        self$`bh_pval` <- `bh_pval`
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
      if (!is.null(self$`nb_total_biodata`)) {
        EnrichmentObject[["nb_total_biodata"]] <-
          self$`nb_total_biodata`
      }
      if (!is.null(self$`nb_mapped_biodata`)) {
        EnrichmentObject[["nb_mapped_biodata"]] <-
          self$`nb_mapped_biodata`
      }
      if (!is.null(self$`nb_total_reactions`)) {
        EnrichmentObject[["nb_total_reactions"]] <-
          self$`nb_total_reactions`
      }
      if (!is.null(self$`nb_mapped_reactions`)) {
        EnrichmentObject[["nb_mapped_reactions"]] <-
          self$`nb_mapped_reactions`
      }
      if (!is.null(self$`pval`)) {
        EnrichmentObject[["pval"]] <-
          self$`pval`
      }
      if (!is.null(self$`bonferroni_pval`)) {
        EnrichmentObject[["bonferroni_pval"]] <-
          self$`bonferroni_pval`
      }
      if (!is.null(self$`bh_pval`)) {
        EnrichmentObject[["bh_pval"]] <-
          self$`bh_pval`
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
      if (!is.null(this_object$`nb_total_biodata`)) {
        self$`nb_total_biodata` <- this_object$`nb_total_biodata`
      }
      if (!is.null(this_object$`nb_mapped_biodata`)) {
        self$`nb_mapped_biodata` <- this_object$`nb_mapped_biodata`
      }
      if (!is.null(this_object$`nb_total_reactions`)) {
        self$`nb_total_reactions` <- this_object$`nb_total_reactions`
      }
      if (!is.null(this_object$`nb_mapped_reactions`)) {
        self$`nb_mapped_reactions` <- this_object$`nb_mapped_reactions`
      }
      if (!is.null(this_object$`pval`)) {
        self$`pval` <- this_object$`pval`
      }
      if (!is.null(this_object$`bonferroni_pval`)) {
        self$`bonferroni_pval` <- this_object$`bonferroni_pval`
      }
      if (!is.null(this_object$`bh_pval`)) {
        self$`bh_pval` <- this_object$`bh_pval`
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
        if (!is.null(self$`nb_total_biodata`)) {
          sprintf(
          '"nb_total_biodata":
            %d
                    ',
          self$`nb_total_biodata`
          )
        },
        if (!is.null(self$`nb_mapped_biodata`)) {
          sprintf(
          '"nb_mapped_biodata":
            %d
                    ',
          self$`nb_mapped_biodata`
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
        if (!is.null(self$`pval`)) {
          sprintf(
          '"pval":
            %d
                    ',
          self$`pval`
          )
        },
        if (!is.null(self$`bonferroni_pval`)) {
          sprintf(
          '"bonferroni_pval":
            %d
                    ',
          self$`bonferroni_pval`
          )
        },
        if (!is.null(self$`bh_pval`)) {
          sprintf(
          '"bh_pval":
            %d
                    ',
          self$`bh_pval`
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
      self$`nb_total_biodata` <- this_object$`nb_total_biodata`
      self$`nb_mapped_biodata` <- this_object$`nb_mapped_biodata`
      self$`nb_total_reactions` <- this_object$`nb_total_reactions`
      self$`nb_mapped_reactions` <- this_object$`nb_mapped_reactions`
      self$`pval` <- this_object$`pval`
      self$`bonferroni_pval` <- this_object$`bonferroni_pval`
      self$`bh_pval` <- this_object$`bh_pval`
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
      # check the required field `nb_total_biodata`
      if (!is.null(input_json$`nb_total_biodata`)) {
        if (!(is.numeric(input_json$`nb_total_biodata`) && length(input_json$`nb_total_biodata`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_biodata`. Must be an integer:", input_json$`nb_total_biodata`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `nb_total_biodata` is missing."))
      }
      # check the required field `nb_mapped_biodata`
      if (!is.null(input_json$`nb_mapped_biodata`)) {
        if (!(is.numeric(input_json$`nb_mapped_biodata`) && length(input_json$`nb_mapped_biodata`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_biodata`. Must be an integer:", input_json$`nb_mapped_biodata`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `nb_mapped_biodata` is missing."))
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
      # check the required field `pval`
      if (!is.null(input_json$`pval`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `pval` is missing."))
      }
      # check the required field `bonferroni_pval`
      if (!is.null(input_json$`bonferroni_pval`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `bonferroni_pval` is missing."))
      }
      # check the required field `bh_pval`
      if (!is.null(input_json$`bh_pval`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Enrichment: the required field `bh_pval` is missing."))
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

      # check if the required `nb_total_biodata` is null
      if (is.null(self$`nb_total_biodata`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_biodata` is null
      if (is.null(self$`nb_mapped_biodata`)) {
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

      # check if the required `pval` is null
      if (is.null(self$`pval`)) {
        return(FALSE)
      }

      # check if the required `bonferroni_pval` is null
      if (is.null(self$`bonferroni_pval`)) {
        return(FALSE)
      }

      # check if the required `bh_pval` is null
      if (is.null(self$`bh_pval`)) {
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

      # check if the required `nb_total_biodata` is null
      if (is.null(self$`nb_total_biodata`)) {
        invalid_fields["nb_total_biodata"] <- "Non-nullable required field `nb_total_biodata` cannot be null."
      }

      # check if the required `nb_mapped_biodata` is null
      if (is.null(self$`nb_mapped_biodata`)) {
        invalid_fields["nb_mapped_biodata"] <- "Non-nullable required field `nb_mapped_biodata` cannot be null."
      }

      # check if the required `nb_total_reactions` is null
      if (is.null(self$`nb_total_reactions`)) {
        invalid_fields["nb_total_reactions"] <- "Non-nullable required field `nb_total_reactions` cannot be null."
      }

      # check if the required `nb_mapped_reactions` is null
      if (is.null(self$`nb_mapped_reactions`)) {
        invalid_fields["nb_mapped_reactions"] <- "Non-nullable required field `nb_mapped_reactions` cannot be null."
      }

      # check if the required `pval` is null
      if (is.null(self$`pval`)) {
        invalid_fields["pval"] <- "Non-nullable required field `pval` cannot be null."
      }

      # check if the required `bonferroni_pval` is null
      if (is.null(self$`bonferroni_pval`)) {
        invalid_fields["bonferroni_pval"] <- "Non-nullable required field `bonferroni_pval` cannot be null."
      }

      # check if the required `bh_pval` is null
      if (is.null(self$`bh_pval`)) {
        invalid_fields["bh_pval"] <- "Non-nullable required field `bh_pval` cannot be null."
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

