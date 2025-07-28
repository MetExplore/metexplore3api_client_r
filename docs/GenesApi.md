# GenesApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETGENES**](GenesApi.md#GETGENES) | **GET** /genes | get Gene


# **GETGENES**
> GenesResponse GETGENES(id_network)

get Gene

get from Gene

### Example
```R
library(metexplore3api)

# get Gene
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the Gene

api_instance <- GenesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETGENES(var_id_networkdata_file = "result.txt")
result <- api_instance$GETGENES(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the Gene | 

### Return type

[**GenesResponse**](GenesResponse.md)

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

