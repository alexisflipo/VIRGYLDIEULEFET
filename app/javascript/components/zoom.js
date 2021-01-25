const zoom = () => {
  const imgs = document.querySelectorAll(".carousel img");
  imgs.forEach((img) =>
    img.addEventListener("click", (e) => {
      this.classList.toggle("zoom");
    })
  );
};

export { zoom };
