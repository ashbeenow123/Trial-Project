import { LightningElement } from "lwc";

export default class App extends LightningElement {
  
showfeatures=true;
showfeaturesb=true;
showfeaturesc=true;
  
  get returnButton() {
    return [
      {
        buttonlabel:"Home",
        link:"	https://sandbox-trialexperiencehh-developer-edition.cs43.force.com/HHRE",
      },
      {
        buttonlabel: "Listings",
        link:"	https://sandbox-trialexperiencehh-developer-edition.cs43.force.com/Listings",
      },
      {
        buttonlabel:"Customer Portal",
        link:"	https://happyhomeprojectbee-developer-edition.na163.force.com/customer",
        },
      {
      buttonlabel:"Agents",
      link:"https://webcomponents.dev/edit/jLbbi6lcyopqgsDIOzKS/src/app.css?p=stories",
      },
      {
        buttonlabel:"Contact Us",
        link:"https://webcomponents.dev/edit/UfotYbVjXC6yLbWzka7T/src/app.html?p=stories",
      }

    ];
  }
}