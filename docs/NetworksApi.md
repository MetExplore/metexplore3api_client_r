# NetworksApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GETNETWORKS**](NetworksApi.md#GETNETWORKS) | **GET** /networks | Get all networks or one network
[**NETWORKCOUNT**](NetworksApi.md#NETWORKCOUNT) | **GET** /networks/count | get the number of all biodatas in a network


# **GETNETWORKS**
> GETNETWORKS200Response GETNETWORKS(id = var.id, format = "summary", pathway = var.pathway, compartment = var.compartment)

Get all networks or one network

Get all networks, a specific network (if an ID is provided), or specific pathway(s) or compartment(s) within a network (if both the network ID and the corresponding pathway or compartment IDs are provided). You may request pathway(s) or compartment(s), not both at the same time. If the user is authenticated, both public and private networks will be returned. If a network ID is provided, the user must have read access to that network. 

### Example
```R
library(metexplore3api)

# Get all networks or one network
#
# prepare function argument(s)
var_id <- 56 # integer | the network id (Optional)
var_format <- "summary" # character | format of the output (Optional)
var_pathway <- "pathway_example" # character | the pathway(s) id (Optional)
var_compartment <- "compartment_example" # character | the compartment(s) id (Optional)

api_instance <- NetworksApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETNETWORKS(id = var_id, format = var_format, pathway = var_pathway, compartment = var_compartmentdata_file = "result.txt")
result <- api_instance$GETNETWORKS(id = var_id, format = var_format, pathway = var_pathway, compartment = var_compartment)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the network id | [optional] 
 **format** | Enum [graph, summary] | format of the output | [optional] [default to &quot;summary&quot;]
 **pathway** | **character**| the pathway(s) id | [optional] 
 **compartment** | **character**| the compartment(s) id | [optional] 

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
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

# **NETWORKCOUNT**
> CountResponse NETWORKCOUNT(id)

get the number of all biodatas in a network

get the number of all biodatas in a network

### Example
```R
library(metexplore3api)

# get the number of all biodatas in a network
#
# prepare function argument(s)
var_id <- 56 # integer | the network id

api_instance <- NetworksApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$NETWORKCOUNT(var_iddata_file = "result.txt")
result <- api_instance$NETWORKCOUNT(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| the network id | 

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

