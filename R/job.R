#' Create a new Job
#'
#' @description
#' Job data
#'
#' @docType class
#' @title Job
#' @description Job Class
#' @format An \code{R6Class} generator object
#' @field id id of the job character
#' @field title title of the job character
#' @field status status of the job character
#' @field log log of the job character
#' @field date date of the job character
#' @field message message of the job character [optional]
#' @field result result of the job character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Job <- R6::R6Class(
  "Job",
  public = list(
    `id` = NULL,
    `title` = NULL,
    `status` = NULL,
    `log` = NULL,
    `date` = NULL,
    `message` = NULL,
    `result` = NULL,

    #' @description
    #' Initialize a new Job class.
    #'
    #' @param id id of the job
    #' @param title title of the job
    #' @param status status of the job
    #' @param log log of the job
    #' @param date date of the job
    #' @param message message of the job
    #' @param result result of the job
    #' @param ... Other optional arguments.
    initialize = function(`id`, `title`, `status`, `log`, `date`, `message` = NULL, `result` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("failed", "finished", "running", "waiting"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"failed\", \"finished\", \"running\", \"waiting\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`log`)) {
        if (!(is.character(`log`) && length(`log`) == 1)) {
          stop(paste("Error! Invalid data for `log`. Must be a string:", `log`))
        }
        self$`log` <- `log`
      }
      if (!missing(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`result`)) {
        if (!(is.character(`result`) && length(`result`) == 1)) {
          stop(paste("Error! Invalid data for `result`. Must be a string:", `result`))
        }
        self$`result` <- `result`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Job in JSON format
    toJSON = function() {
      JobObject <- list()
      if (!is.null(self$`id`)) {
        JobObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`title`)) {
        JobObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`status`)) {
        JobObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`log`)) {
        JobObject[["log"]] <-
          self$`log`
      }
      if (!is.null(self$`date`)) {
        JobObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`message`)) {
        JobObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`result`)) {
        JobObject[["result"]] <-
          self$`result`
      }
      JobObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Job
    #'
    #' @param input_json the JSON input
    #' @return the instance of Job
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("failed", "finished", "running", "waiting"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"failed\", \"finished\", \"running\", \"waiting\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`log`)) {
        self$`log` <- this_object$`log`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- this_object$`result`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Job in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
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
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            "%s"
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`log`)) {
          sprintf(
          '"log":
            "%s"
                    ',
          self$`log`
          )
        },
        if (!is.null(self$`date`)) {
          sprintf(
          '"date":
            "%s"
                    ',
          self$`date`
          )
        },
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        },
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
            "%s"
                    ',
          self$`result`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Job
    #'
    #' @param input_json the JSON input
    #' @return the instance of Job
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`title` <- this_object$`title`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("failed", "finished", "running", "waiting"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"failed\", \"finished\", \"running\", \"waiting\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`log` <- this_object$`log`
      self$`date` <- this_object$`date`
      self$`message` <- this_object$`message`
      self$`result` <- this_object$`result`
      self
    },

    #' @description
    #' Validate JSON input with respect to Job and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Job: the required field `id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Job: the required field `title` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Job: the required field `status` is missing."))
      }
      # check the required field `log`
      if (!is.null(input_json$`log`)) {
        if (!(is.character(input_json$`log`) && length(input_json$`log`) == 1)) {
          stop(paste("Error! Invalid data for `log`. Must be a string:", input_json$`log`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Job: the required field `log` is missing."))
      }
      # check the required field `date`
      if (!is.null(input_json$`date`)) {
        if (!(is.character(input_json$`date`) && length(input_json$`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", input_json$`date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Job: the required field `date` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Job
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

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `log` is null
      if (is.null(self$`log`)) {
        return(FALSE)
      }

      if (!str_detect(self$`date`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
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

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `log` is null
      if (is.null(self$`log`)) {
        invalid_fields["log"] <- "Non-nullable required field `log` cannot be null."
      }

      if (!str_detect(self$`date`, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$")) {
        invalid_fields["date"] <- "Invalid value for `date`, must conform to the pattern ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$."
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
# Job$unlock()
#
## Below is an example to define the print function
# Job$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Job$lock()

