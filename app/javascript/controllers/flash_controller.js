import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "flash" ]

  connect() {
    const mainSection = document.querySelector("#success-section");

    mainSection.style.display = "none";

    setTimeout(() => {
      this.element.remove();
      mainSection.style.display = "flex";
    }, 1000);
  }
}
