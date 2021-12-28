public class EventTriggerHelperA2 {
    public static void addShowings(Event[] showings, Event[] showings_old, Opportunity[]opp ){
        List<Opportunity>oppupdate = new List<Opportunity>();
        
            for(Event e:showings){                 
                for (Event t:showings_old){
                    if ((t.Id==e.Id) && (e.Showcase_Event_Type__c <> null)){
                    Decimal Oldshowingsno = t.No_Of_Showings__c;
                    Decimal Newshowingsno = e.No_Of_Showings__c;
                        If (Oldshowingsno == null){Oldshowingsno=0;}
                        If (Newshowingsno == null){Newshowingsno=0;}
                        for (Opportunity o:opp){
                            if(o.Id==t.WhatId){
                                Decimal Oppshowingsno = o.No_of_Showings__c;
                                if (Oppshowingsno == null){Oppshowingsno=0;}
                                Oppshowingsno = Oppshowingsno + NewShowingsNo - OldShowingsNo;
                                o.No_of_Showings__c = Oppshowingsno;
                                oppupdate.add(o);
                            }
                        }
                
                    }
                }
            } update oppupdate;
    }
}