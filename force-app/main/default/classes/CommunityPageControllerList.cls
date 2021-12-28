public with sharing class CommunityPageControllerList {
    @Auraenabled (cacheable=true)
    public static List<OpportunityLineItem> getUserOppProdList (List<OpportunityLineItem> userOpps){
        
        //getting all needed felds to render from all OpportunityLineItems for Listing type Opportunity
        List<OpportunityLineItem> alloppprods = [ SELECT Name, Opportunity.AccountId, OpportunityId,Home_url__c,Living_Room_url__c,Kitchen_url__c, Bedroom_url__c, Bathroom_url__c, Basement_url__c, Basement__c, No_of_Bedrooms__c, No_of_Bathrooms__c, Sq_footage__c, Lot_size_in_acres__c,ListPrice,Type__c, Product_Family__c, Product_Description__c, Opportunity.StageName,
                                                 Agent_First_Name__c, Agent_Last_Name__c, Agent_Phone__c, Agent_Email__c FROM OpportunityLineItem WHERE Opportunity.RecordType.DeveloperName = 'Listing'];
        
        List<OpportunityLineItem> useroppprods= new List<OpportunityLineItem>();
        
        
            for (OpportunityLineItem op: userOpps) {
                for(OpportunityLineItem oli: alloppprods){
                    if(op.OpportunityId == oli.OpportunityId){
                        system.debug(oli.opportunity.stagename);
                        useroppprods.add(oli);
                    }
                }      
            }return useroppprods; 
           
            
        }
}

