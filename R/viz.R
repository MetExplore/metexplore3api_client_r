#' Create a new Viz
#'
#' @description
#' Saved viz object
#'
#' @docType class
#' @title Viz
#' @description Viz Class
#' @format An \code{R6Class} generator object
#' @field id database id integer [optional]
#' @field name name character [optional]
#' @field description Description of the visualisation character [optional]
#' @field date_creation Creation date of the Network (ISO 8601 full-time format) character [optional]
#' @field date_last_modif Last modification date of the Network (ISO 8601 full-time format) character [optional]
#' @field public Indicates if the Viz is public (0 or 1) numeric [optional]
#' @field json Json graph of the viz character [optional]
#' @field image_base64 Base64 image of the viz character [optional]
#' @field permission Permission of the user that does the query on the viz character [optional]
#' @field favorite Indicates if the Viz is favorite (0 or 1) numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Viz <- R6::R6Class(
  "Viz",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `date_creation` = NULL,
    `date_last_modif` = NULL,
    `public` = NULL,
    `json` = NULL,
    `image_base64` = NULL,
    `permission` = NULL,
    `favorite` = NULL,

    #' @description
    #' Initialize a new Viz class.
    #'
    #' @param id database id
    #' @param name name
    #' @param description Description of the visualisation
    #' @param date_creation Creation date of the Network (ISO 8601 full-time format)
    #' @param date_last_modif Last modification date of the Network (ISO 8601 full-time format)
    #' @param public Indicates if the Viz is public (0 or 1)
    #' @param json Json graph of the viz
    #' @param image_base64 Base64 image of the viz
    #' @param permission Permission of the user that does the query on the viz
    #' @param favorite Indicates if the Viz is favorite (0 or 1)
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `description` = NULL, `date_creation` = NULL, `date_last_modif` = NULL, `public` = NULL, `json` = NULL, `image_base64` = NULL, `permission` = NULL, `favorite` = NULL, ...) {
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
      if (!is.null(`date_creation`)) {
        if (!(is.character(`date_creation`) && length(`date_creation`) == 1)) {
          stop(paste("Error! Invalid data for `date_creation`. Must be a string:", `date_creation`))
        }
        self$`date_creation` <- `date_creation`
      }
      if (!is.null(`date_last_modif`)) {
        if (!(is.character(`date_last_modif`) && length(`date_last_modif`) == 1)) {
          stop(paste("Error! Invalid data for `date_last_modif`. Must be a string:", `date_last_modif`))
        }
        self$`date_last_modif` <- `date_last_modif`
      }
      if (!is.null(`public`)) {
        self$`public` <- `public`
      }
      if (!is.null(`json`)) {
        if (!(is.character(`json`) && length(`json`) == 1)) {
          stop(paste("Error! Invalid data for `json`. Must be a string:", `json`))
        }
        self$`json` <- `json`
      }
      if (!is.null(`image_base64`)) {
        if (!(is.character(`image_base64`) && length(`image_base64`) == 1)) {
          stop(paste("Error! Invalid data for `image_base64`. Must be a string:", `image_base64`))
        }
        self$`image_base64` <- `image_base64`
      }
      if (!is.null(`permission`)) {
        if (!(is.character(`permission`) && length(`permission`) == 1)) {
          stop(paste("Error! Invalid data for `permission`. Must be a string:", `permission`))
        }
        self$`permission` <- `permission`
      }
      if (!is.null(`favorite`)) {
        self$`favorite` <- `favorite`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Viz in JSON format
    toJSON = function() {
      VizObject <- list()
      if (!is.null(self$`id`)) {
        VizObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        VizObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        VizObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`date_creation`)) {
        VizObject[["date_creation"]] <-
          self$`date_creation`
      }
      if (!is.null(self$`date_last_modif`)) {
        VizObject[["date_last_modif"]] <-
          self$`date_last_modif`
      }
      if (!is.null(self$`public`)) {
        VizObject[["public"]] <-
          self$`public`
      }
      if (!is.null(self$`json`)) {
        VizObject[["json"]] <-
          self$`json`
      }
      if (!is.null(self$`image_base64`)) {
        VizObject[["image_base64"]] <-
          self$`image_base64`
      }
      if (!is.null(self$`permission`)) {
        VizObject[["permission"]] <-
          self$`permission`
      }
      if (!is.null(self$`favorite`)) {
        VizObject[["favorite"]] <-
          self$`favorite`
      }
      VizObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Viz
    #'
    #' @param input_json the JSON input
    #' @return the instance of Viz
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
      if (!is.null(this_object$`date_creation`)) {
        self$`date_creation` <- this_object$`date_creation`
      }
      if (!is.null(this_object$`date_last_modif`)) {
        self$`date_last_modif` <- this_object$`date_last_modif`
      }
      if (!is.null(this_object$`public`)) {
        self$`public` <- this_object$`public`
      }
      if (!is.null(this_object$`json`)) {
        self$`json` <- this_object$`json`
      }
      if (!is.null(this_object$`image_base64`)) {
        self$`image_base64` <- this_object$`image_base64`
      }
      if (!is.null(this_object$`permission`)) {
        self$`permission` <- this_object$`permission`
      }
      if (!is.null(this_object$`favorite`)) {
        self$`favorite` <- this_object$`favorite`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Viz in JSON format
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
        if (!is.null(self$`date_creation`)) {
          sprintf(
          '"date_creation":
            "%s"
                    ',
          self$`date_creation`
          )
        },
        if (!is.null(self$`date_last_modif`)) {
          sprintf(
          '"date_last_modif":
            "%s"
                    ',
          self$`date_last_modif`
          )
        },
        if (!is.null(self$`public`)) {
          sprintf(
          '"public":
            %d
                    ',
          self$`public`
          )
        },
        if (!is.null(self$`json`)) {
          sprintf(
          '"json":
            "%s"
                    ',
          self$`json`
          )
        },
        if (!is.null(self$`image_base64`)) {
          sprintf(
          '"image_base64":
            "%s"
                    ',
          self$`image_base64`
          )
        },
        if (!is.null(self$`permission`)) {
          sprintf(
          '"permission":
            "%s"
                    ',
          self$`permission`
          )
        },
        if (!is.null(self$`favorite`)) {
          sprintf(
          '"favorite":
            %d
                    ',
          self$`favorite`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Viz
    #'
    #' @param input_json the JSON input
    #' @return the instance of Viz
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`date_creation` <- this_object$`date_creation`
      self$`date_last_modif` <- this_object$`date_last_modif`
      self$`public` <- this_object$`public`
      self$`json` <- this_object$`json`
      self$`image_base64` <- this_object$`image_base64`
      self$`permission` <- this_object$`permission`
      self$`favorite` <- this_object$`favorite`
      self
    },

    #' @description
    #' Validate JSON input with respect to Viz and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Viz
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (!str_detect(self$`date_creation`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        return(FALSE)
      }

      if (!str_detect(self$`date_last_modif`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
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
      if (!str_detect(self$`date_creation`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        invalid_fields["date_creation"] <- "Invalid value for `date_creation`, must conform to the pattern ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$."
      }

      if (!str_detect(self$`date_last_modif`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        invalid_fields["date_last_modif"] <- "Invalid value for `date_last_modif`, must conform to the pattern ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$."
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
# Viz$unlock()
#
## Below is an example to define the print function
# Viz$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Viz$lock()

