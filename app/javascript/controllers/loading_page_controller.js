import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loading-page"

export default class extends Controller {

  static targets = ["listItems", "loadPage"]

  connect() {
    this.counter = 1000
    this.listItemsTargets.forEach((listItem) => {
      this.loadItem(listItem)
      this.counter += 800
    })

    this.nextPage()

  }

  loadItem(listItem) {
    setTimeout(function() {
      listItem.classList.toggle("d-none");
    }, this.counter)
  }

  nextPage() {
    setTimeout(function() {
      window.location.href = '/restaurants'}, 4000)

  }
}
