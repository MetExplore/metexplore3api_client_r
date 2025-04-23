# UsersApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UserCreate**](UsersApi.md#UserCreate) | **POST** /users/create | Create user into the system
[**UserLogin**](UsersApi.md#UserLogin) | **POST** /users/login | Logs user into the system
[**UserTokenLogin**](UsersApi.md#UserTokenLogin) | **POST** /users/token_login | Logs user into the system with a token


# **UserCreate**
> UserResponse UserCreate(user = var.user)

Create user into the system

### Example
```R
library(metexplore3api)

# Create user into the system
#
# prepare function argument(s)
var_user <- User$new(123, "full_name_example", "login_example", "email_example", "password_example", "last_visit_date_example", "registration_date_example", "token_example") # User |  (Optional)

api_instance <- UsersApi$new()
# Configure API key authorization: appAuth
api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UserCreate(user = var_userdata_file = "result.txt")
result <- api_instance$UserCreate(user = var_user)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[appAuth](../README.md#appAuth)

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

# **UserLogin**
> UserResponse UserLogin(user = var.user)

Logs user into the system

### Example
```R
library(metexplore3api)

# Logs user into the system
#
# prepare function argument(s)
var_user <- User$new(123, "full_name_example", "login_example", "email_example", "password_example", "last_visit_date_example", "registration_date_example", "token_example") # User |  (Optional)

api_instance <- UsersApi$new()
# Configure API key authorization: appAuth
api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UserLogin(user = var_userdata_file = "result.txt")
result <- api_instance$UserLogin(user = var_user)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[appAuth](../README.md#appAuth)

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

# **UserTokenLogin**
> UserResponse UserTokenLogin()

Logs user into the system with a token

### Example
```R
library(metexplore3api)

# Logs user into the system with a token
#

api_instance <- UsersApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UserTokenLogin(data_file = "result.txt")
result <- api_instance$UserTokenLogin()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserResponse**](UserResponse.md)

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

