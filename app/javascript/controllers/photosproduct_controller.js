import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'photo', 'input' ];

  preview(evt) {
    // const [file] = imgInp.files // const file = imgInp.files[0]
    Array.from(this.inputTarget.files).forEach((file, index) => {
      this.photoTargets[index].querySelector('img').src = URL.createObjectURL(file)
    })
  }

}


