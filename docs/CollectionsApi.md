# CollectionsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETCOLLECTIONS**](CollectionsApi.md#GETCOLLECTIONS) | **GET** /collections | get Metabolic Network Collections


# **GETCOLLECTIONS**
> CollectionsResponse GETCOLLECTIONS(id = var.id, permission = var.permission)

get Metabolic Network Collections

Get public and/or private Metabolic Network Collections. If the id is specified, get the collection corresponding to this id

### Example
```R
library(metexplore3api)

# get Metabolic Network Collections
#
# prepare function argument(s)
var_id <- 56 # integer | id of the app (Optional)
var_permission <- Permission$new() # Permission | permission of the user on the collection (Optional)

api_instance <- CollectionsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETCOLLECTIONS(id = var_id, permission = var_permissiondata_file = "result.txt")
result <- api_instance$GETCOLLECTIONS(id = var_id, permission = var_permission)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| id of the app | [optional] 
 **permission** | [**Permission**](.md)| permission of the user on the collection | [optional] 

### Return type

[**CollectionsResponse**](CollectionsResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

