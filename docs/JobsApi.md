# JobsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETJOBS**](JobsApi.md#GETJOBS) | **GET** /jobs | get jobs


# **GETJOBS**
> GETJOBS200Response GETJOBS(id = var.id)

get jobs

get all the jobs of a user or one job if the id is provided

### Example
```R
library(metexplore3api)

# get jobs
#
# prepare function argument(s)
var_id <- "id_example" # character | the job id (Optional)

api_instance <- JobsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETJOBS(id = var_iddata_file = "result.txt")
result <- api_instance$GETJOBS(id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| the job id | [optional] 

### Return type

[**GETJOBS200Response**](GET_JOBS_200_response.md)

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

