# ApiAppsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddApp**](ApiAppsApi.md#AddApp) | **POST** /apiapps | add an app and generate a token
[**DelApiApp**](ApiAppsApi.md#DelApiApp) | **DELETE** /apiapps | delete an api app. Requires admin authentification
[**GetApiApps**](ApiAppsApi.md#GetApiApps) | **GET** /apiapps | get api apps
[**UpdateApiApp**](ApiAppsApi.md#UpdateApiApp) | **PATCH** /apiapps | update Api App


# **AddApp**
> ApiAppResponse AddApp(api_app = var.api_app)

add an app and generate a token

add an app and generate a token

### Example
```R
library(metexplore3api)

# add an app and generate a token
#
# prepare function argument(s)
var_api_app <- c(ApiApp$new(123, "name_example", "institution_example", "lab_example", "description_example", "token_example", 123)) # array[ApiApp] |  (Optional)

api_instance <- ApiAppsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddApp(api_app = var_api_appdata_file = "result.txt")
result <- api_instance$AddApp(api_app = var_api_app)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_app** | list( [**ApiApp**](ApiApp.md) )|  | [optional] 

### Return type

[**ApiAppResponse**](ApiAppResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **DelApiApp**
> BaseResponse DelApiApp(del_analysis_request = var.del_analysis_request)

delete an api app. Requires admin authentification

Delete an api app. Requires admin authentification. The app that are protected can't be deleted by the api.

### Example
```R
library(metexplore3api)

# delete an api app. Requires admin authentification
#
# prepare function argument(s)
var_del_analysis_request <- delAnalysis_request$new(123) # DelAnalysisRequest |  (Optional)

api_instance <- ApiAppsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DelApiApp(del_analysis_request = var_del_analysis_requestdata_file = "result.txt")
result <- api_instance$DelApiApp(del_analysis_request = var_del_analysis_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **del_analysis_request** | [**DelAnalysisRequest**](DelAnalysisRequest.md)|  | [optional] 

### Return type

[**BaseResponse**](BaseResponse.md)

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

# **GetApiApps**
> ApiAppsResponse GetApiApps(id = var.id)

get api apps

get api apps : if no id specified, all the apps ; else only the one with corresponding id. Must be in admin mode.

### Example
```R
library(metexplore3api)

# get api apps
#
# prepare function argument(s)
var_id <- 56 # integer | id of the app (Optional)

api_instance <- ApiAppsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetApiApps(id = var_iddata_file = "result.txt")
result <- api_instance$GetApiApps(id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| id of the app | [optional] 

### Return type

[**ApiAppsResponse**](ApiAppsResponse.md)

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

# **UpdateApiApp**
> ApiAppsResponse UpdateApiApp(api_app = var.api_app)

update Api App

Update one Api App with its id, the data to modify is passed in the body of the request in json format. Name, id, and protected can not be changed. Must be connected as admin.

### Example
```R
library(metexplore3api)

# update Api App
#
# prepare function argument(s)
var_api_app <- ApiApp$new(123, "name_example", "institution_example", "lab_example", "description_example", "token_example", 123) # ApiApp |  (Optional)

api_instance <- ApiAppsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateApiApp(api_app = var_api_appdata_file = "result.txt")
result <- api_instance$UpdateApiApp(api_app = var_api_app)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_app** | [**ApiApp**](ApiApp.md)|  | [optional] 

### Return type

[**ApiAppsResponse**](ApiAppsResponse.md)

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

