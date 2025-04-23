# AppsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETAPPS**](AppsApi.md#GETAPPS) | **GET** /apps | get MetExplore apps


# **GETAPPS**
> GETAPPS200Response GETAPPS(id = var.id)

get MetExplore apps

get the list and description of the MetExplore apps

### Example
```R
library(metexplore3api)

# get MetExplore apps
#
# prepare function argument(s)
var_id <- 56 # integer | id of the app (Optional)

api_instance <- AppsApi$new()
# Configure API key authorization: appAuth
api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETAPPS(id = var_iddata_file = "result.txt")
result <- api_instance$GETAPPS(id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| id of the app | [optional] 

### Return type

[**GETAPPS200Response**](GET_APPS_200_response.md)

### Authorization

[appAuth](../README.md#appAuth)

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

