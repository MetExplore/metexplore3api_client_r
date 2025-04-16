# MatchingApiApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PostMatchingApi**](MatchingApiApi.md#PostMatchingApi) | **POST** /matching_api | get compounds IDs


# **PostMatchingApi**
> MatchingApiResponse PostMatchingApi(compounds_name = var.compounds_name)

get compounds IDs

Ask the MetaboAnalyst API to convert compounds name into IDs

### Example
```R
library(metexplore3api?)

# get compounds IDs
#
# prepare function argument(s)
var_compounds_name <- CompoundsName$new(c("queryList_example"), "name") # CompoundsName |  (Optional)

api_instance <- MatchingApiApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PostMatchingApi(compounds_name = var_compounds_namedata_file = "result.txt")
result <- api_instance$PostMatchingApi(compounds_name = var_compounds_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compounds_name** | [**CompoundsName**](CompoundsName.md)|  | [optional] 

### Return type

[**MatchingApiResponse**](MatchingApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **404** | not found |  -  |

