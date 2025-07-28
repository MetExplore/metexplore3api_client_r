# ProteinsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETPROTEINS**](ProteinsApi.md#GETPROTEINS) | **GET** /proteins | get Protein


# **GETPROTEINS**
> ProteinsResponse GETPROTEINS(id = var.id, id_network = var.id_network, id_collection = var.id_collection)

get Protein

get from Protein

### Example
```R
library(metexplore3api)

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

