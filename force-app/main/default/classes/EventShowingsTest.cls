@istest
public class EventShowingsTest {
    @istest static void checkbefore(){
        Account t= new Account(Name = 'Now Account');
        insert t;
        
        Opportunity o = new Opportunity (
        Name= 'SELL New Account',
        AccountId= t.Id,
        Amount=150000,
        StageName='Sit Down Info Session',
        Type='New Customer',
        CloseDate= Date.newInstance(2021, 09, 25));
        insert o;
        
        Product2 p = new Product2 ( Name='112 Test Street');
        insert p;
        
        Event eny = new Event(
        Subject='Meeting',
        Showcase_Event_Type__c='Open House',
        No_of_Showings__c=0,
        StartDateTime=DateTime.newInstance(2020, 05, 18, 03, 20, 03),
        EndDateTime=DateTime.newInstance(2020,05,18,04,20,04));
        Event meny = new Event(
        Subject='Meeting',
        Showcase_Event_Type__c='',
        No_of_Showings__c=null,
        StartDateTime=DateTime.newInstance(2020, 05, 18, 03, 20, 03),
        EndDateTime=DateTime.newInstance(2020,05,18,04,20,04));
        
        Event leny = new Event(
        Subject='Meeting',
        Showcase_Event_Type__c='Open House',
        No_of_Showings__c=null,
        StartDateTime=DateTime.newInstance(2021, 05, 18, 03, 20, 03),
        EndDateTime=DateTime.newInstance(2021,05,18,04,20,04));
        
        Event heny = new Event(
        Subject='Meeting',
        Showcase_Event_Type__c='Open House',
        No_of_Showings__c=1,
        StartDateTime=DateTime.newInstance(2021, 05, 18, 03, 20, 03),
        EndDateTime=DateTime.newInstance(2021,05,18,04,20,04));
               
        Test.startTest();
       /* insert heny;
        insert leny;
        insert eny;
        insert meny;*/
        
        Database.SaveResult hh=Database.insert(heny,false);
        Database.SaveResult ss=Database.insert(leny,false);
        Database.SaveResult ww=Database.insert(eny,false);
        Database.SaveResult mm=Database.insert(meny,false);
        Test.stopTest();
        system.assertEquals('Number of Showings cannot be empty, negative or a fraction, please change', ss.getErrors()[0].getmessage());
        system.assertEquals('Number of Showings cannot be empty, negative or a fraction, please change', ww.getErrors()[0].getmessage());
        system.assert(mm.getErrors().size()==0); 
        system.assert(hh.getErrors().size()==0); 
        
        
        
        
            
            
        
    }

}