# EnzymesApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETENZYMES**](EnzymesApi.md#GETENZYMES) | **GET** /enzymes | get Enzyme


# **GETENZYMES**
> EnzymesResponse GETENZYMES(id_network)

get Enzyme

get from Enzyme

### Example
```R
library(metexplore3api)

# get Enzyme
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id of the network

api_instance <- EnzymesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETENZYMES(var_id_networkdata_file = "result.txt")
result <- api_instance$GETENZYMES(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id of the network | 

### Return type

[**EnzymesResponse**](EnzymesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

