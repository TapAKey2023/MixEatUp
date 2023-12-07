import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="card"
export default class extends Controller {
  connect() {
  }

  flip() {
    this.element.classList.add('flipped')
    setTimeout(() => {
      this.element.dataset.action = 'click->card#unflip'
    }, 200);
  }

  unflip() {
      this.element.classList.remove('flipped')
      this.element.dataset.action = ''
  }
}
