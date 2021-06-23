import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'quantity', 'price', 'total' ];

  connect() {
    console.log(this.quantityTarget.value);
    console.log(this.priceTarget.dataset.amount);
    console.log(this.totalTarget.innerText);
  }

  refresh(event) {

    this.totalTarget.innerText = `${(parseFloat(this.quantityTarget.value) * parseFloat(this.priceTarget.dataset.amount.replace(",", "."))).toFixed(2).replace(".", ",")
} €`;

  }
}





