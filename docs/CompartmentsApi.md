# CompartmentsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETCOMPARTMENTS**](CompartmentsApi.md#GETCOMPARTMENTS) | **GET** /compartments | get compartments in a network


# **GETCOMPARTMENTS**
> CompartmentsResponse GETCOMPARTMENTS(id_network)

get compartments in a network

get compartments in a network

### Example
```R
library(metexplore3api)

# get compartments in a network
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id of the network

api_instance <- CompartmentsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETCOMPARTMENTS(var_id_networkdata_file = "result.txt")
result <- api_instance$GETCOMPARTMENTS(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id of the network | 

### Return type

[**CompartmentsResponse**](CompartmentsResponse.md)

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

