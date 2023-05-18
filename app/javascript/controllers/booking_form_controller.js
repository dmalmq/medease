import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-form"
export default class extends Controller {
  static targets = ["totalPrice"]
  static values = {
    roomPrice: Number
  }

  connect() {
    console.log(this.roomPriceValue)
  }

  calculation(event) {
    const hours = event.currentTarget.value
    const pricePerHour = this.roomPriceValue
    this.totalPriceTarget.innerText = hours * pricePerHour
  }

  // filtering() {
  //   location.reload()
  // }
}
