import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loading-page"

export default class extends Controller {

  static targets = ["listItems"]

  connect() {
    this.counter = 1000
    this.listItemsTargets.forEach((listItem) => {
      console.dir(listItem)
      this.loadItem(listItem)
      this.counter += 1000
    })

  }

  loadItem(listItem) {
    setTimeout(function() {
      listItem.classList.toggle("d-none");
    }, this.counter)
    console.log(this.counter)
  }
}
