import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-form"
export default class extends Controller {
  static targets = ["totalPrice"]

  static values = {
    roomPrice: Number,
  }

  connect() {
    console.log(this.roomPriceValue)
  }

  // Add an event listener to the hour input field
  calculation(event) {
    // Calculate the new total price based on the input value and room price per hour
    const hours = event.currentTarget.value
    const pricePerHour = this.roomPriceValue
    this.totalPriceTarget.innerText = hours * pricePerHour
  };

}
