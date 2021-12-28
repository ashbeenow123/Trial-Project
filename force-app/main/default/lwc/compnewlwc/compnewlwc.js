import { LightningElement,wire,track, api} from 'lwc';
import Id from '@salesforce/user/Id';
import USER_USERNAME from '@salesforce/schema/User.Username';
import USER_FIRSTNAME from '@salesforce/schema/User.FirstName';
import USER_LASTNAME from '@salesforce/schema/User.LastName';
import { getRecord } from 'lightning/uiRecordApi';


export default class Compnewlwc extends LightningElement {
    @api uId=Id;
    

    @wire(getRecord,{recordId:'$uId',fields:[USER_USERNAME, USER_FIRSTNAME, USER_LASTNAME]})
    user
}