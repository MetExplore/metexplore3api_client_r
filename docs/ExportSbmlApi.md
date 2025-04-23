# ExportSbmlApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EXPORTSBML**](ExportSbmlApi.md#EXPORTSBML) | **GET** /export/sbml | Export a network into an SBML file


# **EXPORTSBML**
> ExportResponse EXPORTSBML(id_network)

Export a network into an SBML file

Export a network into an SBML file. 

### Example
```R
library(metexplore3api)

# Export a network into an SBML file
#
# prepare function argument(s)
var_id_network <- "12" # character | The id of the network to export

api_instance <- ExportSbmlApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EXPORTSBML(var_id_networkdata_file = "result.txt")
result <- api_instance$EXPORTSBML(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **character**| The id of the network to export | 

### Return type

[**ExportResponse**](ExportResponse.md)

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

