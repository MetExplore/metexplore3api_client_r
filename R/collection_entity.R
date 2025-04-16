#' Create a new CollectionEntity
#'
#' @description
#' Entity linked to a Collection
#'
#' @docType class
#' @title CollectionEntity
#' @description CollectionEntity Class
#' @format An \code{R6Class} generator object
#' @field id database id integer [optional]
#' @field name name character [optional]
#' @field db_identifier unique identifier character [optional]
#' @field id_collection id of the collection integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CollectionEntity <- R6::R6Class(
  "CollectionEntity",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `db_identifier` = NULL,
    `id_collection` = NULL,

    #' @description
    #' Initialize a new CollectionEntity class.
    #'
    #' @param id database id
    #' @param name name
    #' @param db_identifier unique identifier
    #' @param id_collection id of the collection
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `db_identifier` = NULL, `id_collection` = NULL, ...) {
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
    },

    #' @description
    #' To JSON String
    #'
    #' @return CollectionEntity in JSON format
    toJSON = function() {
      CollectionEntityObject <- list()
      if (!is.null(self$`id`)) {
        CollectionEntityObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CollectionEntityObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`db_identifier`)) {
        CollectionEntityObject[["db_identifier"]] <-
          self$`db_identifier`
      }
      if (!is.null(self$`id_collection`)) {
        CollectionEntityObject[["id_collection"]] <-
          self$`id_collection`
      }
      CollectionEntityObject
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionEntity
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
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return CollectionEntity in JSON format
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionEntity
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`db_identifier` <- this_object$`db_identifier`
      self$`id_collection` <- this_object$`id_collection`
      self
    },

    #' @description
    #' Validate JSON input with respect to CollectionEntity and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CollectionEntity
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
# CollectionEntity$unlock()
#
## Below is an example to define the print function
# CollectionEntity$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CollectionEntity$lock()

