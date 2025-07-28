# metexplore3api::Viz

Saved viz object

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | database id | [optional] 
**name** | **character** | name | [optional] 
**description** | **character** | Description of the visualisation | [optional] 
**date_creation** | **character** | Creation date of the Network (ISO 8601 full-time format) | [optional] [Pattern: ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$] 
**date_last_modif** | **character** | Last modification date of the Network (ISO 8601 full-time format) | [optional] [Pattern: ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$] 
**public** | **numeric** | Indicates if the Viz is public (0 or 1) | [optional] 
**json** | **character** | Json graph of the viz | [optional] 
**image_base64** | **character** | Base64 image of the viz | [optional] 
**permission** | **character** | Permission of the user that does the query on the viz | [optional] 
**favorite** | **numeric** | Indicates if the Viz is favorite (0 or 1) | [optional] 


