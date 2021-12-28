import { LightningElement,api,wire,track } from 'lwc';
import Id from '@salesforce/user/Id';
import { getRecord } from 'lightning/uiRecordApi';
import USER_NAME_FIELD from '@salesforce/schema/User.Name';
import USER_ACCOUNTID_FIELD from '@salesforce/schema/User.AccountId';

import finduserAccount from '@salesforce/apex/CommunityUserController.finduserAccount';
import  getCurrentUserOpps from '@salesforce/apex/CommunityOppController.getCurrentUserOpps';
import getUserOppProdList from '@salesforce/apex/CommunityPageControllerList.getUserOppProdList';

export default class Communitycomponent extends LightningElement {
  
 userId=Id;
  @track currentName;
  @track currentAID;
 

    @api imgurl;

    @track userAcc;
    @track userOpps;
    @track pageItems;

    @wire(getRecord,{recordId:Id, fields:[USER_NAME_FIELD,USER_ACCOUNTID_FIELD ]})
    Wireduserdata({error,data}){
      if (data){
        this.currentName=data.fields.Name.value;
        this.currentAId=data.fields.AccountId.value;
        console.log(currentName);
        console.log(currentAID);
      }else if (error) { console.log('Unable to retieve User');}
    }
  }

    



    /*@wire(finduserAccount, {sId:'$sId'})
    WiredUserAccount({error,data}){
        if (data) {
            this.userAcc = data;
            console.log(userAcc);
        } else { console.log('User data could not be retrieved')}
    }*/

    /*retrieveAccount(){
      finduserAccount({cId:this.userId}) 
      .then((result)=>{
        console.log(result);
        this.userAcc=result;}).catch((error)=>{console.log(error)});
      }/*

    /*@wire(getCurrentUserOpps,{aId:'$userAcc'})
    WiredOpps({error,data}){
      if (data) {
        this.useropps = data;
        console.log(useropps);
      }else { console.log('User Opp data could not be retrieved')}
    }
      
    @wire(getUserOppProdList,{userOpps:'$userOpps'})
    Wiredpageitems({error,data}){
      if(data){
        this.pageitems = data;
        console.log(pageitems)
      }else{console.log('Page data could not be retrieved')}
    }*/

/*
    get geturl() {
        return [
          {
            title:"Kitchen",
            imgurl:this.pageItems.Kitchen_url__c,
            
          },
          {
            title: "Bedroom",
            imgurl:this.pageItems.Bedroom_url__c,
          },
          {
            title:"Bathroom",
            imgurl:this.pageItems.Bathroom_url__c,
          },
          {
          title:"Backyard",
          imgurl:this.pageItems.Backyard_url__c,
          },
          {
            title:"Basement",
            imgurl:this.pageItems.Basement_url__c,
          },
    
        ];
      }

}
*/