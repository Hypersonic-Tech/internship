const track = document.querySelector(".testimonial-track");
const cards = Array.from(track.children);

const visibleCards = 4;
const gap = 40;

let cardWidth = cards[0].offsetWidth + gap;
let index = 0;

/* Clone first 4 cards for infinite loop */
cards.slice(0, visibleCards).forEach(card => {
  track.appendChild(card.cloneNode(true));
});

function rollNext() {
  index++;
  track.style.transition = "transform 0.6s ease";
  track.style.transform = `translateX(-${index * cardWidth}px)`;

  /* Reset seamlessly */
  if (index === cards.length) {
    setTimeout(() => {
      track.style.transition = "none";
      index = 0;
      track.style.transform = "translateX(0)";
    }, 600);
  }
}

setInterval(rollNext, 3000);
