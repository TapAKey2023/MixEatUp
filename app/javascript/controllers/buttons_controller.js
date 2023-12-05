import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="buttons"
export default class extends Controller {
  static targets = [ "submit"]

  connect() {
    console.dir(this.budgetTarget)
    this.selectedValues = []
    // this.budgetTarget.checked = true
  }


  selectButton(event) {
    console.log(event.currentTarget)
    console.log(event.currentTarget.childNodes[1].childNodes[1].id)
    this.selectedValues.push(event.currentTarget.childNodes[1].childNodes[1].id)
    if (this.selectedValues.length > 0) {
      let stringSelection = this.selectedValues.join(", ")
      this.submitTarget.value = stringSelection.charAt(0).toUpperCase() + stringSelection.slice(1) + " selected, onto the next step"


    }
    // if this.submitTarget.value ==
    // console.dir(this.submitTarget.value)

  }

}
