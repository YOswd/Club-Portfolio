document.querySelectorAll("a").forEach(anchor => {
    anchor.addEventListener("click", function(e) {
        if (this.getAttribute("href").startsWith("#")) {
            e.preventDefault();
            document.querySelector(this.getAttribute("href"))
                .scrollIntoView({ behavior: "smooth" });
        }
    });
});

document.querySelector(".btn").addEventListener("click", () => {
    alert("Welcome! Fill the form below to join the club.");
});

document.querySelector("form").addEventListener("submit", function(e) {
    let name = document.querySelector("input[type='text']").value;
    let email = document.querySelector("input[type='email']").value;

    if (name === "" || email === "") {
        alert("Please fill all required fields!");
        e.preventDefault();
    } else {
        alert("Form submitted successfully!");
    }
});

document.querySelectorAll(".card").forEach(card => {
    card.addEventListener("mouseenter", () => {
        card.style.transform = "scale(1.05)";
    });

    card.addEventListener("mouseleave", () => {
        card.style.transform = "scale(1)";
    });
});

const sections = document.querySelectorAll("section");

window.addEventListener("scroll", () => {
    const top = window.scrollY;

    sections.forEach(sec => {
        const offset = sec.offsetTop - 300;

        if (top > offset) {
            sec.style.opacity = 1;
            sec.style.transform = "translateY(0)";
        }
    });
});