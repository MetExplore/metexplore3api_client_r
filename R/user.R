#' Create a new User
#'
#' @description
#' User data
#'
#' @docType class
#' @title User
#' @description User Class
#' @format An \code{R6Class} generator object
#' @field id id of the user in the MetExplore database integer [optional]
#' @field full_name Full name of the user character [optional]
#' @field login Name of the user, used to logged in character [optional]
#' @field email email of the user character [optional]
#' @field password Password of the user character [optional]
#' @field last_visit_date Date of the user's last visit character [optional]
#' @field registration_date Date of the user's registration character [optional]
#' @field token token of the user, returned when login character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
User <- R6::R6Class(
  "User",
  public = list(
    `id` = NULL,
    `full_name` = NULL,
    `login` = NULL,
    `email` = NULL,
    `password` = NULL,
    `last_visit_date` = NULL,
    `registration_date` = NULL,
    `token` = NULL,

    #' @description
    #' Initialize a new User class.
    #'
    #' @param id id of the user in the MetExplore database
    #' @param full_name Full name of the user
    #' @param login Name of the user, used to logged in
    #' @param email email of the user
    #' @param password Password of the user
    #' @param last_visit_date Date of the user's last visit
    #' @param registration_date Date of the user's registration
    #' @param token token of the user, returned when login
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `full_name` = NULL, `login` = NULL, `email` = NULL, `password` = NULL, `last_visit_date` = NULL, `registration_date` = NULL, `token` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`full_name`)) {
        if (!(is.character(`full_name`) && length(`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", `full_name`))
        }
        self$`full_name` <- `full_name`
      }
      if (!is.null(`login`)) {
        if (!(is.character(`login`) && length(`login`) == 1)) {
          stop(paste("Error! Invalid data for `login`. Must be a string:", `login`))
        }
        self$`login` <- `login`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!is.null(`last_visit_date`)) {
        if (!(is.character(`last_visit_date`) && length(`last_visit_date`) == 1)) {
          stop(paste("Error! Invalid data for `last_visit_date`. Must be a string:", `last_visit_date`))
        }
        self$`last_visit_date` <- `last_visit_date`
      }
      if (!is.null(`registration_date`)) {
        if (!(is.character(`registration_date`) && length(`registration_date`) == 1)) {
          stop(paste("Error! Invalid data for `registration_date`. Must be a string:", `registration_date`))
        }
        self$`registration_date` <- `registration_date`
      }
      if (!is.null(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return User in JSON format
    toJSON = function() {
      UserObject <- list()
      if (!is.null(self$`id`)) {
        UserObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`full_name`)) {
        UserObject[["full_name"]] <-
          self$`full_name`
      }
      if (!is.null(self$`login`)) {
        UserObject[["login"]] <-
          self$`login`
      }
      if (!is.null(self$`email`)) {
        UserObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`password`)) {
        UserObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`last_visit_date`)) {
        UserObject[["last_visit_date"]] <-
          self$`last_visit_date`
      }
      if (!is.null(self$`registration_date`)) {
        UserObject[["registration_date"]] <-
          self$`registration_date`
      }
      if (!is.null(self$`token`)) {
        UserObject[["token"]] <-
          self$`token`
      }
      UserObject
    },

    #' @description
    #' Deserialize JSON string into an instance of User
    #'
    #' @param input_json the JSON input
    #' @return the instance of User
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`full_name`)) {
        self$`full_name` <- this_object$`full_name`
      }
      if (!is.null(this_object$`login`)) {
        self$`login` <- this_object$`login`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`last_visit_date`)) {
        self$`last_visit_date` <- this_object$`last_visit_date`
      }
      if (!is.null(this_object$`registration_date`)) {
        self$`registration_date` <- this_object$`registration_date`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return User in JSON format
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
        if (!is.null(self$`full_name`)) {
          sprintf(
          '"full_name":
            "%s"
                    ',
          self$`full_name`
          )
        },
        if (!is.null(self$`login`)) {
          sprintf(
          '"login":
            "%s"
                    ',
          self$`login`
          )
        },
        if (!is.null(self$`email`)) {
          sprintf(
          '"email":
            "%s"
                    ',
          self$`email`
          )
        },
        if (!is.null(self$`password`)) {
          sprintf(
          '"password":
            "%s"
                    ',
          self$`password`
          )
        },
        if (!is.null(self$`last_visit_date`)) {
          sprintf(
          '"last_visit_date":
            "%s"
                    ',
          self$`last_visit_date`
          )
        },
        if (!is.null(self$`registration_date`)) {
          sprintf(
          '"registration_date":
            "%s"
                    ',
          self$`registration_date`
          )
        },
        if (!is.null(self$`token`)) {
          sprintf(
          '"token":
            "%s"
                    ',
          self$`token`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of User
    #'
    #' @param input_json the JSON input
    #' @return the instance of User
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`full_name` <- this_object$`full_name`
      self$`login` <- this_object$`login`
      self$`email` <- this_object$`email`
      self$`password` <- this_object$`password`
      self$`last_visit_date` <- this_object$`last_visit_date`
      self$`registration_date` <- this_object$`registration_date`
      self$`token` <- this_object$`token`
      self
    },

    #' @description
    #' Validate JSON input with respect to User and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of User
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (!str_detect(self$`last_visit_date`, "^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}$")) {
        return(FALSE)
      }

      if (!str_detect(self$`registration_date`, "^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}$")) {
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
      if (!str_detect(self$`last_visit_date`, "^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}$")) {
        invalid_fields["last_visit_date"] <- "Invalid value for `last_visit_date`, must conform to the pattern ^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}$."
      }

      if (!str_detect(self$`registration_date`, "^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}$")) {
        invalid_fields["registration_date"] <- "Invalid value for `registration_date`, must conform to the pattern ^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}$."
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
# User$unlock()
#
## Below is an example to define the print function
# User$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# User$lock()

