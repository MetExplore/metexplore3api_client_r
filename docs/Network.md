# metexplore3api::Network

Network object

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | id of the Network in the MetExplore database | [optional] 
**name** | **character** | Nick name of the Network | [optional] 
**id_collection** | **integer** | Database id of the collection to which the network belongs | [optional] 
**ncbi_id** | **integer** | NCBI taxonomy id | [optional] [default to 12908] 
**organism_name** | **character** | Organism name | [optional] [default to &quot;Not defined&quot;] 
**db_identifier** | **character** | identifier of the network in the original database | [optional] 
**strain** | **character** | Strain of the organism | [optional] 
**tissue** | **character** | Tissue corresponding to the Network | [optional] 
**cell_type** | **character** | Cell type corresponding to the Network | [optional] 
**source** | **character** | Source of the network | [optional] 
**version** | **character** | Version of the network | [optional] 
**description** | **character** | Description of the network | [optional] 
**url** | **character** | Url of the network | [optional] 
**identifier_origin** | **character** | Origin of the identifiers in the network | [optional] 
**date_creation** | **character** | Creation date of the Network (ISO 8601 full-time format) | [optional] [Pattern: ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$] 
**date_last_modif** | **character** | Last modification date of the Network (ISO 8601 full-time format) | [optional] [Pattern: ^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{1,2}:\\d{1,2}$] 
**top** | **integer** | Indicates if the Network is among the top Networks in MetExplore | [optional] [default to 0] 
**visits** | **integer** | Number of times where this Network has been selected | [optional] 
**permission** | [**Permission**](Permission.md) | Permission of the user on the network | [optional] [Enum: ] 
**nb_pathways** | **integer** | number of pathways in the network | [optional] 
**nb_reactions** | **integer** | number of reactions in the network | [optional] 
**nb_metabolites** | **integer** | number of metabolites in the network | [optional] 
**nb_genes** | **integer** | number of genes in the network | [optional] 
**user_visits** | **integer** | Number of visits to the network by the authenticated user | [optional] 


