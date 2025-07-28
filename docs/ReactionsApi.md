# ReactionsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETREACTIONS**](ReactionsApi.md#GETREACTIONS) | **GET** /reactions | get Reaction


# **GETREACTIONS**
> ReactionsResponse GETREACTIONS(id_network = var.id_network, id_collection = var.id_collection)

get Reaction

getReaction from Reaction

### Example
```R
library(metexplore3api)

# get Reaction
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id of the network (Optional)
var_id_collection <- 56 # integer | the id of the collection for the Reaction (Optional)

api_instance <- ReactionsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETREACTIONS(id_network = var_id_network, id_collection = var_id_collectiondata_file = "result.txt")
result <- api_instance$GETREACTIONS(id_network = var_id_network, id_collection = var_id_collection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id of the network | [optional] 
 **id_collection** | **integer**| the id of the collection for the Reaction | [optional] 

### Return type

[**ReactionsResponse**](ReactionsResponse.md)

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

