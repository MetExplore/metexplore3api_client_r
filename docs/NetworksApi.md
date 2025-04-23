# NetworksApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ADDNETWORK**](NetworksApi.md#ADDNETWORK) | **POST** /networks | add a Network
[**GETNETWORKS**](NetworksApi.md#GETNETWORKS) | **GET** /networks | Get all networks
[**UPDATENETWORK**](NetworksApi.md#UPDATENETWORK) | **PATCH** /networks | update a Metabolic Networ


# **ADDNETWORK**
> NetworkResponse ADDNETWORK(network = var.network)

add a Network

add a Network in a Collection

### Example
```R
library(metexplore3api)

# add a Network
#
# prepare function argument(s)
var_network <- c(Network$new(123, "name_example", 123, 123, "organism_name_example", "db_identifier_example", "strain_example", "tissue_example", "cell_type_example", "source_example", "version_example", "description_example", "url_example", "identifier_origin_example", "date_creation_example", "date_last_modif_example", 123, 123, Permission$new())) # array[Network] |  (Optional)

api_instance <- NetworksApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ADDNETWORK(network = var_networkdata_file = "result.txt")
result <- api_instance$ADDNETWORK(network = var_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | list( [**Network**](Network.md) )|  | [optional] 

### Return type

[**NetworkResponse**](NetworkResponse.md)

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

# **GETNETWORKS**
> GETNETWORKS200Response GETNETWORKS(id = var.id, format = "summary")

Get all networks

Get all networks or one network if the id is provided. If a user is authenticated, get both public and private networks. If a network id is provided, the user must have the read rights on the network 

### Example
```R
library(metexplore3api)

# Get all networks
#
# prepare function argument(s)
var_id <- 56 # integer | the network id (Optional)
var_format <- "summary" # character | format of the output (Optional)

api_instance <- NetworksApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETNETWORKS(id = var_id, format = var_formatdata_file = "result.txt")
result <- api_instance$GETNETWORKS(id = var_id, format = var_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the network id | [optional] 
 **format** | Enum [graph, summary] | format of the output | [optional] [default to &quot;summary&quot;]

### Return type

[**GETNETWORKS200Response**](GET_NETWORKS_200_response.md)

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

# **UPDATENETWORK**
> NetworkResponse UPDATENETWORK(network = var.network)

update a Metabolic Networ

Update a Metabolic Network

### Example
```R
library(metexplore3api)

# update a Metabolic Networ
#
# prepare function argument(s)
var_network <- Network$new(123, "name_example", 123, 123, "organism_name_example", "db_identifier_example", "strain_example", "tissue_example", "cell_type_example", "source_example", "version_example", "description_example", "url_example", "identifier_origin_example", "date_creation_example", "date_last_modif_example", 123, 123, Permission$new()) # Network |  (Optional)

api_instance <- NetworksApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATENETWORK(network = var_networkdata_file = "result.txt")
result <- api_instance$UPDATENETWORK(network = var_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | [**Network**](Network.md)|  | [optional] 

### Return type

[**NetworkResponse**](NetworkResponse.md)

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

