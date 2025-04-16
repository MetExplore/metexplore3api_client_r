#' Create a new Metabolite
#'
#' @description
#' Metabolite object
#'
#' @docType class
#' @title Metabolite
#' @description Metabolite Class
#' @format An \code{R6Class} generator object
#' @field id database id integer [optional]
#' @field name name character [optional]
#' @field db_identifier unique identifier character [optional]
#' @field id_collection database id of the collection integer [optional]
#' @field chemical_formula chemical_formula for Metabolite character [optional]
#' @field weight weight for Metabolite character [optional]
#' @field mono_iso_mass mono_iso_mass for Metabolite character [optional]
#' @field exact_neutral_mass exact_neutral_mass for Metabolite character [optional]
#' @field average_mass average_mass for Metabolite character [optional]
#' @field generic generic for Metabolite character [optional]
#' @field charge charge for Metabolite integer [optional]
#' @field inchi inchi for Metabolite character [optional]
#' @field sbo Systems Biology Ontology identifier for Metabolite integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Metabolite <- R6::R6Class(
  "Metabolite",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `db_identifier` = NULL,
    `id_collection` = NULL,
    `chemical_formula` = NULL,
    `weight` = NULL,
    `mono_iso_mass` = NULL,
    `exact_neutral_mass` = NULL,
    `average_mass` = NULL,
    `generic` = NULL,
    `charge` = NULL,
    `inchi` = NULL,
    `sbo` = NULL,

    #' @description
    #' Initialize a new Metabolite class.
    #'
    #' @param id database id
    #' @param name name
    #' @param db_identifier unique identifier
    #' @param id_collection database id of the collection
    #' @param chemical_formula chemical_formula for Metabolite
    #' @param weight weight for Metabolite
    #' @param mono_iso_mass mono_iso_mass for Metabolite
    #' @param exact_neutral_mass exact_neutral_mass for Metabolite
    #' @param average_mass average_mass for Metabolite
    #' @param generic generic for Metabolite
    #' @param charge charge for Metabolite
    #' @param inchi inchi for Metabolite
    #' @param sbo Systems Biology Ontology identifier for Metabolite
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `db_identifier` = NULL, `id_collection` = NULL, `chemical_formula` = NULL, `weight` = NULL, `mono_iso_mass` = NULL, `exact_neutral_mass` = NULL, `average_mass` = NULL, `generic` = NULL, `charge` = NULL, `inchi` = NULL, `sbo` = NULL, ...) {
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
      if (!is.null(`db_identifier`)) {
        if (!(is.character(`db_identifier`) && length(`db_identifier`) == 1)) {
          stop(paste("Error! Invalid data for `db_identifier`. Must be a string:", `db_identifier`))
        }
        self$`db_identifier` <- `db_identifier`
      }
      if (!is.null(`id_collection`)) {
        if (!(is.numeric(`id_collection`) && length(`id_collection`) == 1)) {
          stop(paste("Error! Invalid data for `id_collection`. Must be an integer:", `id_collection`))
        }
        self$`id_collection` <- `id_collection`
      }
      if (!is.null(`chemical_formula`)) {
        if (!(is.character(`chemical_formula`) && length(`chemical_formula`) == 1)) {
          stop(paste("Error! Invalid data for `chemical_formula`. Must be a string:", `chemical_formula`))
        }
        self$`chemical_formula` <- `chemical_formula`
      }
      if (!is.null(`weight`)) {
        if (!(is.character(`weight`) && length(`weight`) == 1)) {
          stop(paste("Error! Invalid data for `weight`. Must be a string:", `weight`))
        }
        self$`weight` <- `weight`
      }
      if (!is.null(`mono_iso_mass`)) {
        if (!(is.character(`mono_iso_mass`) && length(`mono_iso_mass`) == 1)) {
          stop(paste("Error! Invalid data for `mono_iso_mass`. Must be a string:", `mono_iso_mass`))
        }
        self$`mono_iso_mass` <- `mono_iso_mass`
      }
      if (!is.null(`exact_neutral_mass`)) {
        if (!(is.character(`exact_neutral_mass`) && length(`exact_neutral_mass`) == 1)) {
          stop(paste("Error! Invalid data for `exact_neutral_mass`. Must be a string:", `exact_neutral_mass`))
        }
        self$`exact_neutral_mass` <- `exact_neutral_mass`
      }
      if (!is.null(`average_mass`)) {
        if (!(is.character(`average_mass`) && length(`average_mass`) == 1)) {
          stop(paste("Error! Invalid data for `average_mass`. Must be a string:", `average_mass`))
        }
        self$`average_mass` <- `average_mass`
      }
      if (!is.null(`generic`)) {
        if (!(is.logical(`generic`) && length(`generic`) == 1)) {
          stop(paste("Error! Invalid data for `generic`. Must be a boolean:", `generic`))
        }
        self$`generic` <- `generic`
      }
      if (!is.null(`charge`)) {
        if (!(is.numeric(`charge`) && length(`charge`) == 1)) {
          stop(paste("Error! Invalid data for `charge`. Must be an integer:", `charge`))
        }
        self$`charge` <- `charge`
      }
      if (!is.null(`inchi`)) {
        if (!(is.character(`inchi`) && length(`inchi`) == 1)) {
          stop(paste("Error! Invalid data for `inchi`. Must be a string:", `inchi`))
        }
        self$`inchi` <- `inchi`
      }
      if (!is.null(`sbo`)) {
        if (!(is.numeric(`sbo`) && length(`sbo`) == 1)) {
          stop(paste("Error! Invalid data for `sbo`. Must be an integer:", `sbo`))
        }
        self$`sbo` <- `sbo`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Metabolite in JSON format
    toJSON = function() {
      MetaboliteObject <- list()
      if (!is.null(self$`id`)) {
        MetaboliteObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        MetaboliteObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`db_identifier`)) {
        MetaboliteObject[["db_identifier"]] <-
          self$`db_identifier`
      }
      if (!is.null(self$`id_collection`)) {
        MetaboliteObject[["id_collection"]] <-
          self$`id_collection`
      }
      if (!is.null(self$`chemical_formula`)) {
        MetaboliteObject[["chemical_formula"]] <-
          self$`chemical_formula`
      }
      if (!is.null(self$`weight`)) {
        MetaboliteObject[["weight"]] <-
          self$`weight`
      }
      if (!is.null(self$`mono_iso_mass`)) {
        MetaboliteObject[["mono_iso_mass"]] <-
          self$`mono_iso_mass`
      }
      if (!is.null(self$`exact_neutral_mass`)) {
        MetaboliteObject[["exact_neutral_mass"]] <-
          self$`exact_neutral_mass`
      }
      if (!is.null(self$`average_mass`)) {
        MetaboliteObject[["average_mass"]] <-
          self$`average_mass`
      }
      if (!is.null(self$`generic`)) {
        MetaboliteObject[["generic"]] <-
          self$`generic`
      }
      if (!is.null(self$`charge`)) {
        MetaboliteObject[["charge"]] <-
          self$`charge`
      }
      if (!is.null(self$`inchi`)) {
        MetaboliteObject[["inchi"]] <-
          self$`inchi`
      }
      if (!is.null(self$`sbo`)) {
        MetaboliteObject[["sbo"]] <-
          self$`sbo`
      }
      MetaboliteObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Metabolite
    #'
    #' @param input_json the JSON input
    #' @return the instance of Metabolite
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`db_identifier`)) {
        self$`db_identifier` <- this_object$`db_identifier`
      }
      if (!is.null(this_object$`id_collection`)) {
        self$`id_collection` <- this_object$`id_collection`
      }
      if (!is.null(this_object$`chemical_formula`)) {
        self$`chemical_formula` <- this_object$`chemical_formula`
      }
      if (!is.null(this_object$`weight`)) {
        self$`weight` <- this_object$`weight`
      }
      if (!is.null(this_object$`mono_iso_mass`)) {
        self$`mono_iso_mass` <- this_object$`mono_iso_mass`
      }
      if (!is.null(this_object$`exact_neutral_mass`)) {
        self$`exact_neutral_mass` <- this_object$`exact_neutral_mass`
      }
      if (!is.null(this_object$`average_mass`)) {
        self$`average_mass` <- this_object$`average_mass`
      }
      if (!is.null(this_object$`generic`)) {
        self$`generic` <- this_object$`generic`
      }
      if (!is.null(this_object$`charge`)) {
        self$`charge` <- this_object$`charge`
      }
      if (!is.null(this_object$`inchi`)) {
        self$`inchi` <- this_object$`inchi`
      }
      if (!is.null(this_object$`sbo`)) {
        self$`sbo` <- this_object$`sbo`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Metabolite in JSON format
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
        if (!is.null(self$`db_identifier`)) {
          sprintf(
          '"db_identifier":
            "%s"
                    ',
          self$`db_identifier`
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
        if (!is.null(self$`chemical_formula`)) {
          sprintf(
          '"chemical_formula":
            "%s"
                    ',
          self$`chemical_formula`
          )
        },
        if (!is.null(self$`weight`)) {
          sprintf(
          '"weight":
            "%s"
                    ',
          self$`weight`
          )
        },
        if (!is.null(self$`mono_iso_mass`)) {
          sprintf(
          '"mono_iso_mass":
            "%s"
                    ',
          self$`mono_iso_mass`
          )
        },
        if (!is.null(self$`exact_neutral_mass`)) {
          sprintf(
          '"exact_neutral_mass":
            "%s"
                    ',
          self$`exact_neutral_mass`
          )
        },
        if (!is.null(self$`average_mass`)) {
          sprintf(
          '"average_mass":
            "%s"
                    ',
          self$`average_mass`
          )
        },
        if (!is.null(self$`generic`)) {
          sprintf(
          '"generic":
            %s
                    ',
          tolower(self$`generic`)
          )
        },
        if (!is.null(self$`charge`)) {
          sprintf(
          '"charge":
            %d
                    ',
          self$`charge`
          )
        },
        if (!is.null(self$`inchi`)) {
          sprintf(
          '"inchi":
            "%s"
                    ',
          self$`inchi`
          )
        },
        if (!is.null(self$`sbo`)) {
          sprintf(
          '"sbo":
            %d
                    ',
          self$`sbo`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Metabolite
    #'
    #' @param input_json the JSON input
    #' @return the instance of Metabolite
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`db_identifier` <- this_object$`db_identifier`
      self$`id_collection` <- this_object$`id_collection`
      self$`chemical_formula` <- this_object$`chemical_formula`
      self$`weight` <- this_object$`weight`
      self$`mono_iso_mass` <- this_object$`mono_iso_mass`
      self$`exact_neutral_mass` <- this_object$`exact_neutral_mass`
      self$`average_mass` <- this_object$`average_mass`
      self$`generic` <- this_object$`generic`
      self$`charge` <- this_object$`charge`
      self$`inchi` <- this_object$`inchi`
      self$`sbo` <- this_object$`sbo`
      self
    },

    #' @description
    #' Validate JSON input with respect to Metabolite and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Metabolite
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
# Metabolite$unlock()
#
## Below is an example to define the print function
# Metabolite$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Metabolite$lock()

