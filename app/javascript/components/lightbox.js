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
          <img src="${img.src}" alt="">
        </div>`;

      document.body.appendChild(dom);

      const close = document.getElementById("child");
      const overlay = document.querySelector("#parent");

      if (close) {
        close.addEventListener("click", (e) => {
          overlay.classList.add("fadeOut");
          window.setTimeout(() => {
            close.parentNode.remove(overlay);
          }, 500);
        });
        window.addEventListener("keydown", (e) => {
          const escape = e.key;
          if (escape === "Escape") {
            overlay.classList.add("fadeOut");
            window.setTimeout(() => {
              close.parentNode.remove(overlay);
            }, 500);
          }
        });
      }
    });
  });
};

export { galery };
