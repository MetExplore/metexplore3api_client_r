#' Create a new Compartment
#'
#' @description
#' Gene object
#'
#' @docType class
#' @title Compartment
#' @description Compartment Class
#' @format An \code{R6Class} generator object
#' @field id database id integer [optional]
#' @field name name character [optional]
#' @field db_identifier unique identifier character [optional]
#' @field id_network id of the network integer [optional]
#' @field spatial_dimensions number of spatial dimensions possessed by the compartment integer [optional]
#' @field units measurement unit associated with the value of the compartment’s size attribute character [optional]
#' @field constant indicates whether the compart41 ment’s size stays constant (1) or can vary during a simulation (0) integer [optional]
#' @field size can be used to set the initial size of the compartment. The size may correspond to a volume (if the compartment is a three-dimensional one), or it may be an area (if the compartment is two-dimensional), or a length (if the compartment is one-dimensional) integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Compartment <- R6::R6Class(
  "Compartment",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `db_identifier` = NULL,
    `id_network` = NULL,
    `spatial_dimensions` = NULL,
    `units` = NULL,
    `constant` = NULL,
    `size` = NULL,

    #' @description
    #' Initialize a new Compartment class.
    #'
    #' @param id database id
    #' @param name name
    #' @param db_identifier unique identifier
    #' @param id_network id of the network
    #' @param spatial_dimensions number of spatial dimensions possessed by the compartment. Default to 3.
    #' @param units measurement unit associated with the value of the compartment’s size attribute. Default to "dimensionless".
    #' @param constant indicates whether the compart41 ment’s size stays constant (1) or can vary during a simulation (0). Default to 1.
    #' @param size can be used to set the initial size of the compartment. The size may correspond to a volume (if the compartment is a three-dimensional one), or it may be an area (if the compartment is two-dimensional), or a length (if the compartment is one-dimensional). Default to 0.
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `db_identifier` = NULL, `id_network` = NULL, `spatial_dimensions` = 3, `units` = "dimensionless", `constant` = 1, `size` = 0, ...) {
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
      if (!is.null(`spatial_dimensions`)) {
        if (!(is.numeric(`spatial_dimensions`) && length(`spatial_dimensions`) == 1)) {
          stop(paste("Error! Invalid data for `spatial_dimensions`. Must be an integer:", `spatial_dimensions`))
        }
        self$`spatial_dimensions` <- `spatial_dimensions`
      }
      if (!is.null(`units`)) {
        if (!(is.character(`units`) && length(`units`) == 1)) {
          stop(paste("Error! Invalid data for `units`. Must be a string:", `units`))
        }
        self$`units` <- `units`
      }
      if (!is.null(`constant`)) {
        if (!(is.numeric(`constant`) && length(`constant`) == 1)) {
          stop(paste("Error! Invalid data for `constant`. Must be an integer:", `constant`))
        }
        self$`constant` <- `constant`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Compartment in JSON format
    toJSON = function() {
      CompartmentObject <- list()
      if (!is.null(self$`id`)) {
        CompartmentObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CompartmentObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`db_identifier`)) {
        CompartmentObject[["db_identifier"]] <-
          self$`db_identifier`
      }
      if (!is.null(self$`id_network`)) {
        CompartmentObject[["id_network"]] <-
          self$`id_network`
      }
      if (!is.null(self$`spatial_dimensions`)) {
        CompartmentObject[["spatial_dimensions"]] <-
          self$`spatial_dimensions`
      }
      if (!is.null(self$`units`)) {
        CompartmentObject[["units"]] <-
          self$`units`
      }
      if (!is.null(self$`constant`)) {
        CompartmentObject[["constant"]] <-
          self$`constant`
      }
      if (!is.null(self$`size`)) {
        CompartmentObject[["size"]] <-
          self$`size`
      }
      CompartmentObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Compartment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Compartment
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
      if (!is.null(this_object$`spatial_dimensions`)) {
        self$`spatial_dimensions` <- this_object$`spatial_dimensions`
      }
      if (!is.null(this_object$`units`)) {
        self$`units` <- this_object$`units`
      }
      if (!is.null(this_object$`constant`)) {
        self$`constant` <- this_object$`constant`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Compartment in JSON format
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
        if (!is.null(self$`spatial_dimensions`)) {
          sprintf(
          '"spatial_dimensions":
            %d
                    ',
          self$`spatial_dimensions`
          )
        },
        if (!is.null(self$`units`)) {
          sprintf(
          '"units":
            "%s"
                    ',
          self$`units`
          )
        },
        if (!is.null(self$`constant`)) {
          sprintf(
          '"constant":
            %d
                    ',
          self$`constant`
          )
        },
        if (!is.null(self$`size`)) {
          sprintf(
          '"size":
            %d
                    ',
          self$`size`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Compartment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Compartment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`db_identifier` <- this_object$`db_identifier`
      self$`id_network` <- this_object$`id_network`
      self$`spatial_dimensions` <- this_object$`spatial_dimensions`
      self$`units` <- this_object$`units`
      self$`constant` <- this_object$`constant`
      self$`size` <- this_object$`size`
      self
    },

    #' @description
    #' Validate JSON input with respect to Compartment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Compartment
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
# Compartment$unlock()
#
## Below is an example to define the print function
# Compartment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Compartment$lock()

