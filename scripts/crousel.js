const words = [
    "Supply Chain",
    "Transportation",
    "Warehousing",
    "Delivery",
    "Logistics"
];

let index = 0;
const rotatingText = document.getElementById("rotatingText");

setInterval(() => {
    rotatingText.style.opacity = 0;
    rotatingText.style.transform = "translateY(12px)";

    setTimeout(() => {
        index = (index + 1) % words.length;
        rotatingText.textContent = words[index];
        rotatingText.style.opacity = 1;
        rotatingText.style.transform = "translateY(0)";
    }, 400);

}, 2500);

document.addEventListener("scroll", function () {
    const navbar = document.querySelector(".navbar");
    const hero = document.querySelector(".owl-carousel-item");

    if (!hero) return; // other pages → stay white

    const triggerPoint = hero.offsetHeight - 80;

    if (window.scrollY > triggerPoint) {
        navbar.classList.add("navbar-scrolled");
    } else {
        navbar.classList.remove("navbar-scrolled");
    }
});