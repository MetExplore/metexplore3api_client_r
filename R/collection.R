#' Create a new Collection
#'
#' @description
#' Collection object.
#'
#' @docType class
#' @title Collection
#' @description Collection Class
#' @format An \code{R6Class} generator object
#' @field id id of the Collection: in the MetExplore database integer [optional]
#' @field name Name of the Collection character [optional]
#' @field description Description of the collection character [optional]
#' @field nb_networks Number of networks in the collection integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Collection <- R6::R6Class(
  "Collection",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `nb_networks` = NULL,

    #' @description
    #' Initialize a new Collection class.
    #'
    #' @param id id of the Collection: in the MetExplore database
    #' @param name Name of the Collection
    #' @param description Description of the collection
    #' @param nb_networks Number of networks in the collection
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `description` = NULL, `nb_networks` = NULL, ...) {
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`nb_networks`)) {
        if (!(is.numeric(`nb_networks`) && length(`nb_networks`) == 1)) {
          stop(paste("Error! Invalid data for `nb_networks`. Must be an integer:", `nb_networks`))
        }
        self$`nb_networks` <- `nb_networks`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Collection in JSON format
    toJSON = function() {
      CollectionObject <- list()
      if (!is.null(self$`id`)) {
        CollectionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CollectionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        CollectionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`nb_networks`)) {
        CollectionObject[["nb_networks"]] <-
          self$`nb_networks`
      }
      CollectionObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Collection
    #'
    #' @param input_json the JSON input
    #' @return the instance of Collection
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`nb_networks`)) {
        self$`nb_networks` <- this_object$`nb_networks`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Collection in JSON format
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`nb_networks`)) {
          sprintf(
          '"nb_networks":
            %d
                    ',
          self$`nb_networks`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Collection
    #'
    #' @param input_json the JSON input
    #' @return the instance of Collection
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`nb_networks` <- this_object$`nb_networks`
      self
    },

    #' @description
    #' Validate JSON input with respect to Collection and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Collection
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
# Collection$unlock()
#
## Below is an example to define the print function
# Collection$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Collection$lock()

