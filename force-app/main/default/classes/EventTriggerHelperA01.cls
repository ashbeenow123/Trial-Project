public class EventTriggerHelperA01 {
    public static void validShowings(Event[] showing){
        for (Event a:showing){
            if(a.Showcase_Event_Type__c <> null){
                if (a.No_Of_Showings__c == null){
                a.No_Of_Showings__c.addError('Number of Showings cannot be empty,0 or negative please change');    
                }else{
            if (a.No_Of_Showings__c <= 0){
                a.No_Of_Showings__c.addError('Number of Showings cannot be empty,0 or negative or a fraction, please change');
            }
            }
            }
        }
    }

}