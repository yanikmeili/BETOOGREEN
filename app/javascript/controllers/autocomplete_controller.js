import { Controller } from "stimulus"
import places from 'places.js';

export default class extends Controller {

  connect() {
    const addressInput = document.getElementById('product_origin');
    if (addressInput) {
      places({ container: addressInput });
    }
  }
}
