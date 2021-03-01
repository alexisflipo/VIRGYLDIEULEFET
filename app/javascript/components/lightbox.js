const galery = () => {
  const imgs = document.querySelectorAll("#galery img");
  const overlay = document.querySelector("#parent");
  imgs.forEach((img) => {
    img.addEventListener("click", (e) => {
      e.preventDefault();
      const dom = document.createElement("div");
      dom.setAttribute("id", "parent");
      img.src = e.target.src;
      dom.classList.add("lightbox");
      dom.innerHTML = `<button id="child" class="lightbox__close"></button>
        <div class="lightbox__container">
          <img src="${img.src}"  alt="">
        </div>`;

      document.body.appendChild(dom);
      document.addEventListener("click", (e) => {
        if (overlay) {
          const navbar = document.querySelector("nav");
          const body = document.querySelector("body");
          navbar.classList.add("disabled");
          body.classList.add("scroll-disable");
        }
        // else {
        //   const navbar = document.querySelector("nav");
        //   const body = document.querySelector("body");
        //   navbar.classList.remove("disabled");
        //   body.classList.remove("scroll-disable");
        // }
      });
      const close = document.getElementById("child");
      const overlay = document.querySelector("#parent");

      if (close) {
        close.addEventListener("click", (e) => {
          const body = document.querySelector("body");
          const navbar = document.querySelector("nav");
          overlay.classList.add("fadeOut");
          window.setTimeout(() => {
            navbar.classList.remove("disabled");
            body.classList.remove("scroll-disable");
            close.parentNode.remove(overlay);
          }, 500);
        });
        window.addEventListener("keydown", (e) => {
          const escape = e.key;
          const body = document.querySelector("body");
          const navbar = document.querySelector("nav");
          if (escape === "Escape") {
            overlay.classList.add("fadeOut");
            window.setTimeout(() => {
              navbar.classList.remove("disabled");
              body.classList.remove("scroll-disable");
              close.parentNode.remove(overlay);
            }, 500);
          }
        });
      }
    });
  });
};

export { galery };
