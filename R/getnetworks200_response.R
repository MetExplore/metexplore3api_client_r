#' @docType class
#' @title GETNETWORKS200Response
#'
#' @description GETNETWORKS200Response Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GETNETWORKS200Response <- R6::R6Class(
  "GETNETWORKS200Response",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("GraphResponse", "GraphsResponse", "NetworkResponse", "NetworksResponse"),

    #' @description
    #' Initialize a new GETNETWORKS200Response.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "GraphResponse", "GraphsResponse", "NetworkResponse", "NetworksResponse"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "GraphResponse") {
        self$actual_instance <- instance
        self$actual_type <- "GraphResponse"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "GraphsResponse") {
        self$actual_instance <- instance
        self$actual_type <- "GraphsResponse"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NetworkResponse") {
        self$actual_instance <- instance
        self$actual_type <- "NetworkResponse"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NetworksResponse") {
        self$actual_instance <- instance
        self$actual_type <- "NetworksResponse"
      } else {
        stop(paste("Failed to initialize GETNETWORKS200Response with anyOf schemas GraphResponse, GraphsResponse, NetworkResponse, NetworksResponse. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of GETNETWORKS200Response.
    #' An alias to the method `fromJSON`.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of GETNETWORKS200Response.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of GETNETWORKS200Response.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of GETNETWORKS200Response.
    fromJSON = function(input) {
      error_messages <- list()

      `NetworksResponse_result` <- tryCatch({
          `NetworksResponse`$public_methods$validateJSON(input)
          `NetworksResponse_instance` <- `NetworksResponse`$new()
          self$actual_instance <- `NetworksResponse_instance`$fromJSON(input)
          self$actual_type <- "NetworksResponse"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`NetworksResponse_result`["error"])) {
        error_messages <- append(error_messages, `NetworksResponse_result`["message"])
      }

      `NetworkResponse_result` <- tryCatch({
          `NetworkResponse`$public_methods$validateJSON(input)
          `NetworkResponse_instance` <- `NetworkResponse`$new()
          self$actual_instance <- `NetworkResponse_instance`$fromJSON(input)
          self$actual_type <- "NetworkResponse"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`NetworkResponse_result`["error"])) {
        error_messages <- append(error_messages, `NetworkResponse_result`["message"])
      }

      `GraphsResponse_result` <- tryCatch({
          `GraphsResponse`$public_methods$validateJSON(input)
          `GraphsResponse_instance` <- `GraphsResponse`$new()
          self$actual_instance <- `GraphsResponse_instance`$fromJSON(input)
          self$actual_type <- "GraphsResponse"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`GraphsResponse_result`["error"])) {
        error_messages <- append(error_messages, `GraphsResponse_result`["message"])
      }

      `GraphResponse_result` <- tryCatch({
          `GraphResponse`$public_methods$validateJSON(input)
          `GraphResponse_instance` <- `GraphResponse`$new()
          self$actual_instance <- `GraphResponse_instance`$fromJSON(input)
          self$actual_type <- "GraphResponse"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`GraphResponse_result`["error"])) {
        error_messages <- append(error_messages, `GraphResponse_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into GETNETWORKS200Response with anyOf schemas GraphResponse, GraphsResponse, NetworkResponse, NetworksResponse. Details: >>",
                 paste(error_messages, collapse = " >> ")))
    },

    #' @description
    #' Serialize GETNETWORKS200Response to JSON string.
    #'
    #' @return JSON string representation of the GETNETWORKS200Response.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify((self$actual_instance$toJSONString())))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize GETNETWORKS200Response to JSON.
    #'
    #' @return JSON representation of the GETNETWORKS200Response.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to GETNETWORKS200Response and
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
#GETNETWORKS200Response$unlock()
#
## Below is an example to define the print function
#GETNETWORKS200Response$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#GETNETWORKS200Response$lock()

