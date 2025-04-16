#' Create a new App
#'
#' @description
#' MetExplore App
#'
#' @docType class
#' @title App
#' @description App Class
#' @format An \code{R6Class} generator object
#' @field id id in database integer
#' @field title title of the app character
#' @field sub_title brief description of the app character
#' @field description description of the app character
#' @field route route of the app character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
App <- R6::R6Class(
  "App",
  public = list(
    `id` = NULL,
    `title` = NULL,
    `sub_title` = NULL,
    `description` = NULL,
    `route` = NULL,

    #' @description
    #' Initialize a new App class.
    #'
    #' @param id id in database
    #' @param title title of the app
    #' @param sub_title brief description of the app
    #' @param description description of the app
    #' @param route route of the app
    #' @param ... Other optional arguments.
    initialize = function(`id`, `title`, `sub_title`, `description`, `route`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`sub_title`)) {
        if (!(is.character(`sub_title`) && length(`sub_title`) == 1)) {
          stop(paste("Error! Invalid data for `sub_title`. Must be a string:", `sub_title`))
        }
        self$`sub_title` <- `sub_title`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`route`)) {
        if (!(is.character(`route`) && length(`route`) == 1)) {
          stop(paste("Error! Invalid data for `route`. Must be a string:", `route`))
        }
        self$`route` <- `route`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return App in JSON format
    toJSON = function() {
      AppObject <- list()
      if (!is.null(self$`id`)) {
        AppObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`title`)) {
        AppObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`sub_title`)) {
        AppObject[["sub_title"]] <-
          self$`sub_title`
      }
      if (!is.null(self$`description`)) {
        AppObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`route`)) {
        AppObject[["route"]] <-
          self$`route`
      }
      AppObject
    },

    #' @description
    #' Deserialize JSON string into an instance of App
    #'
    #' @param input_json the JSON input
    #' @return the instance of App
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`sub_title`)) {
        self$`sub_title` <- this_object$`sub_title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`route`)) {
        self$`route` <- this_object$`route`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return App in JSON format
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
        if (!is.null(self$`title`)) {
          sprintf(
          '"title":
            "%s"
                    ',
          self$`title`
          )
        },
        if (!is.null(self$`sub_title`)) {
          sprintf(
          '"sub_title":
            "%s"
                    ',
          self$`sub_title`
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
        if (!is.null(self$`route`)) {
          sprintf(
          '"route":
            "%s"
                    ',
          self$`route`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of App
    #'
    #' @param input_json the JSON input
    #' @return the instance of App
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`title` <- this_object$`title`
      self$`sub_title` <- this_object$`sub_title`
      self$`description` <- this_object$`description`
      self$`route` <- this_object$`route`
      self
    },

    #' @description
    #' Validate JSON input with respect to App and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `title` is missing."))
      }
      # check the required field `sub_title`
      if (!is.null(input_json$`sub_title`)) {
        if (!(is.character(input_json$`sub_title`) && length(input_json$`sub_title`) == 1)) {
          stop(paste("Error! Invalid data for `sub_title`. Must be a string:", input_json$`sub_title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `sub_title` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `description` is missing."))
      }
      # check the required field `route`
      if (!is.null(input_json$`route`)) {
        if (!(is.character(input_json$`route`) && length(input_json$`route`) == 1)) {
          stop(paste("Error! Invalid data for `route`. Must be a string:", input_json$`route`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for App: the required field `route` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of App
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `sub_title` is null
      if (is.null(self$`sub_title`)) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `route` is null
      if (is.null(self$`route`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `sub_title` is null
      if (is.null(self$`sub_title`)) {
        invalid_fields["sub_title"] <- "Non-nullable required field `sub_title` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `route` is null
      if (is.null(self$`route`)) {
        invalid_fields["route"] <- "Non-nullable required field `route` cannot be null."
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
# App$unlock()
#
## Below is an example to define the print function
# App$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# App$lock()

