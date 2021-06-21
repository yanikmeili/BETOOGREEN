import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'quantity', 'price', 'total' ];

  connect() {
    console.log(this.quantityTarget.value);
    console.log(this.priceTarget.dataset.amount);
    console.log(this.totalTarget.innerText);
  }

  refresh(event) {
    this.totalTarget.innerText = `${this.priceTarget.dataset.amount * this.quantityTarget.value} €`;
  }
}





