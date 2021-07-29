// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "inputs" ] // document.querySelector

  addInputs(event) { // .addEventListener

    console.log("From discounts form Controller")
    const html = this.inputsTarget.innerHTML
    const parser = new DOMParser()
    const inputs = parser.parseFromString(html, "text/html")

    inputs.querySelectorAll('input').forEach((input, index) => {
      input.name = input.dataset.next
      input.id = `${input.id}${index}`
    })

    this.inputsTarget.insertAdjacentHTML('beforeend', inputs.body.innerHTML)
    event.target.classList.add('d-none')
  }
}
