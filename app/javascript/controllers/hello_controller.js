import { Controller } from "@hotwired/stimulus"
import {get} from "@rails/request.js"

export default class extends Controller {
  static targets = [ "add_form_field", "rahul" ]
  
  static values = {
    url: String,
    interval: { default: 500 },
    clicked: Boolean
  }
  
  connect() {
    console.log("hello")
  }
  
  
  showForm(event){
    event.preventDefault()
    let formValue = '<div><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'
     
    get(`/form_add?target=${this.add_form_fieldTarget.id}`,{
      responseKind: "turbo-stream"
    })
  }
  
  removeDiv(event){
    event.preventDefault();
    this.element.remove()
  }
  
  getCountry() {
    console.log(this.intervalValue) 
    console.log(this.clickedValue)
    // console.log(this.rahulTarget.value)
  }
}
