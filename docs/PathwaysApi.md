# PathwaysApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**COUNTPATHWAYS**](PathwaysApi.md#COUNTPATHWAYS) | **GET** /pathways/count | get the number of pathways in a network
[**DELPATHWAY**](PathwaysApi.md#DELPATHWAY) | **DELETE** /pathways | del Pathway
[**GETPATHWAYS**](PathwaysApi.md#GETPATHWAYS) | **GET** /pathways | get Pathway
[**POSTPATHWAY**](PathwaysApi.md#POSTPATHWAY) | **POST** /pathways | add Pathway
[**UPDATEPATHWAY**](PathwaysApi.md#UPDATEPATHWAY) | **PATCH** /pathways | update Pathway


# **COUNTPATHWAYS**
> CountResponse COUNTPATHWAYS(id_network)

get the number of pathways in a network

get the number of pathways in a network

### Example
```R
library(metexplore3api)

# get the number of pathways in a network
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the pathways

api_instance <- PathwaysApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$COUNTPATHWAYS(var_id_networkdata_file = "result.txt")
result <- api_instance$COUNTPATHWAYS(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the pathways | 

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

# **DELPATHWAY**
> PathwaysResponse DELPATHWAY(pathway = var.pathway)

del Pathway

delete for Pathway

### Example
```R
library(metexplore3api)

# del Pathway
#
# prepare function argument(s)
var_pathway <- c(Pathway$new(123, "name_example", "db_identifier_example", 123, 123)) # array[Pathway] |  (Optional)

api_instance <- PathwaysApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELPATHWAY(pathway = var_pathwaydata_file = "result.txt")
result <- api_instance$DELPATHWAY(pathway = var_pathway)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pathway** | list( [**Pathway**](Pathway.md) )|  | [optional] 

### Return type

[**PathwaysResponse**](PathwaysResponse.md)

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

# **GETPATHWAYS**
> PathwaysResponse GETPATHWAYS(id = var.id, id_network = var.id_network, id_collection = var.id_collection)

get Pathway

get from Pathway

### Example
```R
library(metexplore3api)

# get Pathway
#
# prepare function argument(s)
var_id <- 56 # integer | the id for the Pathway (Optional)
var_id_network <- 56 # integer | the id_network for the Pathway (Optional)
var_id_collection <- 56 # integer | the id_collection for the Pathway (Optional)

api_instance <- PathwaysApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETPATHWAYS(id = var_id, id_network = var_id_network, id_collection = var_id_collectiondata_file = "result.txt")
result <- api_instance$GETPATHWAYS(id = var_id, id_network = var_id_network, id_collection = var_id_collection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the id for the Pathway | [optional] 
 **id_network** | **integer**| the id_network for the Pathway | [optional] 
 **id_collection** | **integer**| the id_collection for the Pathway | [optional] 

### Return type

[**PathwaysResponse**](PathwaysResponse.md)

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

# **POSTPATHWAY**
> PathwayResponse POSTPATHWAY(pathway = var.pathway)

add Pathway

add for Pathway

### Example
```R
library(metexplore3api)

# add Pathway
#
# prepare function argument(s)
var_pathway <- c(Pathway$new(123, "name_example", "db_identifier_example", 123, 123)) # array[Pathway] |  (Optional)

api_instance <- PathwaysApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$POSTPATHWAY(pathway = var_pathwaydata_file = "result.txt")
result <- api_instance$POSTPATHWAY(pathway = var_pathway)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pathway** | list( [**Pathway**](Pathway.md) )|  | [optional] 

### Return type

[**PathwayResponse**](PathwayResponse.md)

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

# **UPDATEPATHWAY**
> PathwaysResponse UPDATEPATHWAY(pathway = var.pathway)

update Pathway

update for Pathway

### Example
```R
library(metexplore3api)

# update Pathway
#
# prepare function argument(s)
var_pathway <- c(Pathway$new(123, "name_example", "db_identifier_example", 123, 123)) # array[Pathway] |  (Optional)

api_instance <- PathwaysApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATEPATHWAY(pathway = var_pathwaydata_file = "result.txt")
result <- api_instance$UPDATEPATHWAY(pathway = var_pathway)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pathway** | list( [**Pathway**](Pathway.md) )|  | [optional] 

### Return type

[**PathwaysResponse**](PathwaysResponse.md)

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

