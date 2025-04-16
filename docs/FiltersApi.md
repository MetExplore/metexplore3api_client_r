# FiltersApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetFilter**](FiltersApi.md#GetFilter) | **POST** /filter | filter identifiers of metabolic entities by ids of other metabolic entities


# **GetFilter**
> FiltersResponse GetFilter(filter = var.filter)

filter identifiers of metabolic entities by ids of other metabolic entities

filter identifiers of metabolic entities by ids of other metabolic entities

### Example
```R
library(metexplore3api?)

# filter identifiers of metabolic entities by ids of other metabolic entities
#
# prepare function argument(s)
var_filter <- Filter$new("Compartment2Reaction", c(123)) # Filter |  (Optional)

api_instance <- FiltersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetFilter(filter = var_filterdata_file = "result.txt")
result <- api_instance$GetFilter(filter = var_filter)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Filter**](Filter.md)|  | [optional] 

### Return type

[**FiltersResponse**](FiltersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | error in the query |  -  |
| **404** | not found |  -  |

