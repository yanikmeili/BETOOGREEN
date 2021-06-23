import { Controller } from "stimulus"
import Glide, { Controls, Breakpoints } from '@glidejs/glide/dist/glide.modular.esm'

export default class extends Controller {


  connect() {
    new Glide('.glide', {
        type: 'carousel',
        startAt: 0,
        perView: 3
      }).mount({ Controls, Breakpoints });
  }
}
