#' Create a new ApiApp
#'
#' @description
#' Api App
#'
#' @docType class
#' @title ApiApp
#' @description ApiApp Class
#' @format An \code{R6Class} generator object
#' @field id id in database integer
#' @field name name of the app character [optional]
#' @field institution institution of the app character [optional]
#' @field lab lab of the app character [optional]
#' @field description description of the app character [optional]
#' @field token token of the app character [optional]
#' @field protected If an app is protected, it can't be deleted by the api. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiApp <- R6::R6Class(
  "ApiApp",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `institution` = NULL,
    `lab` = NULL,
    `description` = NULL,
    `token` = NULL,
    `protected` = NULL,

    #' @description
    #' Initialize a new ApiApp class.
    #'
    #' @param id id in database
    #' @param name name of the app. Default to "Not defined".
    #' @param institution institution of the app. Default to "Not defined".
    #' @param lab lab of the app. Default to "Not defined".
    #' @param description description of the app. Default to "Not defined".
    #' @param token token of the app. Default to "Not defined".
    #' @param protected If an app is protected, it can't be deleted by the api.. Default to PROTECTED_0_.
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name` = "Not defined", `institution` = "Not defined", `lab` = "Not defined", `description` = "Not defined", `token` = "Not defined", `protected` = PROTECTED_0_, ...) {
      if (!missing(`id`)) {
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
      if (!is.null(`institution`)) {
        if (!(is.character(`institution`) && length(`institution`) == 1)) {
          stop(paste("Error! Invalid data for `institution`. Must be a string:", `institution`))
        }
        self$`institution` <- `institution`
      }
      if (!is.null(`lab`)) {
        if (!(is.character(`lab`) && length(`lab`) == 1)) {
          stop(paste("Error! Invalid data for `lab`. Must be a string:", `lab`))
        }
        self$`lab` <- `lab`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
      if (!is.null(`protected`)) {
        if (!(`protected` %in% c("0", "1"))) {
          stop(paste("Error! \"", `protected`, "\" cannot be assigned to `protected`. Must be \"0\", \"1\".", sep = ""))
        }
        if (!(is.numeric(`protected`) && length(`protected`) == 1)) {
          stop(paste("Error! Invalid data for `protected`. Must be an integer:", `protected`))
        }
        self$`protected` <- `protected`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return ApiApp in JSON format
    toJSON = function() {
      ApiAppObject <- list()
      if (!is.null(self$`id`)) {
        ApiAppObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ApiAppObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`institution`)) {
        ApiAppObject[["institution"]] <-
          self$`institution`
      }
      if (!is.null(self$`lab`)) {
        ApiAppObject[["lab"]] <-
          self$`lab`
      }
      if (!is.null(self$`description`)) {
        ApiAppObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`token`)) {
        ApiAppObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`protected`)) {
        ApiAppObject[["protected"]] <-
          self$`protected`
      }
      ApiAppObject
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiApp
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiApp
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`institution`)) {
        self$`institution` <- this_object$`institution`
      }
      if (!is.null(this_object$`lab`)) {
        self$`lab` <- this_object$`lab`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`protected`)) {
        if (!is.null(this_object$`protected`) && !(this_object$`protected` %in% c("0", "1"))) {
          stop(paste("Error! \"", this_object$`protected`, "\" cannot be assigned to `protected`. Must be \"0\", \"1\".", sep = ""))
        }
        self$`protected` <- this_object$`protected`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return ApiApp in JSON format
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
        if (!is.null(self$`institution`)) {
          sprintf(
          '"institution":
            "%s"
                    ',
          self$`institution`
          )
        },
        if (!is.null(self$`lab`)) {
          sprintf(
          '"lab":
            "%s"
                    ',
          self$`lab`
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
        if (!is.null(self$`token`)) {
          sprintf(
          '"token":
            "%s"
                    ',
          self$`token`
          )
        },
        if (!is.null(self$`protected`)) {
          sprintf(
          '"protected":
            %d
                    ',
          self$`protected`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiApp
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiApp
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`institution` <- this_object$`institution`
      self$`lab` <- this_object$`lab`
      self$`description` <- this_object$`description`
      self$`token` <- this_object$`token`
      if (!is.null(this_object$`protected`) && !(this_object$`protected` %in% c("0", "1"))) {
        stop(paste("Error! \"", this_object$`protected`, "\" cannot be assigned to `protected`. Must be \"0\", \"1\".", sep = ""))
      }
      self$`protected` <- this_object$`protected`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApiApp and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ApiApp: the required field `id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApiApp
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
# ApiApp$unlock()
#
## Below is an example to define the print function
# ApiApp$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApiApp$lock()

