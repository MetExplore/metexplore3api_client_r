#' Create a new MatchingApiResponseAllOfResponse
#'
#' @description
#' Response from MetaboAnalyst API
#'
#' @docType class
#' @title MatchingApiResponseAllOfResponse
#' @description MatchingApiResponseAllOfResponse Class
#' @format An \code{R6Class} generator object
#' @field Query list of the queries list(character) [optional]
#' @field Match names matching in the API list(character) [optional]
#' @field HMDB HMDB IDs list(character) [optional]
#' @field PubChem PubChem IDs list(character) [optional]
#' @field ChEBI CHEBI IDs list(character) [optional]
#' @field KEGG KEGG IDs list(character) [optional]
#' @field METLIN METLIN IDs list(character) [optional]
#' @field SMILES SMILES IDs list(character) [optional]
#' @field Comment number of matches list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MatchingApiResponseAllOfResponse <- R6::R6Class(
  "MatchingApiResponseAllOfResponse",
  public = list(
    `Query` = NULL,
    `Match` = NULL,
    `HMDB` = NULL,
    `PubChem` = NULL,
    `ChEBI` = NULL,
    `KEGG` = NULL,
    `METLIN` = NULL,
    `SMILES` = NULL,
    `Comment` = NULL,

    #' @description
    #' Initialize a new MatchingApiResponseAllOfResponse class.
    #'
    #' @param Query list of the queries
    #' @param Match names matching in the API
    #' @param HMDB HMDB IDs
    #' @param PubChem PubChem IDs
    #' @param ChEBI CHEBI IDs
    #' @param KEGG KEGG IDs
    #' @param METLIN METLIN IDs
    #' @param SMILES SMILES IDs
    #' @param Comment number of matches
    #' @param ... Other optional arguments.
    initialize = function(`Query` = NULL, `Match` = NULL, `HMDB` = NULL, `PubChem` = NULL, `ChEBI` = NULL, `KEGG` = NULL, `METLIN` = NULL, `SMILES` = NULL, `Comment` = NULL, ...) {
      if (!is.null(`Query`)) {
        stopifnot(is.vector(`Query`), length(`Query`) != 0)
        sapply(`Query`, function(x) stopifnot(is.character(x)))
        self$`Query` <- `Query`
      }
      if (!is.null(`Match`)) {
        stopifnot(is.vector(`Match`), length(`Match`) != 0)
        sapply(`Match`, function(x) stopifnot(is.character(x)))
        self$`Match` <- `Match`
      }
      if (!is.null(`HMDB`)) {
        stopifnot(is.vector(`HMDB`), length(`HMDB`) != 0)
        sapply(`HMDB`, function(x) stopifnot(is.character(x)))
        self$`HMDB` <- `HMDB`
      }
      if (!is.null(`PubChem`)) {
        stopifnot(is.vector(`PubChem`), length(`PubChem`) != 0)
        sapply(`PubChem`, function(x) stopifnot(is.character(x)))
        self$`PubChem` <- `PubChem`
      }
      if (!is.null(`ChEBI`)) {
        stopifnot(is.vector(`ChEBI`), length(`ChEBI`) != 0)
        sapply(`ChEBI`, function(x) stopifnot(is.character(x)))
        self$`ChEBI` <- `ChEBI`
      }
      if (!is.null(`KEGG`)) {
        stopifnot(is.vector(`KEGG`), length(`KEGG`) != 0)
        sapply(`KEGG`, function(x) stopifnot(is.character(x)))
        self$`KEGG` <- `KEGG`
      }
      if (!is.null(`METLIN`)) {
        stopifnot(is.vector(`METLIN`), length(`METLIN`) != 0)
        sapply(`METLIN`, function(x) stopifnot(is.character(x)))
        self$`METLIN` <- `METLIN`
      }
      if (!is.null(`SMILES`)) {
        stopifnot(is.vector(`SMILES`), length(`SMILES`) != 0)
        sapply(`SMILES`, function(x) stopifnot(is.character(x)))
        self$`SMILES` <- `SMILES`
      }
      if (!is.null(`Comment`)) {
        stopifnot(is.vector(`Comment`), length(`Comment`) != 0)
        sapply(`Comment`, function(x) stopifnot(is.character(x)))
        self$`Comment` <- `Comment`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return MatchingApiResponseAllOfResponse in JSON format
    toJSON = function() {
      MatchingApiResponseAllOfResponseObject <- list()
      if (!is.null(self$`Query`)) {
        MatchingApiResponseAllOfResponseObject[["Query"]] <-
          self$`Query`
      }
      if (!is.null(self$`Match`)) {
        MatchingApiResponseAllOfResponseObject[["Match"]] <-
          self$`Match`
      }
      if (!is.null(self$`HMDB`)) {
        MatchingApiResponseAllOfResponseObject[["HMDB"]] <-
          self$`HMDB`
      }
      if (!is.null(self$`PubChem`)) {
        MatchingApiResponseAllOfResponseObject[["PubChem"]] <-
          self$`PubChem`
      }
      if (!is.null(self$`ChEBI`)) {
        MatchingApiResponseAllOfResponseObject[["ChEBI"]] <-
          self$`ChEBI`
      }
      if (!is.null(self$`KEGG`)) {
        MatchingApiResponseAllOfResponseObject[["KEGG"]] <-
          self$`KEGG`
      }
      if (!is.null(self$`METLIN`)) {
        MatchingApiResponseAllOfResponseObject[["METLIN"]] <-
          self$`METLIN`
      }
      if (!is.null(self$`SMILES`)) {
        MatchingApiResponseAllOfResponseObject[["SMILES"]] <-
          self$`SMILES`
      }
      if (!is.null(self$`Comment`)) {
        MatchingApiResponseAllOfResponseObject[["Comment"]] <-
          self$`Comment`
      }
      MatchingApiResponseAllOfResponseObject
    },

    #' @description
    #' Deserialize JSON string into an instance of MatchingApiResponseAllOfResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MatchingApiResponseAllOfResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Query`)) {
        self$`Query` <- ApiClient$new()$deserializeObj(this_object$`Query`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`Match`)) {
        self$`Match` <- ApiClient$new()$deserializeObj(this_object$`Match`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`HMDB`)) {
        self$`HMDB` <- ApiClient$new()$deserializeObj(this_object$`HMDB`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`PubChem`)) {
        self$`PubChem` <- ApiClient$new()$deserializeObj(this_object$`PubChem`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`ChEBI`)) {
        self$`ChEBI` <- ApiClient$new()$deserializeObj(this_object$`ChEBI`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`KEGG`)) {
        self$`KEGG` <- ApiClient$new()$deserializeObj(this_object$`KEGG`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`METLIN`)) {
        self$`METLIN` <- ApiClient$new()$deserializeObj(this_object$`METLIN`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`SMILES`)) {
        self$`SMILES` <- ApiClient$new()$deserializeObj(this_object$`SMILES`, "array[character]", loadNamespace("metexplore3api"))
      }
      if (!is.null(this_object$`Comment`)) {
        self$`Comment` <- ApiClient$new()$deserializeObj(this_object$`Comment`, "array[character]", loadNamespace("metexplore3api"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return MatchingApiResponseAllOfResponse in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`Query`)) {
          sprintf(
          '"Query":
             [%s]
          ',
          paste(unlist(lapply(self$`Query`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`Match`)) {
          sprintf(
          '"Match":
             [%s]
          ',
          paste(unlist(lapply(self$`Match`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`HMDB`)) {
          sprintf(
          '"HMDB":
             [%s]
          ',
          paste(unlist(lapply(self$`HMDB`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`PubChem`)) {
          sprintf(
          '"PubChem":
             [%s]
          ',
          paste(unlist(lapply(self$`PubChem`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`ChEBI`)) {
          sprintf(
          '"ChEBI":
             [%s]
          ',
          paste(unlist(lapply(self$`ChEBI`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`KEGG`)) {
          sprintf(
          '"KEGG":
             [%s]
          ',
          paste(unlist(lapply(self$`KEGG`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`METLIN`)) {
          sprintf(
          '"METLIN":
             [%s]
          ',
          paste(unlist(lapply(self$`METLIN`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`SMILES`)) {
          sprintf(
          '"SMILES":
             [%s]
          ',
          paste(unlist(lapply(self$`SMILES`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`Comment`)) {
          sprintf(
          '"Comment":
             [%s]
          ',
          paste(unlist(lapply(self$`Comment`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of MatchingApiResponseAllOfResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MatchingApiResponseAllOfResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Query` <- ApiClient$new()$deserializeObj(this_object$`Query`, "array[character]", loadNamespace("metexplore3api"))
      self$`Match` <- ApiClient$new()$deserializeObj(this_object$`Match`, "array[character]", loadNamespace("metexplore3api"))
      self$`HMDB` <- ApiClient$new()$deserializeObj(this_object$`HMDB`, "array[character]", loadNamespace("metexplore3api"))
      self$`PubChem` <- ApiClient$new()$deserializeObj(this_object$`PubChem`, "array[character]", loadNamespace("metexplore3api"))
      self$`ChEBI` <- ApiClient$new()$deserializeObj(this_object$`ChEBI`, "array[character]", loadNamespace("metexplore3api"))
      self$`KEGG` <- ApiClient$new()$deserializeObj(this_object$`KEGG`, "array[character]", loadNamespace("metexplore3api"))
      self$`METLIN` <- ApiClient$new()$deserializeObj(this_object$`METLIN`, "array[character]", loadNamespace("metexplore3api"))
      self$`SMILES` <- ApiClient$new()$deserializeObj(this_object$`SMILES`, "array[character]", loadNamespace("metexplore3api"))
      self$`Comment` <- ApiClient$new()$deserializeObj(this_object$`Comment`, "array[character]", loadNamespace("metexplore3api"))
      self
    },

    #' @description
    #' Validate JSON input with respect to MatchingApiResponseAllOfResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MatchingApiResponseAllOfResponse
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
# MatchingApiResponseAllOfResponse$unlock()
#
## Below is an example to define the print function
# MatchingApiResponseAllOfResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MatchingApiResponseAllOfResponse$lock()

