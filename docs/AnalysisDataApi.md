# AnalysisDataApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddAnalysisData**](AnalysisDataApi.md#AddAnalysisData) | **POST** /analysis_data | add AnalysisData
[**DelAnalysisData**](AnalysisDataApi.md#DelAnalysisData) | **DELETE** /analysis_data | delete AnalysisData
[**GetAnalysisData**](AnalysisDataApi.md#GetAnalysisData) | **GET** /analysis_data | get AnalysisData
[**UpdateAnalysisData**](AnalysisDataApi.md#UpdateAnalysisData) | **PATCH** /analysis_data | update AnalysisData


# **AddAnalysisData**
> AnalysisDataResponse AddAnalysisData(analysis_data = var.analysis_data)

add AnalysisData

add an analysis data step

### Example
```R
library(metexplore3api)

# add AnalysisData
#
# prepare function argument(s)
var_analysis_data <- AnalysisData$new(123, "name_example", "description_example", "image", "json_example") # AnalysisData |  (Optional)

api_instance <- AnalysisDataApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddAnalysisData(analysis_data = var_analysis_datadata_file = "result.txt")
result <- api_instance$AddAnalysisData(analysis_data = var_analysis_data)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analysis_data** | [**AnalysisData**](AnalysisData.md)|  | [optional] 

### Return type

[**AnalysisDataResponse**](AnalysisDataResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **DelAnalysisData**
> AnalysisDataResponse DelAnalysisData(id)

delete AnalysisData

delete an analysis data step

### Example
```R
library(metexplore3api)

# delete AnalysisData
#
# prepare function argument(s)
var_id <- 56 # integer | the id for the AnalysisData

api_instance <- AnalysisDataApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DelAnalysisData(var_iddata_file = "result.txt")
result <- api_instance$DelAnalysisData(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the id for the AnalysisData | 

### Return type

[**AnalysisDataResponse**](AnalysisDataResponse.md)

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

# **GetAnalysisData**
> AnalysisDataResponse GetAnalysisData(id = var.id, id_analysis = var.id_analysis)

get AnalysisData

get an analysis data by id or all the ones from an Analysis

### Example
```R
library(metexplore3api)

# get AnalysisData
#
# prepare function argument(s)
var_id <- 56 # integer | the id of the AnalysisData (Optional)
var_id_analysis <- 56 # integer | the id of the Analysis (Optional)

api_instance <- AnalysisDataApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAnalysisData(id = var_id, id_analysis = var_id_analysisdata_file = "result.txt")
result <- api_instance$GetAnalysisData(id = var_id, id_analysis = var_id_analysis)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the id of the AnalysisData | [optional] 
 **id_analysis** | **integer**| the id of the Analysis | [optional] 

### Return type

[**AnalysisDataResponse**](AnalysisDataResponse.md)

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

# **UpdateAnalysisData**
> AnalysisDataResponse UpdateAnalysisData(analysis_data = var.analysis_data)

update AnalysisData

update an analysis data step with the body of the request

### Example
```R
library(metexplore3api)

# update AnalysisData
#
# prepare function argument(s)
var_analysis_data <- AnalysisData$new(123, "name_example", "description_example", "image", "json_example") # AnalysisData |  (Optional)

api_instance <- AnalysisDataApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateAnalysisData(analysis_data = var_analysis_datadata_file = "result.txt")
result <- api_instance$UpdateAnalysisData(analysis_data = var_analysis_data)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analysis_data** | [**AnalysisData**](AnalysisData.md)|  | [optional] 

### Return type

[**AnalysisDataResponse**](AnalysisDataResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

