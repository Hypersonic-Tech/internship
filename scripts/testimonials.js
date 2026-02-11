document.addEventListener("DOMContentLoaded", () => {

  /* ================= TESTIMONIAL SLIDER ================= */

  const track = document.querySelector(".testimonial-track");
  if (!track) return;

  const cards = Array.from(track.children);
  if (cards.length === 0) return;

  const visibleCards = 4;
  const gap = 40;

  let cardWidth = cards[0].offsetWidth + gap;
  let sliderIndex = 0;

  // Clone cards for infinite loop
  cards.slice(0, visibleCards).forEach(card => {
    track.appendChild(card.cloneNode(true));
  });

  function rollNext() {
    sliderIndex++;
    track.style.transition = "transform 0.6s ease";
    track.style.transform = `translateX(-${sliderIndex * cardWidth}px)`;

    if (sliderIndex === cards.length) {
      setTimeout(() => {
        track.style.transition = "none";
        sliderIndex = 0;
        track.style.transform = "translateX(0)";
      }, 600);
    }
  }

  setInterval(rollNext, 3000);

  /* ================= ROTATING TEXT ================= */

  const words = [
    "Supply Chain",
    "Transportation",
    "Warehousing",
    "Delivery",
    "Logistics"
  ];

  let textIndex = 0;
  const rotatingText = document.getElementById("rotatingText");

  if (rotatingText) {
    setInterval(() => {
      rotatingText.style.opacity = 0;
      rotatingText.style.transform = "translateY(12px)";

      setTimeout(() => {
        textIndex = (textIndex + 1) % words.length;
        rotatingText.textContent = words[textIndex];
        rotatingText.style.opacity = 1;
        rotatingText.style.transform = "translateY(0)";
      }, 400);
    }, 2500);
  }

  /* ================= NAVBAR SCROLL ================= */

  const navbar = document.querySelector(".navbar");
  const hero = document.querySelector(".owl-carousel-item");

  if (navbar && hero) {
    document.addEventListener("scroll", () => {
      const triggerPoint = hero.offsetHeight - 80;

      if (window.scrollY > triggerPoint) {
        navbar.classList.add("navbar-scrolled");
      } else {
        navbar.classList.remove("navbar-scrolled");
      }
    });
  }

});
