# AnalysesApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddAnalysis**](AnalysesApi.md#AddAnalysis) | **POST** /analyses | add Analysis
[**DelAnalysis**](AnalysesApi.md#DelAnalysis) | **DELETE** /analyses | delete Analysis
[**GetAnalyses**](AnalysesApi.md#GetAnalyses) | **GET** /analyses | get Analyses
[**UpdateAnalysis**](AnalysesApi.md#UpdateAnalysis) | **PATCH** /analyses | update Analysis


# **AddAnalysis**
> AnalysisResponse AddAnalysis(analysis = var.analysis)

add Analysis

add an Analysis with data in the body of the request as json (name, description and url)

### Example
```R
library(metexplore3api)

# add Analysis
#
# prepare function argument(s)
var_analysis <- Analysis$new(123, "name_example", "description_example", "url_example", "date_creation_example", "date_edition_example") # Analysis |  (Optional)

api_instance <- AnalysesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddAnalysis(analysis = var_analysisdata_file = "result.txt")
result <- api_instance$AddAnalysis(analysis = var_analysis)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analysis** | [**Analysis**](Analysis.md)|  | [optional] 

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

# **DelAnalysis**
> BaseResponse DelAnalysis(del_analysis_request = var.del_analysis_request)

delete Analysis

delete the Analysis with its id

### Example
```R
library(metexplore3api)

# delete Analysis
#
# prepare function argument(s)
var_del_analysis_request <- delAnalysis_request$new(123) # DelAnalysisRequest |  (Optional)

api_instance <- AnalysesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DelAnalysis(del_analysis_request = var_del_analysis_requestdata_file = "result.txt")
result <- api_instance$DelAnalysis(del_analysis_request = var_del_analysis_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **del_analysis_request** | [**DelAnalysisRequest**](DelAnalysisRequest.md)|  | [optional] 

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

# **GetAnalyses**
> AnalysesResponse GetAnalyses(id = var.id)

get Analyses

get data from Analyses : if no id specified, all the analyses ; else only the one with corresponding id

### Example
```R
library(metexplore3api)

# get Analyses
#
# prepare function argument(s)
var_id <- 56 # integer | id of the analysis (Optional)

api_instance <- AnalysesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAnalyses(id = var_iddata_file = "result.txt")
result <- api_instance$GetAnalyses(id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| id of the analysis | [optional] 

### Return type

[**AnalysesResponse**](AnalysesResponse.md)

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

# **UpdateAnalysis**
> BaseResponse UpdateAnalysis(analysis = var.analysis)

update Analysis

update one Analysis with its id, the data to modify is passed in the body of the request in json format (name, description, url)

### Example
```R
library(metexplore3api)

# update Analysis
#
# prepare function argument(s)
var_analysis <- Analysis$new(123, "name_example", "description_example", "url_example", "date_creation_example", "date_edition_example") # Analysis |  (Optional)

api_instance <- AnalysesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateAnalysis(analysis = var_analysisdata_file = "result.txt")
result <- api_instance$UpdateAnalysis(analysis = var_analysis)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analysis** | [**Analysis**](Analysis.md)|  | [optional] 

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

