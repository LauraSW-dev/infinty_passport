import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";



export default class extends Controller {
  connect() {
    console.log("hey")
    flatpickr(this.element)
  }
}


