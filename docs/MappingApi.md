# MappingApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MAPPINGMETABOLITESIDS**](MappingApi.md#MAPPINGMETABOLITESIDS) | **POST** /mapping/metabolites/ids | Map metabolic ids onto a metabolic Network


# **MAPPINGMETABOLITESIDS**
> MappingResponse MAPPINGMETABOLITESIDS(mapping_query = var.mapping_query)

Map metabolic ids onto a metabolic Network

### Example
```R
library(metexplore3api?)

# Map metabolic ids onto a metabolic Network
#
# prepare function argument(s)
var_mapping_query <- MappingQuery$new(MappingInputTable$new(c("ids_example")), 123, "name_example") # MappingQuery |  (Optional)

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

