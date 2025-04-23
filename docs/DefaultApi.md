# DefaultApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Root**](DefaultApi.md#Root) | **GET** / | Root of metexplore3-api


# **Root**
> BaseResponse Root()

Root of metexplore3-api

Root of metexplore3-api

### Example
```R
library(metexplore3api)

# Root of metexplore3-api
#

api_instance <- DefaultApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Root(data_file = "result.txt")
result <- api_instance$Root()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponse**](BaseResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | not found |  -  |

