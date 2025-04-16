# CollectionsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UPDATECOLLECTION**](CollectionsApi.md#UPDATECOLLECTION) | **PATCH** /collections | update a Metabolic Network Collection


# **UPDATECOLLECTION**
> CollectionResponse UPDATECOLLECTION(collection = var.collection)

update a Metabolic Network Collection

Update a Metabolic Network Collection

### Example
```R
library(metexplore3api?)

# update a Metabolic Network Collection
#
# prepare function argument(s)
var_collection <- Collection$new(123, "name_example", "description_example", 123) # Collection |  (Optional)

api_instance <- CollectionsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATECOLLECTION(collection = var_collectiondata_file = "result.txt")
result <- api_instance$UPDATECOLLECTION(collection = var_collection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection** | [**Collection**](Collection.md)|  | [optional] 

### Return type

[**CollectionResponse**](CollectionResponse.md)

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

