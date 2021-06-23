import { Controller } from "stimulus"
import $ from 'jquery';
import 'select2';


export default class extends Controller {

  connect() {
    $('.select2').select2({
      placeholder: 'Select an option'
    });
  }
}
