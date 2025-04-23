#' Create a new StatisticsMapping
#'
#' @description
#' Statistics Mapping
#'
#' @docType class
#' @title StatisticsMapping
#' @description StatisticsMapping Class
#' @format An \code{R6Class} generator object
#' @field nb_queries total number of queries in the mapping integer
#' @field nb_mapped_queries number of mapped queries integer
#' @field nb_mapped_pathways number of mapped pathways integer
#' @field nb_total_pathways total number of pathways integer
#' @field nb_mapped_reactions number of mapped reactions integer
#' @field nb_total_reactions total number of reactions integer
#' @field nb_mapped_metabolites number of mapped metabolites integer
#' @field nb_total_metabolites total number of metabolites integer
#' @field nb_mapped_genes number of mapped metabolites integer
#' @field nb_total_genes total number of genes integer
#' @field nb_mapped_gene_products number of mapped gene_products integer
#' @field nb_total_gene_products total number of gene_products integer
#' @field nb_mapped_enzymes number of mapped enzymes integer
#' @field nb_total_enzymes total number of enzymes integer
#' @field nb_mapped_compartments number of mapped compartments integer
#' @field nb_total_compartments total number of compartments integer
#' @field enrichment Object that maps strings (the keys) to Enrichment objects (the values) named list(\link{Enrichment})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StatisticsMapping <- R6::R6Class(
  "StatisticsMapping",
  public = list(
    `nb_queries` = NULL,
    `nb_mapped_queries` = NULL,
    `nb_mapped_pathways` = NULL,
    `nb_total_pathways` = NULL,
    `nb_mapped_reactions` = NULL,
    `nb_total_reactions` = NULL,
    `nb_mapped_metabolites` = NULL,
    `nb_total_metabolites` = NULL,
    `nb_mapped_genes` = NULL,
    `nb_total_genes` = NULL,
    `nb_mapped_gene_products` = NULL,
    `nb_total_gene_products` = NULL,
    `nb_mapped_enzymes` = NULL,
    `nb_total_enzymes` = NULL,
    `nb_mapped_compartments` = NULL,
    `nb_total_compartments` = NULL,
    `enrichment` = NULL,

    #' @description
    #' Initialize a new StatisticsMapping class.
    #'
    #' @param nb_queries total number of queries in the mapping
    #' @param nb_mapped_queries number of mapped queries
    #' @param nb_mapped_pathways number of mapped pathways
    #' @param nb_total_pathways total number of pathways
    #' @param nb_mapped_reactions number of mapped reactions
    #' @param nb_total_reactions total number of reactions
    #' @param nb_mapped_metabolites number of mapped metabolites
    #' @param nb_total_metabolites total number of metabolites
    #' @param nb_mapped_genes number of mapped metabolites
    #' @param nb_total_genes total number of genes
    #' @param nb_mapped_gene_products number of mapped gene_products
    #' @param nb_total_gene_products total number of gene_products
    #' @param nb_mapped_enzymes number of mapped enzymes
    #' @param nb_total_enzymes total number of enzymes
    #' @param nb_mapped_compartments number of mapped compartments
    #' @param nb_total_compartments total number of compartments
    #' @param enrichment Object that maps strings (the keys) to Enrichment objects (the values)
    #' @param ... Other optional arguments.
    initialize = function(`nb_queries`, `nb_mapped_queries`, `nb_mapped_pathways`, `nb_total_pathways`, `nb_mapped_reactions`, `nb_total_reactions`, `nb_mapped_metabolites`, `nb_total_metabolites`, `nb_mapped_genes`, `nb_total_genes`, `nb_mapped_gene_products`, `nb_total_gene_products`, `nb_mapped_enzymes`, `nb_total_enzymes`, `nb_mapped_compartments`, `nb_total_compartments`, `enrichment`, ...) {
      if (!missing(`nb_queries`)) {
        if (!(is.numeric(`nb_queries`) && length(`nb_queries`) == 1)) {
          stop(paste("Error! Invalid data for `nb_queries`. Must be an integer:", `nb_queries`))
        }
        self$`nb_queries` <- `nb_queries`
      }
      if (!missing(`nb_mapped_queries`)) {
        if (!(is.numeric(`nb_mapped_queries`) && length(`nb_mapped_queries`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_queries`. Must be an integer:", `nb_mapped_queries`))
        }
        self$`nb_mapped_queries` <- `nb_mapped_queries`
      }
      if (!missing(`nb_mapped_pathways`)) {
        if (!(is.numeric(`nb_mapped_pathways`) && length(`nb_mapped_pathways`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_pathways`. Must be an integer:", `nb_mapped_pathways`))
        }
        self$`nb_mapped_pathways` <- `nb_mapped_pathways`
      }
      if (!missing(`nb_total_pathways`)) {
        if (!(is.numeric(`nb_total_pathways`) && length(`nb_total_pathways`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_pathways`. Must be an integer:", `nb_total_pathways`))
        }
        self$`nb_total_pathways` <- `nb_total_pathways`
      }
      if (!missing(`nb_mapped_reactions`)) {
        if (!(is.numeric(`nb_mapped_reactions`) && length(`nb_mapped_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_reactions`. Must be an integer:", `nb_mapped_reactions`))
        }
        self$`nb_mapped_reactions` <- `nb_mapped_reactions`
      }
      if (!missing(`nb_total_reactions`)) {
        if (!(is.numeric(`nb_total_reactions`) && length(`nb_total_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_reactions`. Must be an integer:", `nb_total_reactions`))
        }
        self$`nb_total_reactions` <- `nb_total_reactions`
      }
      if (!missing(`nb_mapped_metabolites`)) {
        if (!(is.numeric(`nb_mapped_metabolites`) && length(`nb_mapped_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_metabolites`. Must be an integer:", `nb_mapped_metabolites`))
        }
        self$`nb_mapped_metabolites` <- `nb_mapped_metabolites`
      }
      if (!missing(`nb_total_metabolites`)) {
        if (!(is.numeric(`nb_total_metabolites`) && length(`nb_total_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_metabolites`. Must be an integer:", `nb_total_metabolites`))
        }
        self$`nb_total_metabolites` <- `nb_total_metabolites`
      }
      if (!missing(`nb_mapped_genes`)) {
        if (!(is.numeric(`nb_mapped_genes`) && length(`nb_mapped_genes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_genes`. Must be an integer:", `nb_mapped_genes`))
        }
        self$`nb_mapped_genes` <- `nb_mapped_genes`
      }
      if (!missing(`nb_total_genes`)) {
        if (!(is.numeric(`nb_total_genes`) && length(`nb_total_genes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_genes`. Must be an integer:", `nb_total_genes`))
        }
        self$`nb_total_genes` <- `nb_total_genes`
      }
      if (!missing(`nb_mapped_gene_products`)) {
        if (!(is.numeric(`nb_mapped_gene_products`) && length(`nb_mapped_gene_products`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_gene_products`. Must be an integer:", `nb_mapped_gene_products`))
        }
        self$`nb_mapped_gene_products` <- `nb_mapped_gene_products`
      }
      if (!missing(`nb_total_gene_products`)) {
        if (!(is.numeric(`nb_total_gene_products`) && length(`nb_total_gene_products`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_gene_products`. Must be an integer:", `nb_total_gene_products`))
        }
        self$`nb_total_gene_products` <- `nb_total_gene_products`
      }
      if (!missing(`nb_mapped_enzymes`)) {
        if (!(is.numeric(`nb_mapped_enzymes`) && length(`nb_mapped_enzymes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_enzymes`. Must be an integer:", `nb_mapped_enzymes`))
        }
        self$`nb_mapped_enzymes` <- `nb_mapped_enzymes`
      }
      if (!missing(`nb_total_enzymes`)) {
        if (!(is.numeric(`nb_total_enzymes`) && length(`nb_total_enzymes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_enzymes`. Must be an integer:", `nb_total_enzymes`))
        }
        self$`nb_total_enzymes` <- `nb_total_enzymes`
      }
      if (!missing(`nb_mapped_compartments`)) {
        if (!(is.numeric(`nb_mapped_compartments`) && length(`nb_mapped_compartments`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_compartments`. Must be an integer:", `nb_mapped_compartments`))
        }
        self$`nb_mapped_compartments` <- `nb_mapped_compartments`
      }
      if (!missing(`nb_total_compartments`)) {
        if (!(is.numeric(`nb_total_compartments`) && length(`nb_total_compartments`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_compartments`. Must be an integer:", `nb_total_compartments`))
        }
        self$`nb_total_compartments` <- `nb_total_compartments`
      }
      if (!missing(`enrichment`)) {
        stopifnot(is.vector(`enrichment`), length(`enrichment`) != 0)
        sapply(`enrichment`, function(x) stopifnot(R6::is.R6(x)))
        self$`enrichment` <- `enrichment`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return StatisticsMapping in JSON format
    toJSON = function() {
      StatisticsMappingObject <- list()
      if (!is.null(self$`nb_queries`)) {
        StatisticsMappingObject[["nb_queries"]] <-
          self$`nb_queries`
      }
      if (!is.null(self$`nb_mapped_queries`)) {
        StatisticsMappingObject[["nb_mapped_queries"]] <-
          self$`nb_mapped_queries`
      }
      if (!is.null(self$`nb_mapped_pathways`)) {
        StatisticsMappingObject[["nb_mapped_pathways"]] <-
          self$`nb_mapped_pathways`
      }
      if (!is.null(self$`nb_total_pathways`)) {
        StatisticsMappingObject[["nb_total_pathways"]] <-
          self$`nb_total_pathways`
      }
      if (!is.null(self$`nb_mapped_reactions`)) {
        StatisticsMappingObject[["nb_mapped_reactions"]] <-
          self$`nb_mapped_reactions`
      }
      if (!is.null(self$`nb_total_reactions`)) {
        StatisticsMappingObject[["nb_total_reactions"]] <-
          self$`nb_total_reactions`
      }
      if (!is.null(self$`nb_mapped_metabolites`)) {
        StatisticsMappingObject[["nb_mapped_metabolites"]] <-
          self$`nb_mapped_metabolites`
      }
      if (!is.null(self$`nb_total_metabolites`)) {
        StatisticsMappingObject[["nb_total_metabolites"]] <-
          self$`nb_total_metabolites`
      }
      if (!is.null(self$`nb_mapped_genes`)) {
        StatisticsMappingObject[["nb_mapped_genes"]] <-
          self$`nb_mapped_genes`
      }
      if (!is.null(self$`nb_total_genes`)) {
        StatisticsMappingObject[["nb_total_genes"]] <-
          self$`nb_total_genes`
      }
      if (!is.null(self$`nb_mapped_gene_products`)) {
        StatisticsMappingObject[["nb_mapped_gene_products"]] <-
          self$`nb_mapped_gene_products`
      }
      if (!is.null(self$`nb_total_gene_products`)) {
        StatisticsMappingObject[["nb_total_gene_products"]] <-
          self$`nb_total_gene_products`
      }
      if (!is.null(self$`nb_mapped_enzymes`)) {
        StatisticsMappingObject[["nb_mapped_enzymes"]] <-
          self$`nb_mapped_enzymes`
      }
      if (!is.null(self$`nb_total_enzymes`)) {
        StatisticsMappingObject[["nb_total_enzymes"]] <-
          self$`nb_total_enzymes`
      }
      if (!is.null(self$`nb_mapped_compartments`)) {
        StatisticsMappingObject[["nb_mapped_compartments"]] <-
          self$`nb_mapped_compartments`
      }
      if (!is.null(self$`nb_total_compartments`)) {
        StatisticsMappingObject[["nb_total_compartments"]] <-
          self$`nb_total_compartments`
      }
      if (!is.null(self$`enrichment`)) {
        StatisticsMappingObject[["enrichment"]] <-
          lapply(self$`enrichment`, function(x) x$toJSON())
      }
      StatisticsMappingObject
    },

    #' @description
    #' Deserialize JSON string into an instance of StatisticsMapping
    #'
    #' @param input_json the JSON input
    #' @return the instance of StatisticsMapping
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`nb_queries`)) {
        self$`nb_queries` <- this_object$`nb_queries`
      }
      if (!is.null(this_object$`nb_mapped_queries`)) {
        self$`nb_mapped_queries` <- this_object$`nb_mapped_queries`
      }
      if (!is.null(this_object$`nb_mapped_pathways`)) {
        self$`nb_mapped_pathways` <- this_object$`nb_mapped_pathways`
      }
      if (!is.null(this_object$`nb_total_pathways`)) {
        self$`nb_total_pathways` <- this_object$`nb_total_pathways`
      }
      if (!is.null(this_object$`nb_mapped_reactions`)) {
        self$`nb_mapped_reactions` <- this_object$`nb_mapped_reactions`
      }
      if (!is.null(this_object$`nb_total_reactions`)) {
        self$`nb_total_reactions` <- this_object$`nb_total_reactions`
      }
      if (!is.null(this_object$`nb_mapped_metabolites`)) {
        self$`nb_mapped_metabolites` <- this_object$`nb_mapped_metabolites`
      }
      if (!is.null(this_object$`nb_total_metabolites`)) {
        self$`nb_total_metabolites` <- this_object$`nb_total_metabolites`
      }
      if (!is.null(this_object$`nb_mapped_genes`)) {
        self$`nb_mapped_genes` <- this_object$`nb_mapped_genes`
      }
      if (!is.null(this_object$`nb_total_genes`)) {
        self$`nb_total_genes` <- this_object$`nb_total_genes`
      }
      if (!is.null(this_object$`nb_mapped_gene_products`)) {
        self$`nb_mapped_gene_products` <- this_object$`nb_mapped_gene_products`
      }
      if (!is.null(this_object$`nb_total_gene_products`)) {
        self$`nb_total_gene_products` <- this_object$`nb_total_gene_products`
      }
      if (!is.null(this_object$`nb_mapped_enzymes`)) {
        self$`nb_mapped_enzymes` <- this_object$`nb_mapped_enzymes`
      }
      if (!is.null(this_object$`nb_total_enzymes`)) {
        self$`nb_total_enzymes` <- this_object$`nb_total_enzymes`
      }
      if (!is.null(this_object$`nb_mapped_compartments`)) {
        self$`nb_mapped_compartments` <- this_object$`nb_mapped_compartments`
      }
      if (!is.null(this_object$`nb_total_compartments`)) {
        self$`nb_total_compartments` <- this_object$`nb_total_compartments`
      }
      if (!is.null(this_object$`enrichment`)) {
        self$`enrichment` <- ApiClient$new()$deserializeObj(this_object$`enrichment`, "map(Enrichment)", loadNamespace("metexplore3api"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return StatisticsMapping in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`nb_queries`)) {
          sprintf(
          '"nb_queries":
            %d
                    ',
          self$`nb_queries`
          )
        },
        if (!is.null(self$`nb_mapped_queries`)) {
          sprintf(
          '"nb_mapped_queries":
            %d
                    ',
          self$`nb_mapped_queries`
          )
        },
        if (!is.null(self$`nb_mapped_pathways`)) {
          sprintf(
          '"nb_mapped_pathways":
            %d
                    ',
          self$`nb_mapped_pathways`
          )
        },
        if (!is.null(self$`nb_total_pathways`)) {
          sprintf(
          '"nb_total_pathways":
            %d
                    ',
          self$`nb_total_pathways`
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
        if (!is.null(self$`nb_total_reactions`)) {
          sprintf(
          '"nb_total_reactions":
            %d
                    ',
          self$`nb_total_reactions`
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
        if (!is.null(self$`nb_total_metabolites`)) {
          sprintf(
          '"nb_total_metabolites":
            %d
                    ',
          self$`nb_total_metabolites`
          )
        },
        if (!is.null(self$`nb_mapped_genes`)) {
          sprintf(
          '"nb_mapped_genes":
            %d
                    ',
          self$`nb_mapped_genes`
          )
        },
        if (!is.null(self$`nb_total_genes`)) {
          sprintf(
          '"nb_total_genes":
            %d
                    ',
          self$`nb_total_genes`
          )
        },
        if (!is.null(self$`nb_mapped_gene_products`)) {
          sprintf(
          '"nb_mapped_gene_products":
            %d
                    ',
          self$`nb_mapped_gene_products`
          )
        },
        if (!is.null(self$`nb_total_gene_products`)) {
          sprintf(
          '"nb_total_gene_products":
            %d
                    ',
          self$`nb_total_gene_products`
          )
        },
        if (!is.null(self$`nb_mapped_enzymes`)) {
          sprintf(
          '"nb_mapped_enzymes":
            %d
                    ',
          self$`nb_mapped_enzymes`
          )
        },
        if (!is.null(self$`nb_total_enzymes`)) {
          sprintf(
          '"nb_total_enzymes":
            %d
                    ',
          self$`nb_total_enzymes`
          )
        },
        if (!is.null(self$`nb_mapped_compartments`)) {
          sprintf(
          '"nb_mapped_compartments":
            %d
                    ',
          self$`nb_mapped_compartments`
          )
        },
        if (!is.null(self$`nb_total_compartments`)) {
          sprintf(
          '"nb_total_compartments":
            %d
                    ',
          self$`nb_total_compartments`
          )
        },
        if (!is.null(self$`enrichment`)) {
          sprintf(
          '"enrichment":
          %s
',
          jsonlite::toJSON(lapply(self$`enrichment`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of StatisticsMapping
    #'
    #' @param input_json the JSON input
    #' @return the instance of StatisticsMapping
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`nb_queries` <- this_object$`nb_queries`
      self$`nb_mapped_queries` <- this_object$`nb_mapped_queries`
      self$`nb_mapped_pathways` <- this_object$`nb_mapped_pathways`
      self$`nb_total_pathways` <- this_object$`nb_total_pathways`
      self$`nb_mapped_reactions` <- this_object$`nb_mapped_reactions`
      self$`nb_total_reactions` <- this_object$`nb_total_reactions`
      self$`nb_mapped_metabolites` <- this_object$`nb_mapped_metabolites`
      self$`nb_total_metabolites` <- this_object$`nb_total_metabolites`
      self$`nb_mapped_genes` <- this_object$`nb_mapped_genes`
      self$`nb_total_genes` <- this_object$`nb_total_genes`
      self$`nb_mapped_gene_products` <- this_object$`nb_mapped_gene_products`
      self$`nb_total_gene_products` <- this_object$`nb_total_gene_products`
      self$`nb_mapped_enzymes` <- this_object$`nb_mapped_enzymes`
      self$`nb_total_enzymes` <- this_object$`nb_total_enzymes`
      self$`nb_mapped_compartments` <- this_object$`nb_mapped_compartments`
      self$`nb_total_compartments` <- this_object$`nb_total_compartments`
      self$`enrichment` <- ApiClient$new()$deserializeObj(this_object$`enrichment`, "map(Enrichment)", loadNamespace("metexplore3api"))
      self
    },

    #' @description
    #' Validate JSON input with respect to StatisticsMapping and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `nb_queries`
      if (!is.null(input_json$`nb_queries`)) {
        if (!(is.numeric(input_json$`nb_queries`) && length(input_json$`nb_queries`) == 1)) {
          stop(paste("Error! Invalid data for `nb_queries`. Must be an integer:", input_json$`nb_queries`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_queries` is missing."))
      }
      # check the required field `nb_mapped_queries`
      if (!is.null(input_json$`nb_mapped_queries`)) {
        if (!(is.numeric(input_json$`nb_mapped_queries`) && length(input_json$`nb_mapped_queries`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_queries`. Must be an integer:", input_json$`nb_mapped_queries`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_mapped_queries` is missing."))
      }
      # check the required field `nb_mapped_pathways`
      if (!is.null(input_json$`nb_mapped_pathways`)) {
        if (!(is.numeric(input_json$`nb_mapped_pathways`) && length(input_json$`nb_mapped_pathways`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_pathways`. Must be an integer:", input_json$`nb_mapped_pathways`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_mapped_pathways` is missing."))
      }
      # check the required field `nb_total_pathways`
      if (!is.null(input_json$`nb_total_pathways`)) {
        if (!(is.numeric(input_json$`nb_total_pathways`) && length(input_json$`nb_total_pathways`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_pathways`. Must be an integer:", input_json$`nb_total_pathways`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_total_pathways` is missing."))
      }
      # check the required field `nb_mapped_reactions`
      if (!is.null(input_json$`nb_mapped_reactions`)) {
        if (!(is.numeric(input_json$`nb_mapped_reactions`) && length(input_json$`nb_mapped_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_reactions`. Must be an integer:", input_json$`nb_mapped_reactions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_mapped_reactions` is missing."))
      }
      # check the required field `nb_total_reactions`
      if (!is.null(input_json$`nb_total_reactions`)) {
        if (!(is.numeric(input_json$`nb_total_reactions`) && length(input_json$`nb_total_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_reactions`. Must be an integer:", input_json$`nb_total_reactions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_total_reactions` is missing."))
      }
      # check the required field `nb_mapped_metabolites`
      if (!is.null(input_json$`nb_mapped_metabolites`)) {
        if (!(is.numeric(input_json$`nb_mapped_metabolites`) && length(input_json$`nb_mapped_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_metabolites`. Must be an integer:", input_json$`nb_mapped_metabolites`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_mapped_metabolites` is missing."))
      }
      # check the required field `nb_total_metabolites`
      if (!is.null(input_json$`nb_total_metabolites`)) {
        if (!(is.numeric(input_json$`nb_total_metabolites`) && length(input_json$`nb_total_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_metabolites`. Must be an integer:", input_json$`nb_total_metabolites`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_total_metabolites` is missing."))
      }
      # check the required field `nb_mapped_genes`
      if (!is.null(input_json$`nb_mapped_genes`)) {
        if (!(is.numeric(input_json$`nb_mapped_genes`) && length(input_json$`nb_mapped_genes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_genes`. Must be an integer:", input_json$`nb_mapped_genes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_mapped_genes` is missing."))
      }
      # check the required field `nb_total_genes`
      if (!is.null(input_json$`nb_total_genes`)) {
        if (!(is.numeric(input_json$`nb_total_genes`) && length(input_json$`nb_total_genes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_genes`. Must be an integer:", input_json$`nb_total_genes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_total_genes` is missing."))
      }
      # check the required field `nb_mapped_gene_products`
      if (!is.null(input_json$`nb_mapped_gene_products`)) {
        if (!(is.numeric(input_json$`nb_mapped_gene_products`) && length(input_json$`nb_mapped_gene_products`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_gene_products`. Must be an integer:", input_json$`nb_mapped_gene_products`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_mapped_gene_products` is missing."))
      }
      # check the required field `nb_total_gene_products`
      if (!is.null(input_json$`nb_total_gene_products`)) {
        if (!(is.numeric(input_json$`nb_total_gene_products`) && length(input_json$`nb_total_gene_products`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_gene_products`. Must be an integer:", input_json$`nb_total_gene_products`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_total_gene_products` is missing."))
      }
      # check the required field `nb_mapped_enzymes`
      if (!is.null(input_json$`nb_mapped_enzymes`)) {
        if (!(is.numeric(input_json$`nb_mapped_enzymes`) && length(input_json$`nb_mapped_enzymes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_enzymes`. Must be an integer:", input_json$`nb_mapped_enzymes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_mapped_enzymes` is missing."))
      }
      # check the required field `nb_total_enzymes`
      if (!is.null(input_json$`nb_total_enzymes`)) {
        if (!(is.numeric(input_json$`nb_total_enzymes`) && length(input_json$`nb_total_enzymes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_enzymes`. Must be an integer:", input_json$`nb_total_enzymes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_total_enzymes` is missing."))
      }
      # check the required field `nb_mapped_compartments`
      if (!is.null(input_json$`nb_mapped_compartments`)) {
        if (!(is.numeric(input_json$`nb_mapped_compartments`) && length(input_json$`nb_mapped_compartments`) == 1)) {
          stop(paste("Error! Invalid data for `nb_mapped_compartments`. Must be an integer:", input_json$`nb_mapped_compartments`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_mapped_compartments` is missing."))
      }
      # check the required field `nb_total_compartments`
      if (!is.null(input_json$`nb_total_compartments`)) {
        if (!(is.numeric(input_json$`nb_total_compartments`) && length(input_json$`nb_total_compartments`) == 1)) {
          stop(paste("Error! Invalid data for `nb_total_compartments`. Must be an integer:", input_json$`nb_total_compartments`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `nb_total_compartments` is missing."))
      }
      # check the required field `enrichment`
      if (!is.null(input_json$`enrichment`)) {
        stopifnot(is.vector(input_json$`enrichment`), length(input_json$`enrichment`) != 0)
        tmp <- sapply(input_json$`enrichment`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatisticsMapping: the required field `enrichment` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StatisticsMapping
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `nb_queries` is null
      if (is.null(self$`nb_queries`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_queries` is null
      if (is.null(self$`nb_mapped_queries`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_pathways` is null
      if (is.null(self$`nb_mapped_pathways`)) {
        return(FALSE)
      }

      # check if the required `nb_total_pathways` is null
      if (is.null(self$`nb_total_pathways`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_reactions` is null
      if (is.null(self$`nb_mapped_reactions`)) {
        return(FALSE)
      }

      # check if the required `nb_total_reactions` is null
      if (is.null(self$`nb_total_reactions`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_metabolites` is null
      if (is.null(self$`nb_mapped_metabolites`)) {
        return(FALSE)
      }

      # check if the required `nb_total_metabolites` is null
      if (is.null(self$`nb_total_metabolites`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_genes` is null
      if (is.null(self$`nb_mapped_genes`)) {
        return(FALSE)
      }

      # check if the required `nb_total_genes` is null
      if (is.null(self$`nb_total_genes`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_gene_products` is null
      if (is.null(self$`nb_mapped_gene_products`)) {
        return(FALSE)
      }

      # check if the required `nb_total_gene_products` is null
      if (is.null(self$`nb_total_gene_products`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_enzymes` is null
      if (is.null(self$`nb_mapped_enzymes`)) {
        return(FALSE)
      }

      # check if the required `nb_total_enzymes` is null
      if (is.null(self$`nb_total_enzymes`)) {
        return(FALSE)
      }

      # check if the required `nb_mapped_compartments` is null
      if (is.null(self$`nb_mapped_compartments`)) {
        return(FALSE)
      }

      # check if the required `nb_total_compartments` is null
      if (is.null(self$`nb_total_compartments`)) {
        return(FALSE)
      }

      # check if the required `enrichment` is null
      if (is.null(self$`enrichment`)) {
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
      # check if the required `nb_queries` is null
      if (is.null(self$`nb_queries`)) {
        invalid_fields["nb_queries"] <- "Non-nullable required field `nb_queries` cannot be null."
      }

      # check if the required `nb_mapped_queries` is null
      if (is.null(self$`nb_mapped_queries`)) {
        invalid_fields["nb_mapped_queries"] <- "Non-nullable required field `nb_mapped_queries` cannot be null."
      }

      # check if the required `nb_mapped_pathways` is null
      if (is.null(self$`nb_mapped_pathways`)) {
        invalid_fields["nb_mapped_pathways"] <- "Non-nullable required field `nb_mapped_pathways` cannot be null."
      }

      # check if the required `nb_total_pathways` is null
      if (is.null(self$`nb_total_pathways`)) {
        invalid_fields["nb_total_pathways"] <- "Non-nullable required field `nb_total_pathways` cannot be null."
      }

      # check if the required `nb_mapped_reactions` is null
      if (is.null(self$`nb_mapped_reactions`)) {
        invalid_fields["nb_mapped_reactions"] <- "Non-nullable required field `nb_mapped_reactions` cannot be null."
      }

      # check if the required `nb_total_reactions` is null
      if (is.null(self$`nb_total_reactions`)) {
        invalid_fields["nb_total_reactions"] <- "Non-nullable required field `nb_total_reactions` cannot be null."
      }

      # check if the required `nb_mapped_metabolites` is null
      if (is.null(self$`nb_mapped_metabolites`)) {
        invalid_fields["nb_mapped_metabolites"] <- "Non-nullable required field `nb_mapped_metabolites` cannot be null."
      }

      # check if the required `nb_total_metabolites` is null
      if (is.null(self$`nb_total_metabolites`)) {
        invalid_fields["nb_total_metabolites"] <- "Non-nullable required field `nb_total_metabolites` cannot be null."
      }

      # check if the required `nb_mapped_genes` is null
      if (is.null(self$`nb_mapped_genes`)) {
        invalid_fields["nb_mapped_genes"] <- "Non-nullable required field `nb_mapped_genes` cannot be null."
      }

      # check if the required `nb_total_genes` is null
      if (is.null(self$`nb_total_genes`)) {
        invalid_fields["nb_total_genes"] <- "Non-nullable required field `nb_total_genes` cannot be null."
      }

      # check if the required `nb_mapped_gene_products` is null
      if (is.null(self$`nb_mapped_gene_products`)) {
        invalid_fields["nb_mapped_gene_products"] <- "Non-nullable required field `nb_mapped_gene_products` cannot be null."
      }

      # check if the required `nb_total_gene_products` is null
      if (is.null(self$`nb_total_gene_products`)) {
        invalid_fields["nb_total_gene_products"] <- "Non-nullable required field `nb_total_gene_products` cannot be null."
      }

      # check if the required `nb_mapped_enzymes` is null
      if (is.null(self$`nb_mapped_enzymes`)) {
        invalid_fields["nb_mapped_enzymes"] <- "Non-nullable required field `nb_mapped_enzymes` cannot be null."
      }

      # check if the required `nb_total_enzymes` is null
      if (is.null(self$`nb_total_enzymes`)) {
        invalid_fields["nb_total_enzymes"] <- "Non-nullable required field `nb_total_enzymes` cannot be null."
      }

      # check if the required `nb_mapped_compartments` is null
      if (is.null(self$`nb_mapped_compartments`)) {
        invalid_fields["nb_mapped_compartments"] <- "Non-nullable required field `nb_mapped_compartments` cannot be null."
      }

      # check if the required `nb_total_compartments` is null
      if (is.null(self$`nb_total_compartments`)) {
        invalid_fields["nb_total_compartments"] <- "Non-nullable required field `nb_total_compartments` cannot be null."
      }

      # check if the required `enrichment` is null
      if (is.null(self$`enrichment`)) {
        invalid_fields["enrichment"] <- "Non-nullable required field `enrichment` cannot be null."
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
# StatisticsMapping$unlock()
#
## Below is an example to define the print function
# StatisticsMapping$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StatisticsMapping$lock()

