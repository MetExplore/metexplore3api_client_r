# ReactionsApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**COUNTREACTIONS**](ReactionsApi.md#COUNTREACTIONS) | **GET** /reactions/count | get the number of reactions in a network
[**DELREACTION**](ReactionsApi.md#DELREACTION) | **DELETE** /reactions | delete Reaction
[**GETREACTIONS**](ReactionsApi.md#GETREACTIONS) | **GET** /reactions | get Reaction
[**POSTREACTION**](ReactionsApi.md#POSTREACTION) | **POST** /reactions | add Reaction
[**UPDATEREACTION**](ReactionsApi.md#UPDATEREACTION) | **PATCH** /reactions | update Reaction


# **COUNTREACTIONS**
> CountResponse COUNTREACTIONS(id_network)

get the number of reactions in a network

get the number of reactions in a network

### Example
```R
library(metexplore3api?)

# get the number of reactions in a network
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id_network for the reactions

api_instance <- ReactionsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$COUNTREACTIONS(var_id_networkdata_file = "result.txt")
result <- api_instance$COUNTREACTIONS(var_id_network)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id_network for the reactions | 

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

# **DELREACTION**
> ReactionsResponse DELREACTION(reactions_response = var.reactions_response)

delete Reaction

deleteReaction for Reaction

### Example
```R
library(metexplore3api?)

# delete Reaction
#
# prepare function argument(s)
var_reactions_response <- c(ReactionsResponse$new("message_example", "success_example", 123, c(Reaction$new(123, "name_example", "db_identifier_example", 123, "spontaneous_example", "generic_example", "type_example", "ec_example", 123, "date_modification_example")))) # array[ReactionsResponse] |  (Optional)

api_instance <- ReactionsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DELREACTION(reactions_response = var_reactions_responsedata_file = "result.txt")
result <- api_instance$DELREACTION(reactions_response = var_reactions_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reactions_response** | list( [**ReactionsResponse**](ReactionsResponse.md) )|  | [optional] 

### Return type

[**ReactionsResponse**](ReactionsResponse.md)

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

# **GETREACTIONS**
> ReactionsResponse GETREACTIONS(id_network = var.id_network, id_collection = var.id_collection)

get Reaction

getReaction from Reaction

### Example
```R
library(metexplore3api?)

# get Reaction
#
# prepare function argument(s)
var_id_network <- 56 # integer | the id of the network (Optional)
var_id_collection <- 56 # integer | the id of the collection for the Reaction (Optional)

api_instance <- ReactionsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GETREACTIONS(id_network = var_id_network, id_collection = var_id_collectiondata_file = "result.txt")
result <- api_instance$GETREACTIONS(id_network = var_id_network, id_collection = var_id_collection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_network** | **integer**| the id of the network | [optional] 
 **id_collection** | **integer**| the id of the collection for the Reaction | [optional] 

### Return type

[**ReactionsResponse**](ReactionsResponse.md)

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

# **POSTREACTION**
> ReactionsResponse POSTREACTION(reaction = var.reaction)

add Reaction

addReaction for Reaction

### Example
```R
library(metexplore3api?)

# add Reaction
#
# prepare function argument(s)
var_reaction <- c(Reaction$new(123, "name_example", "db_identifier_example", 123, "spontaneous_example", "generic_example", "type_example", "ec_example", 123, "date_modification_example")) # array[Reaction] |  (Optional)

api_instance <- ReactionsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$POSTREACTION(reaction = var_reactiondata_file = "result.txt")
result <- api_instance$POSTREACTION(reaction = var_reaction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reaction** | list( [**Reaction**](Reaction.md) )|  | [optional] 

### Return type

[**ReactionsResponse**](ReactionsResponse.md)

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

# **UPDATEREACTION**
> ReactionsResponse UPDATEREACTION(reactions_response = var.reactions_response)

update Reaction

updateReaction for Reaction

### Example
```R
library(metexplore3api?)

# update Reaction
#
# prepare function argument(s)
var_reactions_response <- c(ReactionsResponse$new("message_example", "success_example", 123, c(Reaction$new(123, "name_example", "db_identifier_example", 123, "spontaneous_example", "generic_example", "type_example", "ec_example", 123, "date_modification_example")))) # array[ReactionsResponse] |  (Optional)

api_instance <- ReactionsApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UPDATEREACTION(reactions_response = var_reactions_responsedata_file = "result.txt")
result <- api_instance$UPDATEREACTION(reactions_response = var_reactions_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reactions_response** | list( [**ReactionsResponse**](ReactionsResponse.md) )|  | [optional] 

### Return type

[**ReactionsResponse**](ReactionsResponse.md)

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

