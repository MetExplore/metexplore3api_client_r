# MappingApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MAPPINGGENESIDS**](MappingApi.md#MAPPINGGENESIDS) | **POST** /mapping/genes/ids | Map genes ids onto a metabolic Network
[**MAPPINGMETABOLITESIDS**](MappingApi.md#MAPPINGMETABOLITESIDS) | **POST** /mapping/metabolites/ids | Map metabolic ids onto a metabolic Network
[**MAPPINGREACTIONSIDS**](MappingApi.md#MAPPINGREACTIONSIDS) | **POST** /mapping/reactions/ids | Map reactions ids onto a metabolic Network


# **MAPPINGGENESIDS**
> MappingResponse MAPPINGGENESIDS(mapping_query = var.mapping_query)

Map genes ids onto a metabolic Network

### Example
```R
library(metexplore3api)

# Map genes ids onto a metabolic Network
#
# prepare function argument(s)
var_mapping_query <- MappingQuery$new(MappingInputTable$new(c("ids_example")), 123, "type_example") # MappingQuery |  (Optional)

api_instance <- MappingApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MAPPINGGENESIDS(mapping_query = var_mapping_querydata_file = "result.txt")
result <- api_instance$MAPPINGGENESIDS(mapping_query = var_mapping_query)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapping_query** | [**MappingQuery**](MappingQuery.md)|  | [optional] 

### Return type

[**MappingResponse**](MappingResponse.md)

### Authorization

No authorization required

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

# **MAPPINGMETABOLITESIDS**
> MappingResponse MAPPINGMETABOLITESIDS(mapping_query = var.mapping_query)

Map metabolic ids onto a metabolic Network

### Example
```R
library(metexplore3api)

# Map metabolic ids onto a metabolic Network
#
# prepare function argument(s)
var_mapping_query <- MappingQuery$new(MappingInputTable$new(c("ids_example")), 123, "type_example") # MappingQuery |  (Optional)

api_instance <- MappingApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MAPPINGMETABOLITESIDS(mapping_query = var_mapping_querydata_file = "result.txt")
result <- api_instance$MAPPINGMETABOLITESIDS(mapping_query = var_mapping_query)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapping_query** | [**MappingQuery**](MappingQuery.md)|  | [optional] 

### Return type

[**MappingResponse**](MappingResponse.md)

### Authorization

No authorization required

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

# **MAPPINGREACTIONSIDS**
> MappingResponse MAPPINGREACTIONSIDS(mapping_query = var.mapping_query)

Map reactions ids onto a metabolic Network

### Example
```R
library(metexplore3api)

# Map reactions ids onto a metabolic Network
#
# prepare function argument(s)
var_mapping_query <- MappingQuery$new(MappingInputTable$new(c("ids_example")), 123, "type_example") # MappingQuery |  (Optional)

api_instance <- MappingApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MAPPINGREACTIONSIDS(mapping_query = var_mapping_querydata_file = "result.txt")
result <- api_instance$MAPPINGREACTIONSIDS(mapping_query = var_mapping_query)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapping_query** | [**MappingQuery**](MappingQuery.md)|  | [optional] 

### Return type

[**MappingResponse**](MappingResponse.md)

### Authorization

No authorization required

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

