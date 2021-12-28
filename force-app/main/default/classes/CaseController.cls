public with sharing class CaseController {
    @AuraEnabled(cacheable=true)
public static List<Case> getcasedata(String cname){  
    if(cname!= null){
    system.debug(cname);
    String bname='%' + cname + '%' ;  
    system.debug(bname);
    List<Case> caselistshare = [SELECT Id, CaseNumber, ContactId, Subject, Status FROM Case WHERE Subject LIKE :bname  ];
    system.debug(caselistshare);
    return caselistshare;} else {return null;}
}

}