# SquareConnect::Customer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The customer&#39;s unique ID. | 
**created_at** | **String** | The time when the customer was created, in RFC 3339 format. | 
**updated_at** | **String** | The time when the customer was last updated, in RFC 3339 format. | 
**cards** | [**Array&lt;Card&gt;**](Card.md) | The non-confidential details of the customer&#39;s cards on file. | [optional] 
**given_name** | **String** | The customer&#39;s given (i.e., first) name. | [optional] 
**family_name** | **String** | The customer&#39;s family (i.e., last) name. | [optional] 
**nickname** | **String** | The customer&#39;s nickname. | [optional] 
**company_name** | **String** | The name of the customer&#39;s company. | [optional] 
**email_address** | **String** | The customer&#39;s email address. | [optional] 
**address** | [**Address**](Address.md) | The customer&#39;s physical address. | [optional] 
**phone_number** | **String** | The customer&#39;s phone number. | [optional] 
**reference_id** | **String** | A second ID you can set to associate the customer with an entity in another system. | [optional] 
**note** | **String** | A note to associate with the customer. | [optional] 
**preferences** | [**CustomerPreferences**](CustomerPreferences.md) | The customer&#39;s preferences. | [optional] 
**groups** | [**Array&lt;CustomerGroupInfo&gt;**](CustomerGroupInfo.md) | The groups the customer belongs to. | [optional] 


