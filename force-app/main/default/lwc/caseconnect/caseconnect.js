import { LightningElement,wire,track,api } from 'lwc';
import Id from '@salesforce/user/Id';
import getcasedata from '@salesforce/apex/CaseSubjectController.getcasedata';

export default class Caseconnect extends LightningElement {

    @api userId=' ';
    @api casekey;
   @track caselistshare =[];
   showfeatures=true;

/*@wire (getcasedata,{ cname:'$casekey'},{uname:'$userId'})
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

connectedCallback(){
    this.userId=Id;
}*/

handleinputChange(event){
  if (event.keyCode == 13){
  this.casekey=event.target.value;
  this.userId=Id;
  getcasedata({cname:this.casekey},{uname:this.userId} ) 
  .then((result)=>{
    console.log(result);
    this.caselistshare=result;}).catch((error)=>{console.log(error)});
  }
}
}

