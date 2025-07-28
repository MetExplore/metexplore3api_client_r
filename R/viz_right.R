#' Create a new VizRight
#'
#' @description
#' Viz right object
#'
#' @docType class
#' @title VizRight
#' @description VizRight Class
#' @format An \code{R6Class} generator object
#' @field id_viz id of the viz integer
#' @field username username of the user character
#' @field permission permission of the user on the viz \link{Permission}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VizRight <- R6::R6Class(
  "VizRight",
  public = list(
    `id_viz` = NULL,
    `username` = NULL,
    `permission` = NULL,

    #' @description
    #' Initialize a new VizRight class.
    #'
    #' @param id_viz id of the viz
    #' @param username username of the user
    #' @param permission permission of the user on the viz
    #' @param ... Other optional arguments.
    initialize = function(`id_viz`, `username`, `permission`, ...) {
      if (!missing(`id_viz`)) {
        if (!(is.numeric(`id_viz`) && length(`id_viz`) == 1)) {
          stop(paste("Error! Invalid data for `id_viz`. Must be an integer:", `id_viz`))
        }
        self$`id_viz` <- `id_viz`
      }
      if (!missing(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!missing(`permission`)) {
        if (!(`permission` %in% c())) {
          stop(paste("Error! \"", `permission`, "\" cannot be assigned to `permission`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`permission`))
        self$`permission` <- `permission`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return VizRight in JSON format
    toJSON = function() {
      VizRightObject <- list()
      if (!is.null(self$`id_viz`)) {
        VizRightObject[["id_viz"]] <-
          self$`id_viz`
      }
      if (!is.null(self$`username`)) {
        VizRightObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`permission`)) {
        VizRightObject[["permission"]] <-
          self$`permission`$toJSON()
      }
      VizRightObject
    },

    #' @description
    #' Deserialize JSON string into an instance of VizRight
    #'
    #' @param input_json the JSON input
    #' @return the instance of VizRight
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id_viz`)) {
        self$`id_viz` <- this_object$`id_viz`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`permission`)) {
        `permission_object` <- Permission$new()
        `permission_object`$fromJSON(jsonlite::toJSON(this_object$`permission`, auto_unbox = TRUE, digits = NA))
        self$`permission` <- `permission_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return VizRight in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id_viz`)) {
          sprintf(
          '"id_viz":
            %d
                    ',
          self$`id_viz`
          )
        },
        if (!is.null(self$`username`)) {
          sprintf(
          '"username":
            "%s"
                    ',
          self$`username`
          )
        },
        if (!is.null(self$`permission`)) {
          sprintf(
          '"permission":
          %s
          ',
          jsonlite::toJSON(self$`permission`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of VizRight
    #'
    #' @param input_json the JSON input
    #' @return the instance of VizRight
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id_viz` <- this_object$`id_viz`
      self$`username` <- this_object$`username`
      self$`permission` <- Permission$new()$fromJSON(jsonlite::toJSON(this_object$`permission`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to VizRight and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id_viz`
      if (!is.null(input_json$`id_viz`)) {
        if (!(is.numeric(input_json$`id_viz`) && length(input_json$`id_viz`) == 1)) {
          stop(paste("Error! Invalid data for `id_viz`. Must be an integer:", input_json$`id_viz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VizRight: the required field `id_viz` is missing."))
      }
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        if (!(is.character(input_json$`username`) && length(input_json$`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", input_json$`username`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VizRight: the required field `username` is missing."))
      }
      # check the required field `permission`
      if (!is.null(input_json$`permission`)) {
        stopifnot(R6::is.R6(input_json$`permission`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VizRight: the required field `permission` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VizRight
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id_viz` is null
      if (is.null(self$`id_viz`)) {
        return(FALSE)
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      # check if the required `permission` is null
      if (is.null(self$`permission`)) {
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
      # check if the required `id_viz` is null
      if (is.null(self$`id_viz`)) {
        invalid_fields["id_viz"] <- "Non-nullable required field `id_viz` cannot be null."
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      # check if the required `permission` is null
      if (is.null(self$`permission`)) {
        invalid_fields["permission"] <- "Non-nullable required field `permission` cannot be null."
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
# VizRight$unlock()
#
## Below is an example to define the print function
# VizRight$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VizRight$lock()

