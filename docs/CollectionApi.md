# CollectionApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ADDCOLLECTION**](CollectionApi.md#ADDCOLLECTION) | **POST** /collections | add Metabolic Network Collection
[**DELCOLLECTION**](CollectionApi.md#DELCOLLECTION) | **DELETE** /collections | delete a Metabolic Network Collection
[**GETCOLLECTIONS**](CollectionApi.md#GETCOLLECTIONS) | **GET** /collections | get Metabolic Network Collections


# **ADDCOLLECTION**
> CollectionResponse ADDCOLLECTION(collection = var.collection)

add Metabolic Network Collection

add a Metabolic Network Collection in the database

### Example
```R
library(metexplore3api)

# add Metabolic Network Collection
#
# prepare function argument(s)
var_collection <- Collection$new(123, "name_example", "description_example", 123) # Collection |  (Optional)

api_instance <- CollectionApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ADDCOLLECTION(collection = var_collectiondata_file = "result.txt")
result <- api_instance$ADDCOLLECTION(collection = var_collection)
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
| **404** | not found |  -  |

# **DELCOLLECTION**
> BaseResponse DELCOLLECTION(delcollection_request = var.delcollection_request)

delete a Metabolic Network Collection

Delete a Collection.

### Example
```R
library(metexplore3api)

# delete a Metabolic Network Collection
#
# prepare function argument(s)
var_delcollection_request <- DEL_COLLECTION_request$new(123) # DELCOLLECTIONRequest |  (Optional)

api_instance <- CollectionApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELCOLLECTION(delcollection_request = var_delcollection_requestdata_file = "result.txt")
result <- api_instance$DELCOLLECTION(delcollection_request = var_delcollection_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delcollection_request** | [**DELCOLLECTIONRequest**](DELCOLLECTIONRequest.md)|  | [optional] 

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

api_instance <- CollectionApi$new()
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

