import { LightningElement,api,wire,track } from 'lwc';
import getcasedata from '@salesforce/apex/CaseController.getcasedata';
import Id from'@salesforce/user/Id';

export default class Caseretrieve extends LightningElement {
   @api casekey;
   @track caselistshare =[];
   showfeatures=true;

@wire (getcasedata,{ cname:'$casekey'})
WiredCasedata ({error, data}){
  console.log('We have called WiredCasedata');
  if (data) {
    this.caselistshare = data;
    console.log(data);
  } else if (error) {
    this.caselistshare = [];
    throw new Error('Failed to retrieve data');
  }
}

handleinputChange(event){
  if (event.keyCode == 13){
  this.casekey=event.target.value;
  }
}
}
