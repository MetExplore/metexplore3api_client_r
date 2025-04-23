# NetworkApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DELNETWORK**](NetworkApi.md#DELNETWORK) | **DELETE** /networks | delete a Metabolic Network


# **DELNETWORK**
> BaseResponse DELNETWORK(delnetwork_request = var.delnetwork_request)

delete a Metabolic Network

Delete a Network.

### Example
```R
library(metexplore3api)

# delete a Metabolic Network
#
# prepare function argument(s)
var_delnetwork_request <- DEL_NETWORK_request$new(123) # DELNETWORKRequest |  (Optional)

api_instance <- NetworkApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELNETWORK(delnetwork_request = var_delnetwork_requestdata_file = "result.txt")
result <- api_instance$DELNETWORK(delnetwork_request = var_delnetwork_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delnetwork_request** | [**DELNETWORKRequest**](DELNETWORKRequest.md)|  | [optional] 

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

