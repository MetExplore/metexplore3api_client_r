# CompartmentsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**COUNTCOMPARTMENTS**](CompartmentsApi.md#COUNTCOMPARTMENTS) | **GET** /compartments/count | count number of compartments in a network
[**DELCOMPARTMENT**](CompartmentsApi.md#DELCOMPARTMENT) | **DELETE** /compartments | Delete a Compartment from a Network
[**GETCOMPARTMENTS**](CompartmentsApi.md#GETCOMPARTMENTS) | **GET** /compartments | get compartments in a network
[**POSTCOMPARTMENT**](CompartmentsApi.md#POSTCOMPARTMENT) | **POST** /compartments | add a compartment in a Network
[**UPDATECOMPARTMENT**](CompartmentsApi.md#UPDATECOMPARTMENT) | **PATCH** /compartments | update a compartment


# **COUNTCOMPARTMENTS**
> CountResponse COUNTCOMPARTMENTS(id_network)

count number of compartments in a network

count number of compartments in a network

### Example
```R
library(metexplore3api)

# count number of compartments in a network
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the compartment

api_instance <- CompartmentsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$COUNTCOMPARTMENTS(var_id_networkdata_file = "result.txt")
result <- api_instance$COUNTCOMPARTMENTS(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the compartment | 

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

# **DELCOMPARTMENT**
> BaseResponse DELCOMPARTMENT(compartment = var.compartment)

Delete a Compartment from a Network

Delete a Compartment from a Network

### Example
```R
library(metexplore3api)

# Delete a Compartment from a Network
#
# prepare function argument(s)
var_compartment <- c(Compartment$new(123, "name_example", "db_identifier_example", 123, 123, "units_example", 123, 123)) # array[Compartment] |  (Optional)

api_instance <- CompartmentsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELCOMPARTMENT(compartment = var_compartmentdata_file = "result.txt")
result <- api_instance$DELCOMPARTMENT(compartment = var_compartment)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compartment** | list( [**Compartment**](Compartment.md) )|  | [optional] 

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

# **GETCOMPARTMENTS**
> CompartmentsResponse GETCOMPARTMENTS(id_network)

get compartments in a network

get compartments in a network

### Example
```R
library(metexplore3api)

# get compartments in a network
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id of the network

api_instance <- CompartmentsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETCOMPARTMENTS(var_id_networkdata_file = "result.txt")
result <- api_instance$GETCOMPARTMENTS(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id of the network | 

### Return type

[**CompartmentsResponse**](CompartmentsResponse.md)

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

# **POSTCOMPARTMENT**
> CompartmentResponse POSTCOMPARTMENT(compartment = var.compartment)

add a compartment in a Network

add a compartment in a Network

### Example
```R
library(metexplore3api)

# add a compartment in a Network
#
# prepare function argument(s)
var_compartment <- Compartment$new(123, "name_example", "db_identifier_example", 123, 123, "units_example", 123, 123) # Compartment |  (Optional)

api_instance <- CompartmentsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$POSTCOMPARTMENT(compartment = var_compartmentdata_file = "result.txt")
result <- api_instance$POSTCOMPARTMENT(compartment = var_compartment)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compartment** | [**Compartment**](Compartment.md)|  | [optional] 

### Return type

[**CompartmentResponse**](CompartmentResponse.md)

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

# **UPDATECOMPARTMENT**
> BaseResponse UPDATECOMPARTMENT(compartment = var.compartment)

update a compartment

update a compartment

### Example
```R
library(metexplore3api)

# update a compartment
#
# prepare function argument(s)
var_compartment <- c(Compartment$new(123, "name_example", "db_identifier_example", 123, 123, "units_example", 123, 123)) # array[Compartment] |  (Optional)

api_instance <- CompartmentsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATECOMPARTMENT(compartment = var_compartmentdata_file = "result.txt")
result <- api_instance$UPDATECOMPARTMENT(compartment = var_compartment)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compartment** | list( [**Compartment**](Compartment.md) )|  | [optional] 

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

