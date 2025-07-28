# VizApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ADDVIZ**](VizApi.md#ADDVIZ) | **POST** /viz | Save a viz in the MetExplore3 database
[**DELVIZ**](VizApi.md#DELVIZ) | **DELETE** /viz | Delete a saved visualisation in the MetExplore3 database
[**GETVIZ**](VizApi.md#GETVIZ) | **GET** /viz | Get all private viz or one private viz
[**UPDATEVIZ**](VizApi.md#UPDATEVIZ) | **PATCH** /viz | update a visualisation saved in the MetExplore 3 database


# **ADDVIZ**
> VizResponse ADDVIZ(viz = var.viz)

Save a viz in the MetExplore3 database

Save a viz in the MetExplore3 database

### Example
```R
library(metexplore3api)

# Save a viz in the MetExplore3 database
#
# prepare function argument(s)
var_viz <- Viz$new(123, "name_example", "description_example", "date_creation_example", "date_last_modif_example", 123, "json_example", "image_base64_example", "permission_example", 123) # Viz |  (Optional)

api_instance <- VizApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ADDVIZ(viz = var_vizdata_file = "result.txt")
result <- api_instance$ADDVIZ(viz = var_viz)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viz** | [**Viz**](Viz.md)|  | [optional] 

### Return type

[**VizResponse**](VizResponse.md)

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

# **DELVIZ**
> BaseResponse DELVIZ(delviz_request = var.delviz_request)

Delete a saved visualisation in the MetExplore3 database

Delete a saved visualisation in the MetExplore3 database

### Example
```R
library(metexplore3api)

# Delete a saved visualisation in the MetExplore3 database
#
# prepare function argument(s)
var_delviz_request <- DEL_VIZ_request$new(123) # DELVIZRequest |  (Optional)

api_instance <- VizApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELVIZ(delviz_request = var_delviz_requestdata_file = "result.txt")
result <- api_instance$DELVIZ(delviz_request = var_delviz_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delviz_request** | [**DELVIZRequest**](DELVIZRequest.md)|  | [optional] 

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
| **200** | success |  -  |
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **GETVIZ**
> GETVIZ200Response GETVIZ(id = var.id, format = "summary", type = "public")

Get all private viz or one private viz

Get all saved visualisations or one saved visualisation if the id is provided. If the visualisation is private, the user must be authenticated and have the read rights on the visualisation.  The format parameter allows to get only the metadata of the network (name, description, etc...) (summary option) or the metadata plus the json graph (complete option). By default, the visualisations returned are public. Set the type parameter to private to get only private visualisations. 

### Example
```R
library(metexplore3api)

# Get all private viz or one private viz
#
# prepare function argument(s)
var_id <- 56 # integer | the viz id (Optional)
var_format <- "summary" # character | format of the output (Optional)
var_type <- "public" # character | get only private visualisations (Optional)

api_instance <- VizApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETVIZ(id = var_id, format = var_format, type = var_typedata_file = "result.txt")
result <- api_instance$GETVIZ(id = var_id, format = var_format, type = var_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the viz id | [optional] 
 **format** | Enum [complete, summary] | format of the output | [optional] [default to &quot;summary&quot;]
 **type** | Enum [private, public] | get only private visualisations | [optional] [default to &quot;public&quot;]

### Return type

[**GETVIZ200Response**](GET_VIZ_200_response.md)

### Authorization

No authorization required

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

# **UPDATEVIZ**
> VizResponse UPDATEVIZ(viz = var.viz)

update a visualisation saved in the MetExplore 3 database

Update a visualisation saved in the MetExplore 3 database

### Example
```R
library(metexplore3api)

# update a visualisation saved in the MetExplore 3 database
#
# prepare function argument(s)
var_viz <- Viz$new(123, "name_example", "description_example", "date_creation_example", "date_last_modif_example", 123, "json_example", "image_base64_example", "permission_example", 123) # Viz |  (Optional)

api_instance <- VizApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATEVIZ(viz = var_vizdata_file = "result.txt")
result <- api_instance$UPDATEVIZ(viz = var_viz)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viz** | [**Viz**](Viz.md)|  | [optional] 

### Return type

[**VizResponse**](VizResponse.md)

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

