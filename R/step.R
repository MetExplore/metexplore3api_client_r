#' Create a new Step
#'
#' @description
#' A step from an analysis
#'
#' @docType class
#' @title Step
#' @description Step Class
#' @format An \code{R6Class} generator object
#' @field id step id integer [optional]
#' @field id_analysis analysis id integer [optional]
#' @field name name of the step character [optional]
#' @field root Boolean that determined if its the first step of analysis or not character [optional]
#' @field type Determine what types (data, job, ...) is this step character [optional]
#' @field description Description of the step character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Step <- R6::R6Class(
  "Step",
  public = list(
    `id` = NULL,
    `id_analysis` = NULL,
    `name` = NULL,
    `root` = NULL,
    `type` = NULL,
    `description` = NULL,

    #' @description
    #' Initialize a new Step class.
    #'
    #' @param id step id
    #' @param id_analysis analysis id
    #' @param name name of the step
    #' @param root Boolean that determined if its the first step of analysis or not
    #' @param type Determine what types (data, job, ...) is this step
    #' @param description Description of the step
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `id_analysis` = NULL, `name` = NULL, `root` = NULL, `type` = NULL, `description` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`id_analysis`)) {
        if (!(is.numeric(`id_analysis`) && length(`id_analysis`) == 1)) {
          stop(paste("Error! Invalid data for `id_analysis`. Must be an integer:", `id_analysis`))
        }
        self$`id_analysis` <- `id_analysis`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`root`)) {
        if (!(is.logical(`root`) && length(`root`) == 1)) {
          stop(paste("Error! Invalid data for `root`. Must be a boolean:", `root`))
        }
        self$`root` <- `root`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("data", "job"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"data\", \"job\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Step in JSON format
    toJSON = function() {
      StepObject <- list()
      if (!is.null(self$`id`)) {
        StepObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`id_analysis`)) {
        StepObject[["id_analysis"]] <-
          self$`id_analysis`
      }
      if (!is.null(self$`name`)) {
        StepObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`root`)) {
        StepObject[["root"]] <-
          self$`root`
      }
      if (!is.null(self$`type`)) {
        StepObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`description`)) {
        StepObject[["description"]] <-
          self$`description`
      }
      StepObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Step
    #'
    #' @param input_json the JSON input
    #' @return the instance of Step
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`id_analysis`)) {
        self$`id_analysis` <- this_object$`id_analysis`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`root`)) {
        self$`root` <- this_object$`root`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("data", "job"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"data\", \"job\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Step in JSON format
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
        if (!is.null(self$`id_analysis`)) {
          sprintf(
          '"id_analysis":
            %d
                    ',
          self$`id_analysis`
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
        if (!is.null(self$`root`)) {
          sprintf(
          '"root":
            %s
                    ',
          tolower(self$`root`)
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Step
    #'
    #' @param input_json the JSON input
    #' @return the instance of Step
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`id_analysis` <- this_object$`id_analysis`
      self$`name` <- this_object$`name`
      self$`root` <- this_object$`root`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("data", "job"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"data\", \"job\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`description` <- this_object$`description`
      self
    },

    #' @description
    #' Validate JSON input with respect to Step and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Step
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
# Step$unlock()
#
## Below is an example to define the print function
# Step$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Step$lock()

