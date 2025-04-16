#' Create a new Pathway
#'
#' @description
#' Pathway object
#'
#' @docType class
#' @title Pathway
#' @description Pathway Class
#' @format An \code{R6Class} generator object
#' @field id database id integer [optional]
#' @field name name character [optional]
#' @field db_identifier unique identifier character [optional]
#' @field id_network id of the network integer [optional]
#' @field nb_reactions Number of reactions in the pathway integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Pathway <- R6::R6Class(
  "Pathway",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `db_identifier` = NULL,
    `id_network` = NULL,
    `nb_reactions` = NULL,

    #' @description
    #' Initialize a new Pathway class.
    #'
    #' @param id database id
    #' @param name name
    #' @param db_identifier unique identifier
    #' @param id_network id of the network
    #' @param nb_reactions Number of reactions in the pathway
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `db_identifier` = NULL, `id_network` = NULL, `nb_reactions` = NULL, ...) {
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
      if (!is.null(`id_network`)) {
        if (!(is.numeric(`id_network`) && length(`id_network`) == 1)) {
          stop(paste("Error! Invalid data for `id_network`. Must be an integer:", `id_network`))
        }
        self$`id_network` <- `id_network`
      }
      if (!is.null(`nb_reactions`)) {
        if (!(is.numeric(`nb_reactions`) && length(`nb_reactions`) == 1)) {
          stop(paste("Error! Invalid data for `nb_reactions`. Must be an integer:", `nb_reactions`))
        }
        self$`nb_reactions` <- `nb_reactions`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Pathway in JSON format
    toJSON = function() {
      PathwayObject <- list()
      if (!is.null(self$`id`)) {
        PathwayObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        PathwayObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`db_identifier`)) {
        PathwayObject[["db_identifier"]] <-
          self$`db_identifier`
      }
      if (!is.null(self$`id_network`)) {
        PathwayObject[["id_network"]] <-
          self$`id_network`
      }
      if (!is.null(self$`nb_reactions`)) {
        PathwayObject[["nb_reactions"]] <-
          self$`nb_reactions`
      }
      PathwayObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Pathway
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pathway
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
      if (!is.null(this_object$`id_network`)) {
        self$`id_network` <- this_object$`id_network`
      }
      if (!is.null(this_object$`nb_reactions`)) {
        self$`nb_reactions` <- this_object$`nb_reactions`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Pathway in JSON format
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
        if (!is.null(self$`id_network`)) {
          sprintf(
          '"id_network":
            %d
                    ',
          self$`id_network`
          )
        },
        if (!is.null(self$`nb_reactions`)) {
          sprintf(
          '"nb_reactions":
            %d
                    ',
          self$`nb_reactions`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Pathway
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pathway
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`db_identifier` <- this_object$`db_identifier`
      self$`id_network` <- this_object$`id_network`
      self$`nb_reactions` <- this_object$`nb_reactions`
      self
    },

    #' @description
    #' Validate JSON input with respect to Pathway and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Pathway
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
# Pathway$unlock()
#
## Below is an example to define the print function
# Pathway$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Pathway$lock()

