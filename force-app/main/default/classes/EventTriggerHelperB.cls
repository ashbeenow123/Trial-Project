public class EventTriggerHelperB {
    public static void Updateondelete(Event[] showings,Opportunity[]opp ){
        List<Opportunity>oppupdate = new List<Opportunity>();
            for(Event e:showings){
                if(e.Showcase_Event_Type__c <> null){
                    if (e.No_Of_Showings__c == null){e.No_Of_Showings__c = 0;}
                  Decimal showingsno = e.No_Of_Showings__c;
                        for (Opportunity o:opp){
                            if(o.Id == e.WhatId){
                                o.No_Of_Showings__c = o.No_of_Showings__c - showingsno;
                                oppupdate.add(o);
                            }
                        }
                }
            } update oppupdate;    
            }
}