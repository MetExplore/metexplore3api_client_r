#' Create a new Network
#'
#' @description
#' Network object
#'
#' @docType class
#' @title Network
#' @description Network Class
#' @format An \code{R6Class} generator object
#' @field id id of the Network in the MetExplore database integer [optional]
#' @field name Nick name of the Network character [optional]
#' @field id_collection Database id of the collection to which the network belongs integer [optional]
#' @field ncbi_id NCBI taxonomy id integer [optional]
#' @field organism_name Organism name character [optional]
#' @field db_identifier identifier of the network in the original database character [optional]
#' @field strain Strain of the organism character [optional]
#' @field tissue Tissue corresponding to the Network character [optional]
#' @field cell_type Cell type corresponding to the Network character [optional]
#' @field source Source of the network character [optional]
#' @field version Version of the network character [optional]
#' @field description Description of the network character [optional]
#' @field url Url of the network character [optional]
#' @field identifier_origin Origin of the identifiers in the network character [optional]
#' @field date_creation Creation date of the Network (ISO 8601 full-time format) character [optional]
#' @field date_last_modif Last modification date of the Network (ISO 8601 full-time format) character [optional]
#' @field top Indicates if the Network is among the top Networks in MetExplore integer [optional]
#' @field visits Number of times where this Network has been selected integer [optional]
#' @field permission Permission of the user on the network \link{Permission} [optional]
#' @field nb_pathways number of pathways in the network integer [optional]
#' @field nb_reactions number of reactions in the network integer [optional]
#' @field nb_metabolites number of metabolites in the network integer [optional]
#' @field nb_genes number of genes in the network integer [optional]
#' @field user_visits Number of visits to the network by the authenticated user integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Network <- R6::R6Class(
  "Network",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `id_collection` = NULL,
    `ncbi_id` = NULL,
    `organism_name` = NULL,
    `db_identifier` = NULL,
    `strain` = NULL,
    `tissue` = NULL,
    `cell_type` = NULL,
    `source` = NULL,
    `version` = NULL,
    `description` = NULL,
    `url` = NULL,
    `identifier_origin` = NULL,
    `date_creation` = NULL,
    `date_last_modif` = NULL,
    `top` = NULL,
    `visits` = NULL,
    `permission` = NULL,
    `nb_pathways` = NULL,
    `nb_reactions` = NULL,
    `nb_metabolites` = NULL,
    `nb_genes` = NULL,
    `user_visits` = NULL,

    #' @description
    #' Initialize a new Network class.
    #'
    #' @param id id of the Network in the MetExplore database
    #' @param name Nick name of the Network
    #' @param id_collection Database id of the collection to which the network belongs
    #' @param ncbi_id NCBI taxonomy id. Default to 12908.
    #' @param organism_name Organism name. Default to "Not defined".
    #' @param db_identifier identifier of the network in the original database
    #' @param strain Strain of the organism
    #' @param tissue Tissue corresponding to the Network
    #' @param cell_type Cell type corresponding to the Network
    #' @param source Source of the network
    #' @param version Version of the network
    #' @param description Description of the network
    #' @param url Url of the network
    #' @param identifier_origin Origin of the identifiers in the network
    #' @param date_creation Creation date of the Network (ISO 8601 full-time format)
    #' @param date_last_modif Last modification date of the Network (ISO 8601 full-time format)
    #' @param top Indicates if the Network is among the top Networks in MetExplore. Default to 0.
    #' @param visits Number of times where this Network has been selected
    #' @param permission Permission of the user on the network
    #' @param nb_pathways number of pathways in the network
    #' @param nb_reactions number of reactions in the network
    #' @param nb_metabolites number of metabolites in the network
    #' @param nb_genes number of genes in the network
    #' @param user_visits Number of visits to the network by the authenticated user
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `id_collection` = NULL, `ncbi_id` = 12908, `organism_name` = "Not defined", `db_identifier` = NULL, `strain` = NULL, `tissue` = NULL, `cell_type` = NULL, `source` = NULL, `version` = NULL, `description` = NULL, `url` = NULL, `identifier_origin` = NULL, `date_creation` = NULL, `date_last_modif` = NULL, `top` = 0, `visits` = NULL, `permission` = NULL, `nb_pathways` = NULL, `nb_reactions` = NULL, `nb_metabolites` = NULL, `nb_genes` = NULL, `user_visits` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`id_collection`)) {
        if (!(is.numeric(`id_collection`) && length(`id_collection`) == 1)) {
          stop(paste("Error! Invalid data for `id_collection`. Must be an integer:", `id_collection`))
        }
        self$`id_collection` <- `id_collection`
      }
      if (!is.null(`ncbi_id`)) {
        if (!(is.numeric(`ncbi_id`) && length(`ncbi_id`) == 1)) {
          stop(paste("Error! Invalid data for `ncbi_id`. Must be an integer:", `ncbi_id`))
        }
        self$`ncbi_id` <- `ncbi_id`
      }
      if (!is.null(`organism_name`)) {
        if (!(is.character(`organism_name`) && length(`organism_name`) == 1)) {
          stop(paste("Error! Invalid data for `organism_name`. Must be a string:", `organism_name`))
        }
        self$`organism_name` <- `organism_name`
      }
      if (!is.null(`db_identifier`)) {
        if (!(is.character(`db_identifier`) && length(`db_identifier`) == 1)) {
          stop(paste("Error! Invalid data for `db_identifier`. Must be a string:", `db_identifier`))
        }
        self$`db_identifier` <- `db_identifier`
      }
      if (!is.null(`strain`)) {
        if (!(is.character(`strain`) && length(`strain`) == 1)) {
          stop(paste("Error! Invalid data for `strain`. Must be a string:", `strain`))
        }
        self$`strain` <- `strain`
      }
      if (!is.null(`tissue`)) {
        if (!(is.character(`tissue`) && length(`tissue`) == 1)) {
          stop(paste("Error! Invalid data for `tissue`. Must be a string:", `tissue`))
        }
        self$`tissue` <- `tissue`
      }
      if (!is.null(`cell_type`)) {
        if (!(is.character(`cell_type`) && length(`cell_type`) == 1)) {
          stop(paste("Error! Invalid data for `cell_type`. Must be a string:", `cell_type`))
        }
        self$`cell_type` <- `cell_type`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`identifier_origin`)) {
        if (!(is.character(`identifier_origin`) && length(`identifier_origin`) == 1)) {
          stop(paste("Error! Invalid data for `identifier_origin`. Must be a string:", `identifier_origin`))
        }
        self$`identifier_origin` <- `identifier_origin`
      }
      if (!is.null(`date_creation`)) {
        if (!(is.character(`date_creation`) && length(`date_creation`) == 1)) {
          stop(paste("Error! Invalid data for `date_creation`. Must be a string:", `date_creation`))
        }
        self$`date_creation` <- `date_creation`
      }
      if (!is.null(`date_last_modif`)) {
        if (!(is.character(`date_last_modif`) && length(`date_last_modif`) == 1)) {
          stop(paste("Error! Invalid data for `date_last_modif`. Must be a string:", `date_last_modif`))
        }
        self$`date_last_modif` <- `date_last_modif`
      }
      if (!is.null(`top`)) {
        if (!(is.numeric(`top`) && length(`top`) == 1)) {
          stop(paste("Error! Invalid data for `top`. Must be an integer:", `top`))
        }
        self$`top` <- `top`
      }
      if (!is.null(`visits`)) {
        if (!(is.numeric(`visits`) && length(`visits`) == 1)) {
          stop(paste("Error! Invalid data for `visits`. Must be an integer:", `visits`))
        }
        self$`visits` <- `visits`
      }
      if (!is.null(`permission`)) {
        if (!(`permission` %in% c())) {
          stop(paste("Error! \"", `permission`, "\" cannot be assigned to `permission`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`permission`))
        self$`permission` <- `permission`
      }
      if (!is.null(`nb_pathways`)) {
        if (!(is.numeric(`nb_pathways`) && length(`nb_pathways`) == 1)) {
          stop(paste("Error! Invalid data for `nb_pathways`. Must be an integer:", `nb_pathways`))
        }
        self$`nb_pathways` <- `nb_pathways`
      }
      if (!is.null(`nb_reactions`)) {
        if (!(is.numeric(`nb_reactions`) && length(`nb_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_reactions`. Must be an integer:", `nb_reactions`))
        }
        self$`nb_reactions` <- `nb_reactions`
      }
      if (!is.null(`nb_metabolites`)) {
        if (!(is.numeric(`nb_metabolites`) && length(`nb_metabolites`) == 1)) {
          stop(paste("Error! Invalid data for `nb_metabolites`. Must be an integer:", `nb_metabolites`))
        }
        self$`nb_metabolites` <- `nb_metabolites`
      }
      if (!is.null(`nb_genes`)) {
        if (!(is.numeric(`nb_genes`) && length(`nb_genes`) == 1)) {
          stop(paste("Error! Invalid data for `nb_genes`. Must be an integer:", `nb_genes`))
        }
        self$`nb_genes` <- `nb_genes`
      }
      if (!is.null(`user_visits`)) {
        if (!(is.numeric(`user_visits`) && length(`user_visits`) == 1)) {
          stop(paste("Error! Invalid data for `user_visits`. Must be an integer:", `user_visits`))
        }
        self$`user_visits` <- `user_visits`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Network in JSON format
    toJSON = function() {
      NetworkObject <- list()
      if (!is.null(self$`id`)) {
        NetworkObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        NetworkObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`id_collection`)) {
        NetworkObject[["id_collection"]] <-
          self$`id_collection`
      }
      if (!is.null(self$`ncbi_id`)) {
        NetworkObject[["ncbi_id"]] <-
          self$`ncbi_id`
      }
      if (!is.null(self$`organism_name`)) {
        NetworkObject[["organism_name"]] <-
          self$`organism_name`
      }
      if (!is.null(self$`db_identifier`)) {
        NetworkObject[["db_identifier"]] <-
          self$`db_identifier`
      }
      if (!is.null(self$`strain`)) {
        NetworkObject[["strain"]] <-
          self$`strain`
      }
      if (!is.null(self$`tissue`)) {
        NetworkObject[["tissue"]] <-
          self$`tissue`
      }
      if (!is.null(self$`cell_type`)) {
        NetworkObject[["cell_type"]] <-
          self$`cell_type`
      }
      if (!is.null(self$`source`)) {
        NetworkObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`version`)) {
        NetworkObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`description`)) {
        NetworkObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`url`)) {
        NetworkObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`identifier_origin`)) {
        NetworkObject[["identifier_origin"]] <-
          self$`identifier_origin`
      }
      if (!is.null(self$`date_creation`)) {
        NetworkObject[["date_creation"]] <-
          self$`date_creation`
      }
      if (!is.null(self$`date_last_modif`)) {
        NetworkObject[["date_last_modif"]] <-
          self$`date_last_modif`
      }
      if (!is.null(self$`top`)) {
        NetworkObject[["top"]] <-
          self$`top`
      }
      if (!is.null(self$`visits`)) {
        NetworkObject[["visits"]] <-
          self$`visits`
      }
      if (!is.null(self$`permission`)) {
        NetworkObject[["permission"]] <-
          self$`permission`$toJSON()
      }
      if (!is.null(self$`nb_pathways`)) {
        NetworkObject[["nb_pathways"]] <-
          self$`nb_pathways`
      }
      if (!is.null(self$`nb_reactions`)) {
        NetworkObject[["nb_reactions"]] <-
          self$`nb_reactions`
      }
      if (!is.null(self$`nb_metabolites`)) {
        NetworkObject[["nb_metabolites"]] <-
          self$`nb_metabolites`
      }
      if (!is.null(self$`nb_genes`)) {
        NetworkObject[["nb_genes"]] <-
          self$`nb_genes`
      }
      if (!is.null(self$`user_visits`)) {
        NetworkObject[["user_visits"]] <-
          self$`user_visits`
      }
      NetworkObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Network
    #'
    #' @param input_json the JSON input
    #' @return the instance of Network
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`id_collection`)) {
        self$`id_collection` <- this_object$`id_collection`
      }
      if (!is.null(this_object$`ncbi_id`)) {
        self$`ncbi_id` <- this_object$`ncbi_id`
      }
      if (!is.null(this_object$`organism_name`)) {
        self$`organism_name` <- this_object$`organism_name`
      }
      if (!is.null(this_object$`db_identifier`)) {
        self$`db_identifier` <- this_object$`db_identifier`
      }
      if (!is.null(this_object$`strain`)) {
        self$`strain` <- this_object$`strain`
      }
      if (!is.null(this_object$`tissue`)) {
        self$`tissue` <- this_object$`tissue`
      }
      if (!is.null(this_object$`cell_type`)) {
        self$`cell_type` <- this_object$`cell_type`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`identifier_origin`)) {
        self$`identifier_origin` <- this_object$`identifier_origin`
      }
      if (!is.null(this_object$`date_creation`)) {
        self$`date_creation` <- this_object$`date_creation`
      }
      if (!is.null(this_object$`date_last_modif`)) {
        self$`date_last_modif` <- this_object$`date_last_modif`
      }
      if (!is.null(this_object$`top`)) {
        self$`top` <- this_object$`top`
      }
      if (!is.null(this_object$`visits`)) {
        self$`visits` <- this_object$`visits`
      }
      if (!is.null(this_object$`permission`)) {
        `permission_object` <- Permission$new()
        `permission_object`$fromJSON(jsonlite::toJSON(this_object$`permission`, auto_unbox = TRUE, digits = NA))
        self$`permission` <- `permission_object`
      }
      if (!is.null(this_object$`nb_pathways`)) {
        self$`nb_pathways` <- this_object$`nb_pathways`
      }
      if (!is.null(this_object$`nb_reactions`)) {
        self$`nb_reactions` <- this_object$`nb_reactions`
      }
      if (!is.null(this_object$`nb_metabolites`)) {
        self$`nb_metabolites` <- this_object$`nb_metabolites`
      }
      if (!is.null(this_object$`nb_genes`)) {
        self$`nb_genes` <- this_object$`nb_genes`
      }
      if (!is.null(this_object$`user_visits`)) {
        self$`user_visits` <- this_object$`user_visits`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Network in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`id_collection`)) {
          sprintf(
          '"id_collection":
            %d
                    ',
          self$`id_collection`
          )
        },
        if (!is.null(self$`ncbi_id`)) {
          sprintf(
          '"ncbi_id":
            %d
                    ',
          self$`ncbi_id`
          )
        },
        if (!is.null(self$`organism_name`)) {
          sprintf(
          '"organism_name":
            "%s"
                    ',
          self$`organism_name`
          )
        },
        if (!is.null(self$`db_identifier`)) {
          sprintf(
          '"db_identifier":
            "%s"
                    ',
          self$`db_identifier`
          )
        },
        if (!is.null(self$`strain`)) {
          sprintf(
          '"strain":
            "%s"
                    ',
          self$`strain`
          )
        },
        if (!is.null(self$`tissue`)) {
          sprintf(
          '"tissue":
            "%s"
                    ',
          self$`tissue`
          )
        },
        if (!is.null(self$`cell_type`)) {
          sprintf(
          '"cell_type":
            "%s"
                    ',
          self$`cell_type`
          )
        },
        if (!is.null(self$`source`)) {
          sprintf(
          '"source":
            "%s"
                    ',
          self$`source`
          )
        },
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
            "%s"
                    ',
          self$`url`
          )
        },
        if (!is.null(self$`identifier_origin`)) {
          sprintf(
          '"identifier_origin":
            "%s"
                    ',
          self$`identifier_origin`
          )
        },
        if (!is.null(self$`date_creation`)) {
          sprintf(
          '"date_creation":
            "%s"
                    ',
          self$`date_creation`
          )
        },
        if (!is.null(self$`date_last_modif`)) {
          sprintf(
          '"date_last_modif":
            "%s"
                    ',
          self$`date_last_modif`
          )
        },
        if (!is.null(self$`top`)) {
          sprintf(
          '"top":
            %d
                    ',
          self$`top`
          )
        },
        if (!is.null(self$`visits`)) {
          sprintf(
          '"visits":
            %d
                    ',
          self$`visits`
          )
        },
        if (!is.null(self$`permission`)) {
          sprintf(
          '"permission":
          %s
          ',
          jsonlite::toJSON(self$`permission`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`nb_pathways`)) {
          sprintf(
          '"nb_pathways":
            %d
                    ',
          self$`nb_pathways`
          )
        },
        if (!is.null(self$`nb_reactions`)) {
          sprintf(
          '"nb_reactions":
            %d
                    ',
          self$`nb_reactions`
          )
        },
        if (!is.null(self$`nb_metabolites`)) {
          sprintf(
          '"nb_metabolites":
            %d
                    ',
          self$`nb_metabolites`
          )
        },
        if (!is.null(self$`nb_genes`)) {
          sprintf(
          '"nb_genes":
            %d
                    ',
          self$`nb_genes`
          )
        },
        if (!is.null(self$`user_visits`)) {
          sprintf(
          '"user_visits":
            %d
                    ',
          self$`user_visits`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Network
    #'
    #' @param input_json the JSON input
    #' @return the instance of Network
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`id_collection` <- this_object$`id_collection`
      self$`ncbi_id` <- this_object$`ncbi_id`
      self$`organism_name` <- this_object$`organism_name`
      self$`db_identifier` <- this_object$`db_identifier`
      self$`strain` <- this_object$`strain`
      self$`tissue` <- this_object$`tissue`
      self$`cell_type` <- this_object$`cell_type`
      self$`source` <- this_object$`source`
      self$`version` <- this_object$`version`
      self$`description` <- this_object$`description`
      self$`url` <- this_object$`url`
      self$`identifier_origin` <- this_object$`identifier_origin`
      self$`date_creation` <- this_object$`date_creation`
      self$`date_last_modif` <- this_object$`date_last_modif`
      self$`top` <- this_object$`top`
      self$`visits` <- this_object$`visits`
      self$`permission` <- Permission$new()$fromJSON(jsonlite::toJSON(this_object$`permission`, auto_unbox = TRUE, digits = NA))
      self$`nb_pathways` <- this_object$`nb_pathways`
      self$`nb_reactions` <- this_object$`nb_reactions`
      self$`nb_metabolites` <- this_object$`nb_metabolites`
      self$`nb_genes` <- this_object$`nb_genes`
      self$`user_visits` <- this_object$`user_visits`
      self
    },

    #' @description
    #' Validate JSON input with respect to Network and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Network
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (!str_detect(self$`date_creation`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        return(FALSE)
      }

      if (!str_detect(self$`date_last_modif`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
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
      if (!str_detect(self$`date_creation`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        invalid_fields["date_creation"] <- "Invalid value for `date_creation`, must conform to the pattern ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$."
      }

      if (!str_detect(self$`date_last_modif`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        invalid_fields["date_last_modif"] <- "Invalid value for `date_last_modif`, must conform to the pattern ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$."
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
# Network$unlock()
#
## Below is an example to define the print function
# Network$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Network$lock()

