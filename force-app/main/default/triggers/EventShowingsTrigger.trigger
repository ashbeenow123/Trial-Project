trigger EventShowingsTrigger on Event (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    List <Opportunity> Oppslist = [SELECT Id , No_Of_Showings__c FROM Opportunity];
        Switch on Trigger.OperationType {
            When BEFORE_INSERT{
              EventTriggerHelperA0.validShowings(Trigger.New);  
            }
            When BEFORE_UPDATE{
               EventTriggerHelperA01.validShowings(Trigger.New);  
            }
            When BEFORE_DELETE{
                  
            }
            When AFTER_INSERT {
                EventTriggerHelperA1.addShowings (Trigger.New,Oppslist);
            }
            When AFTER_UPDATE {
                 EventTriggerHelperA2.addShowings (Trigger.New, Trigger.Old, Oppslist);
            } 
            When AFTER_DELETE {
                     EventTriggerHelperB.Updateondelete(Trigger.Old, Oppslist);
            }
            When AFTER_UNDELETE{
                
            }
        }
    
 }