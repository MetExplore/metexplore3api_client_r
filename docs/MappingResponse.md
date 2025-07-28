# metexplore3api::MappingResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **character** | Message to describe that it&#39;s ok or not | 
**success** | **character** | Indicates if the response is a success or a fail | 
**status** | **integer** | Code of the response | 
**input** | [**MappingQuery**](MappingQuery.md) |  | 
**date** | **character** | Creation date of the mapping | [Pattern: ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$] 
**map** | **object** | mapping between the entries and the metabolic identifiers in MetExplore | 
**entities** | [**MappingOutputEntities**](MappingOutput_entities.md) |  | 
**statistics** | [**StatisticsMapping**](StatisticsMapping.md) |  | 


