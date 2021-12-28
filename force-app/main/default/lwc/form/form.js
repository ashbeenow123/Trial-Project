import { LightningElement, api } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import LEAD_OBJECT from '@salesforce/schema/Lead';
import LEAD_FIRSTNAME_FIELD from '@salesforce/schema/Lead.FirstName';
import LEAD_LASTNAME_FIELD from '@salesforce/schema/Lead.LastName';
import LEAD_EMAIL_FIELD from '@salesforce/schema/Lead.Email';
import LEAD_PHONE_FIELD from '@salesforce/schema/Lead.Phone';
import LEAD_STREET_FIELD from '@salesforce/schema/Lead.Street';
import LEAD_CITY_FIELD from '@salesforce/schema/Lead.City';
import LEAD_STATE_FIELD from '@salesforce/schema/Lead.State';
import LEAD_POSTALCODE_FIELD from '@salesforce/schema/Lead.PostalCode';
import LEAD_COUNTRY_FIELD from '@salesforce/schema/Lead.Country';
import LEAD_COMPANY_FIELD from '@salesforce/schema/Lead.Company'; 
import LEAD_STATUS_FIELD from '@salesforce/schema/Lead.Status';


export default class Form extends LightningElement {
  showform = true;
  
  fname="Enter First Name";
  lname="Enter Last Name";
  email="Enter email";
  address1="Enter Street address";
  state="Enter State";
  city="Enter City";
  zipcode="Zip   ";
  phone="Enter only numbers";
  company="Person";
  status="Open-Not Contacted";
  country="USA";

  
    
/*handleSuccess(event){
 
const toastEvent = new ShowToastEvent({
  title:"Lead Created"
  
});
this.dispatchEvent(toastEvent);
}*/

/*handleButtonClick() {
  const recordInput = {
      apiName: LEAD_OBJECT.objectApiName,
      fields: {
          [LEAD_FIRSTNAME_FIELD.fieldApiName] : this.fname,
          [LEAD_LASTNAME_FIELD.fieldApiName] : this.lname,
          [LEAD_EMAIL_FIELD.fieldApiName] : this.email,
          [LEAD_PHONE_FIELD.fieldApiName] : this.phone,
          [LEAD_STREET_FIELD.fieldApiName] : this.address1,
          [LEAD_CITY_FIELD.fieldApiName] : this.city,
          [LEAD_STATE_FIELD.fieldApiName] : this.state,
          [LEAD_POSTALCODE_FIELD.fieldApiName] : this.zipcode,
          [LEAD_COUNTRY_FIELD.fieldApiName] : this.country,
          [LEAD_COMPANY_FIELD.fieldApiName] : this.company,
          [LEAD_STATUS_FIELD.fieldApiName] : this.status

      }

  };
  createRecord(recordInput)
            .then(lead => {
                console.log("Submitted!")
            })
            .catch(error => {
               console.log("error")
            });
}*/

firstNameChangeHandler(event){
  this.fname= event.target.value;
}
lastNameChangeHandler(event){
  this.lname=event.target.value;
}
emailChangeHandler(event){
  this.email=event.target.value;
}
phoneChangeHandler(event){
  this.phone=event.target.value;
}
address1ChangeHandler(event){
  this.address1=event.target.value;
}
cityChangeHandler(event){
  this.city=event.target.value;
}
stateChangeHandler(event){
  this.state=event.target.value;
}
zipcodeChangeHandler(event){
  this.zipcode=event.target.value;
}

createLead(){
  let fields={'FirstName' : this.fname,
              'LastName' : this.lname,
              'Email' : this.email,
              'Phone' : this.phone,
              'Street' : this.address1,
              'City' : this.city,
              'State' : this.state,
              'PostalCode' : this.zipcode,
              'Country' : this.country,
              'Company' : this.company,
              'Status' : this.status }
  let recordInput={
    apiName:'Lead',
    fields
  } 
  createRecord(recordInput).then(response=>{alert('Submitted!');}).catch(error=>{alert('Error in Submission:' + JSON.stringify(error));});


}
}