import { Controller } from "stimulus";
import flatpickr from "flatpickr";
require("flatpickr/dist/flatpickr.css");

export default class extends Controller {

  connect() {
    console.log("flatpickr c.")
    new flatpickr("[data-behavior='flatpickr']", {
    // dateFormat: "d-m-Y",
    })
  }
}


