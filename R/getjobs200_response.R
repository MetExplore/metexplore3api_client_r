#' @docType class
#' @title GETJOBS200Response
#'
#' @description GETJOBS200Response Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GETJOBS200Response <- R6::R6Class(
  "GETJOBS200Response",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("JobResponse", "JobsResponse"),

    #' @description
    #' Initialize a new GETJOBS200Response.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "JobResponse", "JobsResponse"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "JobResponse") {
        self$actual_instance <- instance
        self$actual_type <- "JobResponse"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "JobsResponse") {
        self$actual_instance <- instance
        self$actual_type <- "JobsResponse"
      } else {
        stop(paste("Failed to initialize GETJOBS200Response with anyOf schemas JobResponse, JobsResponse. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of GETJOBS200Response.
    #' An alias to the method `fromJSON`.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of GETJOBS200Response.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of GETJOBS200Response.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of GETJOBS200Response.
    fromJSON = function(input) {
      error_messages <- list()

      `JobsResponse_result` <- tryCatch({
          `JobsResponse`$public_methods$validateJSON(input)
          `JobsResponse_instance` <- `JobsResponse`$new()
          self$actual_instance <- `JobsResponse_instance`$fromJSON(input)
          self$actual_type <- "JobsResponse"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`JobsResponse_result`["error"])) {
        error_messages <- append(error_messages, `JobsResponse_result`["message"])
      }

      `JobResponse_result` <- tryCatch({
          `JobResponse`$public_methods$validateJSON(input)
          `JobResponse_instance` <- `JobResponse`$new()
          self$actual_instance <- `JobResponse_instance`$fromJSON(input)
          self$actual_type <- "JobResponse"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`JobResponse_result`["error"])) {
        error_messages <- append(error_messages, `JobResponse_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into GETJOBS200Response with anyOf schemas JobResponse, JobsResponse. Details: >>",
                 paste(error_messages, collapse = " >> ")))
    },

    #' @description
    #' Serialize GETJOBS200Response to JSON string.
    #'
    #' @return JSON string representation of the GETJOBS200Response.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify((self$actual_instance$toJSONString())))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize GETJOBS200Response to JSON.
    #'
    #' @return JSON representation of the GETJOBS200Response.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to GETJOBS200Response and
    #' throw exception if invalid.
    #'
    #' @param input The input JSON.
    validateJSON = function(input) {
      # backup current values
      actual_instance_bak <- self$actual_instance
      actual_type_bak <- self$actual_type

      # if it's not valid, an error will be thrown
      self$fromJSON(input)

      # no error thrown, restore old values
      self$actual_instance <- actual_instance_bak
      self$actual_type <- actual_type_bak
    },

    #' @description
    #' Returns the string representation of the instance.
    #'
    #' @return The string representation of the instance.
    toString = function() {
      jsoncontent <- c(
        sprintf('"actual_instance": %s', if (is.null(self$actual_instance)) NULL else self$actual_instance$toJSONString()),
        sprintf('"actual_type": "%s"', self$actual_type),
        sprintf('"any_of": "%s"', paste(unlist(self$any_of), collapse = ", "))
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::prettify(paste("{", jsoncontent, "}", sep = "")))
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
#GETJOBS200Response$unlock()
#
## Below is an example to define the print function
#GETJOBS200Response$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#GETJOBS200Response$lock()

