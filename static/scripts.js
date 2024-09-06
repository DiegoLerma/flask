document.addEventListener("DOMContentLoaded", function() {
    const contactForm = document.getElementById('contact-form');

    contactForm.addEventListener('submit', function(event) {
        event.preventDefault();
        alert("Mensaje enviado correctamente.");
        contactForm.reset();
    });

    const themeToggle = document.getElementById('theme-toggle');
    const {body} = document;

    themeToggle.addEventListener('click', () => {
        body.classList.toggle('dark-theme');
    });
});
