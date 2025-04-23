# StepsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddSteps**](StepsApi.md#AddSteps) | **POST** /steps | add step
[**DelStep**](StepsApi.md#DelStep) | **DELETE** /steps | Remove a step
[**GetSteps**](StepsApi.md#GetSteps) | **GET** /steps | Get specific step of an analysis
[**UpdateSteps**](StepsApi.md#UpdateSteps) | **PATCH** /steps | update Step


# **AddSteps**
> StepResponse AddSteps(step_response = var.step_response)

add step

add a step for a specific analysis

### Example
```R
library(metexplore3api)

# add step
#
# prepare function argument(s)
var_step_response <- c(StepResponse$new("message_example", "success_example", 123, c(Step$new(123, 123, "name_example", "root_example", "data", "description_example")))) # array[StepResponse] |  (Optional)

api_instance <- StepsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddSteps(step_response = var_step_responsedata_file = "result.txt")
result <- api_instance$AddSteps(step_response = var_step_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **step_response** | list( [**StepResponse**](StepResponse.md) )|  | [optional] 

### Return type

[**StepResponse**](StepResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | not found |  -  |

# **DelStep**
> StepResponse DelStep(id = var.id)

Remove a step

delete a Step in an analysis

### Example
```R
library(metexplore3api)

# Remove a step
#
# prepare function argument(s)
var_id <- 56 # integer | the id for the Step (Optional)

api_instance <- StepsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DelStep(id = var_iddata_file = "result.txt")
result <- api_instance$DelStep(id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the id for the Step | [optional] 

### Return type

[**StepResponse**](StepResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **404** | not found |  -  |

# **GetSteps**
> StepResponse GetSteps(id = var.id, id_analysis = var.id_analysis)

Get specific step of an analysis

Get a specific step of an analysis

### Example
```R
library(metexplore3api)

# Get specific step of an analysis
#
# prepare function argument(s)
var_id <- 56 # integer | the id for the step (Optional)
var_id_analysis <- 56 # integer | the id for an analysis (Optional)

api_instance <- StepsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSteps(id = var_id, id_analysis = var_id_analysisdata_file = "result.txt")
result <- api_instance$GetSteps(id = var_id, id_analysis = var_id_analysis)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the id for the step | [optional] 
 **id_analysis** | **integer**| the id for an analysis | [optional] 

### Return type

[**StepResponse**](StepResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | not found |  -  |

# **UpdateSteps**
> StepResponse UpdateSteps(step_update = var.step_update)

update Step

update a step for a specific analysis

### Example
```R
library(metexplore3api)

# update Step
#
# prepare function argument(s)
var_step_update <- c(StepUpdate$new(123, "column_example", "value_example")) # array[StepUpdate] |  (Optional)

api_instance <- StepsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateSteps(step_update = var_step_updatedata_file = "result.txt")
result <- api_instance$UpdateSteps(step_update = var_step_update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **step_update** | list( [**StepUpdate**](StepUpdate.md) )|  | [optional] 

### Return type

[**StepResponse**](StepResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | not found |  -  |

