# MappingAnalysesApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddMappingAnalyses**](MappingAnalysesApi.md#AddMappingAnalyses) | **POST** /analyses/mapping | add Mapping Analysis
[**DelMappingAnalyses**](MappingAnalysesApi.md#DelMappingAnalyses) | **DELETE** /analyses/mapping | delete Mapping Analysis
[**GetMappingAnalyses**](MappingAnalysesApi.md#GetMappingAnalyses) | **GET** /analyses/mapping | get mapping Analysis
[**UpdateMappingAnalysis**](MappingAnalysesApi.md#UpdateMappingAnalysis) | **PATCH** /analyses/mapping | update mapping Analysis


# **AddMappingAnalyses**
> AnalysisResponse AddMappingAnalyses(add_mapping_analyses_request = var.add_mapping_analyses_request)

add Mapping Analysis

add an mapping Analysis with data in the body of the request as json (MappingResponse)

### Example
```R
library(metexplore3api)

# add Mapping Analysis
#
# prepare function argument(s)
var_add_mapping_analyses_request <- addMappingAnalyses_request$new("name_example", MappingOutput$new(MappingQuery$new(MappingInputTable$new(c("ids_example")), 123, "type_example"), "date_example", 123, MappingOutput_entities$new(123, 123, 123, 123, 123, 123, 123), StatisticsMapping$new(123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, c(key = Enrichment$new("label_example", 123, 123, 123, 123, 123, 123, 123, 123, 123, 123))))) # AddMappingAnalysesRequest |  (Optional)

api_instance <- MappingAnalysesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddMappingAnalyses(add_mapping_analyses_request = var_add_mapping_analyses_requestdata_file = "result.txt")
result <- api_instance$AddMappingAnalyses(add_mapping_analyses_request = var_add_mapping_analyses_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_mapping_analyses_request** | [**AddMappingAnalysesRequest**](AddMappingAnalysesRequest.md)|  | [optional] 

### Return type

[**AnalysisResponse**](AnalysisResponse.md)

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

# **DelMappingAnalyses**
> AnalysesResponse DelMappingAnalyses(del_analysis_request = var.del_analysis_request)

delete Mapping Analysis

delete the mapping Analysis with its id

### Example
```R
library(metexplore3api)

# delete Mapping Analysis
#
# prepare function argument(s)
var_del_analysis_request <- delAnalysis_request$new(123) # DelAnalysisRequest |  (Optional)

api_instance <- MappingAnalysesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DelMappingAnalyses(del_analysis_request = var_del_analysis_requestdata_file = "result.txt")
result <- api_instance$DelMappingAnalyses(del_analysis_request = var_del_analysis_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **del_analysis_request** | [**DelAnalysisRequest**](DelAnalysisRequest.md)|  | [optional] 

### Return type

[**AnalysesResponse**](AnalysesResponse.md)

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

# **GetMappingAnalyses**
> AnalysesMappingResponse GetMappingAnalyses(id = var.id)

get mapping Analysis

get data from mapping Analysis : if no id specified, all the mapping analyses ; else only the one with corresponding id

### Example
```R
library(metexplore3api)

# get mapping Analysis
#
# prepare function argument(s)
var_id <- 56 # integer | id of the mapping analysis (Optional)

api_instance <- MappingAnalysesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetMappingAnalyses(id = var_iddata_file = "result.txt")
result <- api_instance$GetMappingAnalyses(id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| id of the mapping analysis | [optional] 

### Return type

[**AnalysesMappingResponse**](AnalysesMappingResponse.md)

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

# **UpdateMappingAnalysis**
> AnalysesResponse UpdateMappingAnalysis(update_mapping_analysis_request)

update mapping Analysis

update a mapping Analysis with its id, the data to modify is passed in the body of the request in json format (name)

### Example
```R
library(metexplore3api)

# update mapping Analysis
#
# prepare function argument(s)
var_update_mapping_analysis_request <- updateMappingAnalysis_request$new(123, "name_example") # UpdateMappingAnalysisRequest | 

api_instance <- MappingAnalysesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateMappingAnalysis(var_update_mapping_analysis_requestdata_file = "result.txt")
result <- api_instance$UpdateMappingAnalysis(var_update_mapping_analysis_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_mapping_analysis_request** | [**UpdateMappingAnalysisRequest**](UpdateMappingAnalysisRequest.md)|  | 

### Return type

[**AnalysesResponse**](AnalysesResponse.md)

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

