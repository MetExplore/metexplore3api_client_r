# ProteinsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**COUNTPROTEINS**](ProteinsApi.md#COUNTPROTEINS) | **GET** /proteins/count | get the number of proteins for a network
[**DELPROTEIN**](ProteinsApi.md#DELPROTEIN) | **DELETE** /proteins | del Protein
[**GETPROTEINS**](ProteinsApi.md#GETPROTEINS) | **GET** /proteins | get Protein
[**POSTPROTEIN**](ProteinsApi.md#POSTPROTEIN) | **POST** /proteins | add Protein
[**UPDATEPROTEIN**](ProteinsApi.md#UPDATEPROTEIN) | **PATCH** /proteins | update Protein


# **COUNTPROTEINS**
> CountResponse COUNTPROTEINS(id_network)

get the number of proteins for a network

get the number of proteins for a network

### Example
```R
library(metexplore3api?)

# get the number of proteins for a network
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the proteins

api_instance <- ProteinsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$COUNTPROTEINS(var_id_networkdata_file = "result.txt")
result <- api_instance$COUNTPROTEINS(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the proteins | 

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

# **DELPROTEIN**
> ProteinsResponse DELPROTEIN(protein = var.protein)

del Protein

delete for Protein

### Example
```R
library(metexplore3api?)

# del Protein
#
# prepare function argument(s)
var_protein <- c(Protein$new(123, "name_example", "db_identifier_example", 123)) # array[Protein] |  (Optional)

api_instance <- ProteinsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELPROTEIN(protein = var_proteindata_file = "result.txt")
result <- api_instance$DELPROTEIN(protein = var_protein)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein** | list( [**Protein**](Protein.md) )|  | [optional] 

### Return type

[**ProteinsResponse**](ProteinsResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **GETPROTEINS**
> ProteinsResponse GETPROTEINS(id = var.id, id_network = var.id_network, id_collection = var.id_collection)

get Protein

get from Protein

### Example
```R
library(metexplore3api?)

# get Protein
#
# prepare function argument(s)
var_id <- 56 # integer | the id for the Protein (Optional)
var_id_network <- 56 # integer | the id_network for the Protein (Optional)
var_id_collection <- 56 # integer | the id_collection for the Protein (Optional)

api_instance <- ProteinsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETPROTEINS(id = var_id, id_network = var_id_network, id_collection = var_id_collectiondata_file = "result.txt")
result <- api_instance$GETPROTEINS(id = var_id, id_network = var_id_network, id_collection = var_id_collection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the id for the Protein | [optional] 
 **id_network** | **integer**| the id_network for the Protein | [optional] 
 **id_collection** | **integer**| the id_collection for the Protein | [optional] 

### Return type

[**ProteinsResponse**](ProteinsResponse.md)

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

# **POSTPROTEIN**
> ProteinResponse POSTPROTEIN(protein = var.protein)

add Protein

add for Protein

### Example
```R
library(metexplore3api?)

# add Protein
#
# prepare function argument(s)
var_protein <- c(Protein$new(123, "name_example", "db_identifier_example", 123)) # array[Protein] |  (Optional)

api_instance <- ProteinsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$POSTPROTEIN(protein = var_proteindata_file = "result.txt")
result <- api_instance$POSTPROTEIN(protein = var_protein)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein** | list( [**Protein**](Protein.md) )|  | [optional] 

### Return type

[**ProteinResponse**](ProteinResponse.md)

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

# **UPDATEPROTEIN**
> ProteinsResponse UPDATEPROTEIN(protein = var.protein)

update Protein

update for Protein

### Example
```R
library(metexplore3api?)

# update Protein
#
# prepare function argument(s)
var_protein <- c(Protein$new(123, "name_example", "db_identifier_example", 123)) # array[Protein] |  (Optional)

api_instance <- ProteinsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATEPROTEIN(protein = var_proteindata_file = "result.txt")
result <- api_instance$UPDATEPROTEIN(protein = var_protein)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein** | list( [**Protein**](Protein.md) )|  | [optional] 

### Return type

[**ProteinsResponse**](ProteinsResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

