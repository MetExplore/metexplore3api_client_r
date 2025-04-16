# ImportSbmlApi

All URIs are relative to *https://metexplore.toulouse.inrae.fr/metexplore3-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**IMPORTSBML**](ImportSbmlApi.md#IMPORTSBML) | **POST** /import/sbml | Import an SBML file


# **IMPORTSBML**
> ImportResponse IMPORTSBML(file, name, identifier, id_collection, ncbi_id = "12908", description = var.description, source = "unknown", identifier_origin = var.identifier_origin, url = var.url, version = var.version, strain = var.strain, tissue = var.tissue, cell_type = var.cell_type)

Import an SBML file

Import an SBML file and creates a new Network in the database. 

### Example
```R
library(metexplore3api?)

# Import an SBML file
#
# prepare function argument(s)
var_file <- File.new('/path/to/file') # data.frame | The SBML file to import
var_name <- "name_example" # character | The name of the Network
var_identifier <- "identifier_example" # character | The identifier of the Network
var_id_collection <- "id_collection_example" # character | The id of the collection to import the Network into
var_ncbi_id <- "12908" # character | The ncbi id of the organism corresponding to the Network (Optional)
var_description <- "description_example" # character | The description of the Network (Optional)
var_source <- "unknown" # character | The database source of the Network (e.g KEGG, BIGG) (Optional)
var_identifier_origin <- "identifier_origin_example" # character | The origin of the identifiers in the Network (e.g. KEGG, BIGG) (Optional)
var_url <- "url_example" # character | The url of the Network in the original database (Optional)
var_version <- "version_example" # character | The version of the Network (e.g. 1.0.0) (Optional)
var_strain <- "strain_example" # character | The strain of the organism corresponding to the Network (e.g. K12) (Optional)
var_tissue <- "tissue_example" # character | The tissue of the organism corresponding to the Network (e.g. liver) (Optional)
var_cell_type <- "cell_type_example" # character | The cell type corresponding to the Network (e.g. hepatocyte) (Optional)

api_instance <- ImportSbmlApi$new()
# Configure HTTP bearer authorization: userAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure API key authorization: appAuth
# api_instance$api_client$api_keys["x-app-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IMPORTSBML(var_file, var_name, var_identifier, var_id_collection, ncbi_id = var_ncbi_id, description = var_description, source = var_source, identifier_origin = var_identifier_origin, url = var_url, version = var_version, strain = var_strain, tissue = var_tissue, cell_type = var_cell_typedata_file = "result.txt")
result <- api_instance$IMPORTSBML(var_file, var_name, var_identifier, var_id_collection, ncbi_id = var_ncbi_id, description = var_description, source = var_source, identifier_origin = var_identifier_origin, url = var_url, version = var_version, strain = var_strain, tissue = var_tissue, cell_type = var_cell_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **data.frame**| The SBML file to import | 
 **name** | **character**| The name of the Network | 
 **identifier** | **character**| The identifier of the Network | 
 **id_collection** | **character**| The id of the collection to import the Network into | 
 **ncbi_id** | **character**| The ncbi id of the organism corresponding to the Network | [optional] [default to &quot;12908&quot;]
 **description** | **character**| The description of the Network | [optional] 
 **source** | **character**| The database source of the Network (e.g KEGG, BIGG) | [optional] [default to &quot;unknown&quot;]
 **identifier_origin** | **character**| The origin of the identifiers in the Network (e.g. KEGG, BIGG) | [optional] 
 **url** | **character**| The url of the Network in the original database | [optional] 
 **version** | **character**| The version of the Network (e.g. 1.0.0) | [optional] 
 **strain** | **character**| The strain of the organism corresponding to the Network (e.g. K12) | [optional] 
 **tissue** | **character**| The tissue of the organism corresponding to the Network (e.g. liver) | [optional] 
 **cell_type** | **character**| The cell type corresponding to the Network (e.g. hepatocyte) | [optional] 

### Return type

[**ImportResponse**](ImportResponse.md)

### Authorization

[userAuth](../README.md#userAuth), [appAuth](../README.md#appAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | error in the query |  -  |
| **401** | not authorized |  -  |
| **404** | not found |  -  |

