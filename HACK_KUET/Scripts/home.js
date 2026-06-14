// ===== TYPEWRITER EFFECT =====
(function () {
    const phrases = [
        "Innovate. Build. Compete.",
        "Robotics & Embedded Systems.",
        "IoT & Smart Engineering.",
        "Building the Future of Tech."
    ];
    let phraseIndex = 0;
    let charIndex = 0;
    let isDeleting = false;
    const el = document.getElementById("typewriterText");

    function type() {
        if (!el) return;
        const current = phrases[phraseIndex];

        if (isDeleting) {
            el.textContent = current.substring(0, charIndex--);
        } else {
            el.textContent = current.substring(0, charIndex++);
        }

        let delay = isDeleting ? 50 : 90;

        if (!isDeleting && charIndex === current.length + 1) {
            delay = 1800;
            isDeleting = true;
        } else if (isDeleting && charIndex === 0) {
            isDeleting = false;
            phraseIndex = (phraseIndex + 1) % phrases.length;
            delay = 400;
        }

        setTimeout(type, delay);
    }

    document.addEventListener("DOMContentLoaded", type);
})();

document.querySelectorAll("a").forEach(link => {

    link.addEventListener("click", function (e) {

        const target = this.getAttribute("href");
        if (!target) return;

        if (target.startsWith("#")) {
            const el = document.querySelector(target);

            if (el) {
                e.preventDefault();
                el.scrollIntoView({ behavior: "smooth" });
            }
        }
    });
});

const reveals = document.querySelectorAll(".reveal");

function revealSections() {
    reveals.forEach(section => {
        const top = section.getBoundingClientRect().top;

        if (top < window.innerHeight - 100) {
            section.classList.add("active");
        }
    });
}

window.addEventListener("scroll", revealSections);
window.addEventListener("load", revealSections);

document.querySelectorAll(".btn").forEach(btn => {
    btn.addEventListener("click", () => {
        //alert("Thank you for your interest in HACK KUET!");
    });
});

document.addEventListener("click", function (e) {

    const socialIcons = document.querySelector(".social-icons");
    if (!socialIcons) return;

    if (e.target.closest(".share-btn")) {
        socialIcons.classList.toggle("show");
        return;
    }

    if (!e.target.closest(".social-icons")) {
        socialIcons.classList.remove("show");
    }
});

document.querySelectorAll(".toggle-btn").forEach(btn => {
    btn.addEventListener("click", () => {

        const card = btn.closest(".project-detail-card");
        if (!card) return;

        card.classList.toggle("active");

        if (card.classList.contains("active")) {
            card.scrollIntoView({
                behavior: "smooth",
                block: "start"
            });
        }
    });
});