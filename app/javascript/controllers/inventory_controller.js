import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["form", "quantity"]

  selectItem(event) {
    const selectedItemId = event.target.value;
    fetch(`/inventory_items/fetch?id=${selectedItemId}`, {
      headers: {
        "Accept": "application/json"
      }
    })
    .then(response => response.json())
    .then(data => this.populateForm(data));
  }

  populateForm(data) {
    this.quantityTarget.value = data.quantity;
  }

  resetForm(event) {
    event.preventDefault();
    this.element.reset();
  }
}
