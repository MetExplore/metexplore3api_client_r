# GenesApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**COUNTGENES**](GenesApi.md#COUNTGENES) | **GET** /genes/count | get the number of genes for one network
[**DELGENE**](GenesApi.md#DELGENE) | **DELETE** /genes | del Gene
[**GETGENES**](GenesApi.md#GETGENES) | **GET** /genes | get Gene
[**POSTGENE**](GenesApi.md#POSTGENE) | **POST** /genes | add Gene
[**UPDATEGENE**](GenesApi.md#UPDATEGENE) | **PATCH** /genes | update Gene


# **COUNTGENES**
> CountResponse COUNTGENES(id_network)

get the number of genes for one network

get the number of genes for one network

### Example
```R
library(metexplore3api?)

# get the number of genes for one network
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the genes

api_instance <- GenesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$COUNTGENES(var_id_networkdata_file = "result.txt")
result <- api_instance$COUNTGENES(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the genes | 

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

# **DELGENE**
> BaseResponse DELGENE(gene = var.gene)

del Gene

delete for Gene

### Example
```R
library(metexplore3api?)

# del Gene
#
# prepare function argument(s)
var_gene <- c(Gene$new(123, "name_example", "db_identifier_example", 123)) # array[Gene] |  (Optional)

api_instance <- GenesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELGENE(gene = var_genedata_file = "result.txt")
result <- api_instance$DELGENE(gene = var_gene)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene** | list( [**Gene**](Gene.md) )|  | [optional] 

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

# **GETGENES**
> GenesResponse GETGENES(id_network)

get Gene

get from Gene

### Example
```R
library(metexplore3api?)

# get Gene
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the Gene

api_instance <- GenesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETGENES(var_id_networkdata_file = "result.txt")
result <- api_instance$GETGENES(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the Gene | 

### Return type

[**GenesResponse**](GenesResponse.md)

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

# **POSTGENE**
> GeneResponse POSTGENE(gene = var.gene)

add Gene

add for Gene

### Example
```R
library(metexplore3api?)

# add Gene
#
# prepare function argument(s)
var_gene <- c(Gene$new(123, "name_example", "db_identifier_example", 123)) # array[Gene] |  (Optional)

api_instance <- GenesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$POSTGENE(gene = var_genedata_file = "result.txt")
result <- api_instance$POSTGENE(gene = var_gene)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene** | list( [**Gene**](Gene.md) )|  | [optional] 

### Return type

[**GeneResponse**](GeneResponse.md)

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

# **UPDATEGENE**
> BaseResponse UPDATEGENE(gene = var.gene)

update Gene

update for Gene

### Example
```R
library(metexplore3api?)

# update Gene
#
# prepare function argument(s)
var_gene <- c(Gene$new(123, "name_example", "db_identifier_example", 123)) # array[Gene] |  (Optional)

api_instance <- GenesApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATEGENE(gene = var_genedata_file = "result.txt")
result <- api_instance$UPDATEGENE(gene = var_gene)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene** | list( [**Gene**](Gene.md) )|  | [optional] 

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

