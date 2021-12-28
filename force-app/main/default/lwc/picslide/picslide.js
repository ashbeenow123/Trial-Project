import { LightningElement, api } from "lwc";
import picslideone from './picslideone.html';
import picslide from './picslide.html';

export default class Picslide extends LightningElement {
  
  picslideone=true;

  render(){
        return this.picslideone ? picslideone : picslide;
    }

    switchTemplate(){ 
        this.picslideone = this.picslideone === true ? false : true; 
    }
  }