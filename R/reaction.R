#' Create a new Reaction
#'
#' @description
#' Reaction object
#'
#' @docType class
#' @title Reaction
#' @description Reaction Class
#' @format An \code{R6Class} generator object
#' @field id database id integer [optional]
#' @field name name character [optional]
#' @field db_identifier unique identifier character [optional]
#' @field id_collection id of the collection integer [optional]
#' @field spontaneous spontaneous for Reaction (0 : false, 1 : true) numeric [optional]
#' @field generic generic for Reaction (0 : false, 1 : true) numeric [optional]
#' @field type type for Reaction character [optional]
#' @field ec ec for Reaction character [optional]
#' @field id_last_annotator id_last_annotator for Reaction integer [optional]
#' @field date_modification date_modification for Reaction object [optional]
#' @field reversible reversible for Reaction (0 : false, 1 : true) numeric [optional]
#' @field eq_identifier Equation with identifiers character [optional]
#' @field eq_name Equation with names character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Reaction <- R6::R6Class(
  "Reaction",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `db_identifier` = NULL,
    `id_collection` = NULL,
    `spontaneous` = NULL,
    `generic` = NULL,
    `type` = NULL,
    `ec` = NULL,
    `id_last_annotator` = NULL,
    `date_modification` = NULL,
    `reversible` = NULL,
    `eq_identifier` = NULL,
    `eq_name` = NULL,

    #' @description
    #' Initialize a new Reaction class.
    #'
    #' @param id database id
    #' @param name name
    #' @param db_identifier unique identifier
    #' @param id_collection id of the collection
    #' @param spontaneous spontaneous for Reaction (0 : false, 1 : true)
    #' @param generic generic for Reaction (0 : false, 1 : true)
    #' @param type type for Reaction
    #' @param ec ec for Reaction
    #' @param id_last_annotator id_last_annotator for Reaction
    #' @param date_modification date_modification for Reaction
    #' @param reversible reversible for Reaction (0 : false, 1 : true)
    #' @param eq_identifier Equation with identifiers
    #' @param eq_name Equation with names
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `db_identifier` = NULL, `id_collection` = NULL, `spontaneous` = NULL, `generic` = NULL, `type` = NULL, `ec` = NULL, `id_last_annotator` = NULL, `date_modification` = NULL, `reversible` = NULL, `eq_identifier` = NULL, `eq_name` = NULL, ...) {
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
      if (!is.null(`spontaneous`)) {
        self$`spontaneous` <- `spontaneous`
      }
      if (!is.null(`generic`)) {
        self$`generic` <- `generic`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`ec`)) {
        if (!(is.character(`ec`) && length(`ec`) == 1)) {
          stop(paste("Error! Invalid data for `ec`. Must be a string:", `ec`))
        }
        self$`ec` <- `ec`
      }
      if (!is.null(`id_last_annotator`)) {
        if (!(is.numeric(`id_last_annotator`) && length(`id_last_annotator`) == 1)) {
          stop(paste("Error! Invalid data for `id_last_annotator`. Must be an integer:", `id_last_annotator`))
        }
        self$`id_last_annotator` <- `id_last_annotator`
      }
      if (!is.null(`date_modification`)) {
        self$`date_modification` <- `date_modification`
      }
      if (!is.null(`reversible`)) {
        self$`reversible` <- `reversible`
      }
      if (!is.null(`eq_identifier`)) {
        if (!(is.character(`eq_identifier`) && length(`eq_identifier`) == 1)) {
          stop(paste("Error! Invalid data for `eq_identifier`. Must be a string:", `eq_identifier`))
        }
        self$`eq_identifier` <- `eq_identifier`
      }
      if (!is.null(`eq_name`)) {
        if (!(is.character(`eq_name`) && length(`eq_name`) == 1)) {
          stop(paste("Error! Invalid data for `eq_name`. Must be a string:", `eq_name`))
        }
        self$`eq_name` <- `eq_name`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Reaction in JSON format
    toJSON = function() {
      ReactionObject <- list()
      if (!is.null(self$`id`)) {
        ReactionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ReactionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`db_identifier`)) {
        ReactionObject[["db_identifier"]] <-
          self$`db_identifier`
      }
      if (!is.null(self$`id_collection`)) {
        ReactionObject[["id_collection"]] <-
          self$`id_collection`
      }
      if (!is.null(self$`spontaneous`)) {
        ReactionObject[["spontaneous"]] <-
          self$`spontaneous`
      }
      if (!is.null(self$`generic`)) {
        ReactionObject[["generic"]] <-
          self$`generic`
      }
      if (!is.null(self$`type`)) {
        ReactionObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`ec`)) {
        ReactionObject[["ec"]] <-
          self$`ec`
      }
      if (!is.null(self$`id_last_annotator`)) {
        ReactionObject[["id_last_annotator"]] <-
          self$`id_last_annotator`
      }
      if (!is.null(self$`date_modification`)) {
        ReactionObject[["date_modification"]] <-
          self$`date_modification`
      }
      if (!is.null(self$`reversible`)) {
        ReactionObject[["reversible"]] <-
          self$`reversible`
      }
      if (!is.null(self$`eq_identifier`)) {
        ReactionObject[["eq_identifier"]] <-
          self$`eq_identifier`
      }
      if (!is.null(self$`eq_name`)) {
        ReactionObject[["eq_name"]] <-
          self$`eq_name`
      }
      ReactionObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Reaction
    #'
    #' @param input_json the JSON input
    #' @return the instance of Reaction
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
      if (!is.null(this_object$`spontaneous`)) {
        self$`spontaneous` <- this_object$`spontaneous`
      }
      if (!is.null(this_object$`generic`)) {
        self$`generic` <- this_object$`generic`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`ec`)) {
        self$`ec` <- this_object$`ec`
      }
      if (!is.null(this_object$`id_last_annotator`)) {
        self$`id_last_annotator` <- this_object$`id_last_annotator`
      }
      if (!is.null(this_object$`date_modification`)) {
        self$`date_modification` <- this_object$`date_modification`
      }
      if (!is.null(this_object$`reversible`)) {
        self$`reversible` <- this_object$`reversible`
      }
      if (!is.null(this_object$`eq_identifier`)) {
        self$`eq_identifier` <- this_object$`eq_identifier`
      }
      if (!is.null(this_object$`eq_name`)) {
        self$`eq_name` <- this_object$`eq_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Reaction in JSON format
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
        if (!is.null(self$`spontaneous`)) {
          sprintf(
          '"spontaneous":
            %d
                    ',
          self$`spontaneous`
          )
        },
        if (!is.null(self$`generic`)) {
          sprintf(
          '"generic":
            %d
                    ',
          self$`generic`
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
        if (!is.null(self$`ec`)) {
          sprintf(
          '"ec":
            "%s"
                    ',
          self$`ec`
          )
        },
        if (!is.null(self$`id_last_annotator`)) {
          sprintf(
          '"id_last_annotator":
            %d
                    ',
          self$`id_last_annotator`
          )
        },
        if (!is.null(self$`date_modification`)) {
          sprintf(
          '"date_modification":
            "%s"
                    ',
          self$`date_modification`
          )
        },
        if (!is.null(self$`reversible`)) {
          sprintf(
          '"reversible":
            %d
                    ',
          self$`reversible`
          )
        },
        if (!is.null(self$`eq_identifier`)) {
          sprintf(
          '"eq_identifier":
            "%s"
                    ',
          self$`eq_identifier`
          )
        },
        if (!is.null(self$`eq_name`)) {
          sprintf(
          '"eq_name":
            "%s"
                    ',
          self$`eq_name`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Reaction
    #'
    #' @param input_json the JSON input
    #' @return the instance of Reaction
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`db_identifier` <- this_object$`db_identifier`
      self$`id_collection` <- this_object$`id_collection`
      self$`spontaneous` <- this_object$`spontaneous`
      self$`generic` <- this_object$`generic`
      self$`type` <- this_object$`type`
      self$`ec` <- this_object$`ec`
      self$`id_last_annotator` <- this_object$`id_last_annotator`
      self$`date_modification` <- this_object$`date_modification`
      self$`reversible` <- this_object$`reversible`
      self$`eq_identifier` <- this_object$`eq_identifier`
      self$`eq_name` <- this_object$`eq_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to Reaction and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Reaction
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
# Reaction$unlock()
#
## Below is an example to define the print function
# Reaction$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Reaction$lock()

