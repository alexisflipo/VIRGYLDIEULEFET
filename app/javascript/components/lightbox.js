const galery = () => {
  class Lightbox {
    static init() {
      const links = document.querySelectorAll(
        `a[href$=".png"], 
        a[href$=".jpg"], 
        a[href$=".jpeg"]`
      );
      console.log(links);
      links.forEach((link) =>
        link.addEventListener("click", (e) => {
          console.log(link);
          e.preventDefault();
          new Lightbox(e.currentTarget.getAttribute("href"));
        })
      );
    }
    // @param {string} url
    constructor(url) {
      const element = this.buildDOM(url);
      document.body.appendChild(element);
      console.log(element);
    }
    // @param {string} url
    // @return {HTMLElement}

    buildDom(url) {
      const dom = document.createElement("div");
      dom.classList.add("lightbox");
      dom.innerHTML = `<button class="lightbox__close">FERMER</button>
        <button class="lightbox__next">SUIVANT</button>
        <button class="lightbo__prev">PRECEDENT</button>
        <div class="lightbox__container">
          <img src="${url}" alt="">
        </div>`;
      return dom;
    }
  }
};

export { galery };
