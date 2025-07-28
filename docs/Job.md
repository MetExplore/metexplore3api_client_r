# metexplore3api::Job

Job data

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | id of the job | 
**title** | **character** | title of the job | 
**status** | **character** | status of the job | [Enum: [failed, finished, running, waiting]] 
**log** | **character** | log of the job | 
**date** | **character** | date of the job | [Pattern: ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$] 
**message** | **character** | message of the job | [optional] 
**result** | **character** | result of the job | [optional] 


