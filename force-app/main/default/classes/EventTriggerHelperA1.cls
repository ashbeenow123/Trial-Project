public class EventTriggerhelperA1 {
    public static void addShowings(Event[] showings,Opportunity[]opp ){
        List<Opportunity>oppupdate = new List<Opportunity>();        
            for(Event e:showings){                 
                if (e.Showcase_Event_Type__c <> null){
                    
                   Decimal Newshowingsno = e.No_Of_Showings__c;
                    if (Newshowingsno == null){Newshowingsno = 0;}
                        for (Opportunity o:opp){
                            if(o.Id==e.WhatId){
                                Decimal Oppshowingsno = o.No_of_Showings__c;
                                if (Oppshowingsno == null){Oppshowingsno=0;}
                                Oppshowingsno = Oppshowingsno + NewShowingsNo;
                                o.No_of_Showings__c = Oppshowingsno;
                                If (o.No_Of_Showings__c == null){o.No_of_Showings__c=0;}
                                o.No_Of_Showings__c = o.No_of_Showings__c + NewShowingsNo;
                                oppupdate.add(o);
                        }
                
                    }
               
        }
      }update oppupdate;
    }
}