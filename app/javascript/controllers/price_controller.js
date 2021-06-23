import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'quantity', 'price', 'total' ];

  connect() {
    console.log(this.quantityTarget.value);
    console.log(this.priceTarget.dataset.amount);
    console.log(this.totalTarget.innerText);
  }

// Purchase new: Make the total payment increase or decrease if you change the quantity. Also changed it so it can return a decimal.
  refresh(event) {
    const quantity = parseFloat(this.quantityTarget.value);
    const price = parseFloat(this.priceTarget.dataset.amount.replace(",", "."));
    this.totalTarget.innerText = `${(quantity * price).toFixed(2).replace(".", ",")
} €`;
  }
}





