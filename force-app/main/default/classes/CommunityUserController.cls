public with sharing class CommunityUserController {
    @AuraEnabled (cacheable=true)
    public static List<User> finduserAccount(String sId){
        try { //converting external Id to internal
            
            system.debug(sId);
            //getting AccountId from community user fields
          List<User> aid = [ SELECT AccountId FROM User WHERE Id = :sId];
           return aid; 
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }     
}
