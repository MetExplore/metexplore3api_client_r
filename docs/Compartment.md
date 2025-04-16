# metexplore3api?::Compartment

Gene object

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | database id | [optional] 
**name** | **character** | name | [optional] 
**db_identifier** | **character** | unique identifier | [optional] 
**id_network** | **integer** | id of the network | [optional] 
**spatial_dimensions** | **integer** | number of spatial dimensions possessed by the compartment | [optional] [default to 3] 
**units** | **character** | measurement unit associated with the value of the compartment’s size attribute | [optional] [default to &quot;dimensionless&quot;] 
**constant** | **integer** | indicates whether the compart41 ment’s size stays constant (1) or can vary during a simulation (0) | [optional] [default to 1] 
**size** | **integer** | can be used to set the initial size of the compartment. The size may correspond to a volume (if the compartment is a three-dimensional one), or it may be an area (if the compartment is two-dimensional), or a length (if the compartment is one-dimensional) | [optional] [default to 0] 


