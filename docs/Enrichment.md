# metexplore3api::Enrichment

Enrichment result

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **character** | label of the pathway | 
**nb_total_biodata** | **integer** | total number of the mapped biodata (metabolites, genes, ...) | 
**nb_mapped_biodata** | **integer** | number of mapped biodata (metabolites, genes, ...) | 
**nb_total_reactions** | **integer** | total number of reactions | 
**nb_mapped_reactions** | **integer** | number of mapped reactions | 
**pval** | **numeric** | result of the right-tailed fisher test for the pathway | 
**bonferroni_pval** | **numeric** | bonferroni correction of the p-value for the pathway | 
**bh_pval** | **numeric** | Benjamini-Hochberg correction of the p-value for the pathway | 
**pval_reactions** | **numeric** | result of the right-tailed fisher test for reactions | 
**bonferroni_pval_reactions** | **numeric** | bonferroni correction of the p-value for reactions | 
**bh_pval_reactions** | **numeric** | Benjamini-Hochberg correction of the p-value for reactions | 


