public with sharing class CaseCController {
    public static Case[] getcasedata(String cname, String uname){
        List<Case> caselistshare = new List<Case>(); 
        if(cname!= null){
            //reduces to 15 characterId
            String aname= uname.substring(0,15);
            //select the user's contactId as it is a community user
           User[] use=[SELECT ContactId FROM User WHERE Id=:aname];
            system.debug(use);
            //fuzz the search key
        String bname='%' + cname + '%' ;  
        system.debug(bname);
            //select case fields for the search term
    List<Case> caselist = [SELECT Id, CaseNumber, ContactId, Subject, Status FROM Case WHERE Subject LIKE :bname];
          //create a new list to return those for the logged in user
            
           //loop through all records of caselist to find te ones for the same contact as the user and add those to the return list  
            for (User r:use){
                String x= String.valueof(r.ContactId).substring(0,15);
                
                for (Case c:caselist){ 
                    String y=String.valueof(c.ContactId).substring(0,15);
                    if (x==y){
                    caselistshare.add(c);
                        system.debug(caselistshare);
                    }
                  }                          
        } 
            
    }return caselistshare;

    }
}