# MetabolitesApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**COUNTMETABOLITES**](MetabolitesApi.md#COUNTMETABOLITES) | **GET** /metabolites/count | get the number of metabolites in a network
[**DELMETABOLITE**](MetabolitesApi.md#DELMETABOLITE) | **DELETE** /metabolites | del Metabolite
[**GETMETABOLITES**](MetabolitesApi.md#GETMETABOLITES) | **GET** /metabolites | get Metabolite
[**POSTMETABOLITE**](MetabolitesApi.md#POSTMETABOLITE) | **POST** /metabolites | add Metabolite
[**UPDATEMETABOLITE**](MetabolitesApi.md#UPDATEMETABOLITE) | **PATCH** /metabolites | update Metabolite


# **COUNTMETABOLITES**
> CountResponse COUNTMETABOLITES(id_network)

get the number of metabolites in a network

get the number of metabolites in a network

### Example
```R
library(metexplore3api?)

# get the number of metabolites in a network
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the metabolites

api_instance <- MetabolitesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$COUNTMETABOLITES(var_id_networkdata_file = "result.txt")
result <- api_instance$COUNTMETABOLITES(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the metabolites | 

### Return type

[**CountResponse**](CountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **DELMETABOLITE**
> MetabolitesResponse DELMETABOLITE(del_analysis_request = var.del_analysis_request)

del Metabolite

delete for Metabolite

### Example
```R
library(metexplore3api?)

# del Metabolite
#
# prepare function argument(s)
var_del_analysis_request <- delAnalysis_request$new(123) # DelAnalysisRequest |  (Optional)

api_instance <- MetabolitesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELMETABOLITE(del_analysis_request = var_del_analysis_requestdata_file = "result.txt")
result <- api_instance$DELMETABOLITE(del_analysis_request = var_del_analysis_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **del_analysis_request** | [**DelAnalysisRequest**](DelAnalysisRequest.md)|  | [optional] 

### Return type

[**MetabolitesResponse**](MetabolitesResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **GETMETABOLITES**
> MetabolitesResponse GETMETABOLITES(id = var.id, id_network = var.id_network, id_collection = var.id_collection)

get Metabolite

get from Metabolite

### Example
```R
library(metexplore3api?)

# get Metabolite
#
# prepare function argument(s)
var_id <- 56 # integer | the id for the Metabolite (Optional)
var_id_network <- 56 # integer | the id_network for the Metabolite (Optional)
var_id_collection <- 56 # integer | the id_collection for the Metabolite (Optional)

api_instance <- MetabolitesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETMETABOLITES(id = var_id, id_network = var_id_network, id_collection = var_id_collectiondata_file = "result.txt")
result <- api_instance$GETMETABOLITES(id = var_id, id_network = var_id_network, id_collection = var_id_collection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the id for the Metabolite | [optional] 
 **id_network** | **integer**| the id_network for the Metabolite | [optional] 
 **id_collection** | **integer**| the id_collection for the Metabolite | [optional] 

### Return type

[**MetabolitesResponse**](MetabolitesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **POSTMETABOLITE**
> MetabolitesResponse POSTMETABOLITE(metabolites_response = var.metabolites_response)

add Metabolite

add for Metabolite

### Example
```R
library(metexplore3api?)

# add Metabolite
#
# prepare function argument(s)
var_metabolites_response <- c(MetabolitesResponse$new("message_example", "success_example", 123, c(Metabolite$new(123, "name_example", "db_identifier_example", 123, "chemical_formula_example", "weight_example", "mono_iso_mass_example", "exact_neutral_mass_example", "average_mass_example", "generic_example", 123, "inchi_example", 123)))) # array[MetabolitesResponse] |  (Optional)

api_instance <- MetabolitesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$POSTMETABOLITE(metabolites_response = var_metabolites_responsedata_file = "result.txt")
result <- api_instance$POSTMETABOLITE(metabolites_response = var_metabolites_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metabolites_response** | list( [**MetabolitesResponse**](MetabolitesResponse.md) )|  | [optional] 

### Return type

[**MetabolitesResponse**](MetabolitesResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **UPDATEMETABOLITE**
> MetabolitesResponse UPDATEMETABOLITE(metabolites_response = var.metabolites_response)

update Metabolite

update for Metabolite

### Example
```R
library(metexplore3api?)

# update Metabolite
#
# prepare function argument(s)
var_metabolites_response <- c(MetabolitesResponse$new("message_example", "success_example", 123, c(Metabolite$new(123, "name_example", "db_identifier_example", 123, "chemical_formula_example", "weight_example", "mono_iso_mass_example", "exact_neutral_mass_example", "average_mass_example", "generic_example", 123, "inchi_example", 123)))) # array[MetabolitesResponse] |  (Optional)

api_instance <- MetabolitesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATEMETABOLITE(metabolites_response = var_metabolites_responsedata_file = "result.txt")
result <- api_instance$UPDATEMETABOLITE(metabolites_response = var_metabolites_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metabolites_response** | list( [**MetabolitesResponse**](MetabolitesResponse.md) )|  | [optional] 

### Return type

[**MetabolitesResponse**](MetabolitesResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

