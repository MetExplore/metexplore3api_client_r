# metexplore3api::User

User data

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | id of the user in the MetExplore database | [optional] 
**full_name** | **character** | Full name of the user | [optional] 
**login** | **character** | Name of the user, used to logged in | [optional] 
**email** | **character** | email of the user | [optional] 
**password** | **character** | Password of the user | [optional] 
**last_visit_date** | **character** | Date of the user&#39;s last visit | [optional] [Pattern: ^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}$] 
**registration_date** | **character** | Date of the user&#39;s registration | [optional] [Pattern: ^\\d{4}-\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}$] 
**token** | **character** | token of the user, returned when login | [optional] 


