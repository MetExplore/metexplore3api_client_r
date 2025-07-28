# VizrightsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETVIZRIGHTS**](VizrightsApi.md#GETVIZRIGHTS) | **GET** /viz/rights | Get permissions on a viz


# **GETVIZRIGHTS**
> VizArrayRightResponse GETVIZRIGHTS(id)

Get permissions on a viz

Get the permissions on a visualisation. The user must be authenticated and have the read rights on the visualisation. 

### Example
```R
library(metexplore3api)

# Get permissions on a viz
#
# prepare function argument(s)
var_id <- 56 # integer | the viz id

api_instance <- VizrightsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETVIZRIGHTS(var_iddata_file = "result.txt")
result <- api_instance$GETVIZRIGHTS(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the viz id | 

### Return type

[**VizArrayRightResponse**](VizArrayRightResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

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

