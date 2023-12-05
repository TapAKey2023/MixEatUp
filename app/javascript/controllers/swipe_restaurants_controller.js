import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="swipe-restaurants"
export default class extends Controller {
  static targets = ["carouselItem", "hiddenCarousel", "mainCarousel"]
  connect() {
    console.log("Hello")
    console.dir()
  }

  swipe(event) {
    console.log(event)
    // console.dir(this.carouselItemTargets)
    this.carouselItemTargets.forEach((target) => {
      if (target.classList.contains("active") )
      if (target.id == "4") {
        this.mainCarouselTarget.classList.add("d-none")
        this.hiddenCarouselTarget.classList.remove("d-none")
      }
    })
  }

  swipeLeft(event) {
    this.mainCarouselTarget.classList.remove("d-none")
        this.hiddenCarouselTarget.classList.add("d-none")
  }
}
