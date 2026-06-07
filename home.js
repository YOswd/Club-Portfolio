document.querySelectorAll("a").forEach(link => {

    link.addEventListener("click", function(e) {

        const target = this.getAttribute("href");

        if (target.startsWith("#")) {

            e.preventDefault();

            document.querySelector(target)
                .scrollIntoView({
                    behavior: "smooth"
                });
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

const joinBtn = document.querySelector(".btn");

if (joinBtn) {

    joinBtn.addEventListener("click", () => {

        alert("Thank you for your interest in HACK KUET!");

    });

}