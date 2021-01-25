const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector("nav");
  if (navbar) {
    window.addEventListener("scroll", () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.remove("hidden");
      } else {
        navbar.classList.add("hidden");
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
