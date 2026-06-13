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

document.addEventListener("DOMContentLoaded", function () {

    const shareBtn = document.querySelector(".share-btn");
    const socialIcons = document.querySelector(".social-icons");

    shareBtn.addEventListener("click", function (e) {
        e.stopPropagation();
        socialIcons.classList.toggle("show");
    });

    document.addEventListener("click", function () {
        socialIcons.classList.remove("show");
    });

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