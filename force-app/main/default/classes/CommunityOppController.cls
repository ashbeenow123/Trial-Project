public with sharing class CommunityOppController {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getCurrentUserOpps(List<Opportunity> aId){
            List<Opportunity> opplist=[SELECT Id, AccountId FROM Opportunity];
            List<Opportunity> useropps = new List<Opportunity>();
            for (Opportunity o:aId){
                for (Opportunity opp:opplist){
                    if (o.AccountId==opp.AccountId){useropps.add(opplist);
                        return useropps;}

                    }
                }
            }
            
            
        
    }

    