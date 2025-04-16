# EnzymesApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**COUNTENZYMES**](EnzymesApi.md#COUNTENZYMES) | **GET** /enzymes/count | count ligns Enzyme
[**DELENZYME**](EnzymesApi.md#DELENZYME) | **DELETE** /enzymes | del Enzyme
[**GETENZYMES**](EnzymesApi.md#GETENZYMES) | **GET** /enzymes | get Enzyme
[**POSTENZYME**](EnzymesApi.md#POSTENZYME) | **POST** /enzymes | add Enzyme
[**UPDATEENZYME**](EnzymesApi.md#UPDATEENZYME) | **PATCH** /enzymes | update Enzyme


# **COUNTENZYMES**
> CountResponse COUNTENZYMES(id_network)

count ligns Enzyme

get the number of enzymes for one network

### Example
```R
library(metexplore3api?)

# count ligns Enzyme
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the Enzyme

api_instance <- EnzymesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$COUNTENZYMES(var_id_networkdata_file = "result.txt")
result <- api_instance$COUNTENZYMES(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the Enzyme | 

### Return type

[**CountResponse**](CountResponse.md)

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

# **DELENZYME**
> BaseResponse DELENZYME(enzyme = var.enzyme)

del Enzyme

delete for Enzyme

### Example
```R
library(metexplore3api?)

# del Enzyme
#
# prepare function argument(s)
var_enzyme <- c(Enzyme$new(123, "name_example", "db_identifier_example", 123)) # array[Enzyme] |  (Optional)

api_instance <- EnzymesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELENZYME(enzyme = var_enzymedata_file = "result.txt")
result <- api_instance$DELENZYME(enzyme = var_enzyme)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enzyme** | list( [**Enzyme**](Enzyme.md) )|  | [optional] 

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
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **GETENZYMES**
> EnzymesResponse GETENZYMES(id_network)

get Enzyme

get from Enzyme

### Example
```R
library(metexplore3api?)

# get Enzyme
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id of the network

api_instance <- EnzymesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETENZYMES(var_id_networkdata_file = "result.txt")
result <- api_instance$GETENZYMES(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id of the network | 

### Return type

[**EnzymesResponse**](EnzymesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **POSTENZYME**
> EnzymeResponse POSTENZYME(enzyme = var.enzyme)

add Enzyme

add for Enzyme

### Example
```R
library(metexplore3api?)

# add Enzyme
#
# prepare function argument(s)
var_enzyme <- Enzyme$new(123, "name_example", "db_identifier_example", 123) # Enzyme |  (Optional)

api_instance <- EnzymesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$POSTENZYME(enzyme = var_enzymedata_file = "result.txt")
result <- api_instance$POSTENZYME(enzyme = var_enzyme)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enzyme** | [**Enzyme**](Enzyme.md)|  | [optional] 

### Return type

[**EnzymeResponse**](EnzymeResponse.md)

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

# **UPDATEENZYME**
> BaseResponse UPDATEENZYME(enzyme = var.enzyme)

update Enzyme

update for Enzyme

### Example
```R
library(metexplore3api?)

# update Enzyme
#
# prepare function argument(s)
var_enzyme <- c(Enzyme$new(123, "name_example", "db_identifier_example", 123)) # array[Enzyme] |  (Optional)

api_instance <- EnzymesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATEENZYME(enzyme = var_enzymedata_file = "result.txt")
result <- api_instance$UPDATEENZYME(enzyme = var_enzyme)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enzyme** | list( [**Enzyme**](Enzyme.md) )|  | [optional] 

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
| **401** | not authorized |  -  |
| **404** | not found |  -  |

