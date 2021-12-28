import { LightningElement, api } from "lwc";
import picslidetwo from './picslidetwo.html';
import picslidethree from './picslidethree.html';

export default class Picslide extends LightningElement {
  
  picslidetwo=true;

  render(){
        return this.picslidetwo ? picslidetwo : picslidethree;
    }

    switchTemplate(){ 
        this.picslidetwo = this.picslidetwo === true ? false : true; 
    }
  }