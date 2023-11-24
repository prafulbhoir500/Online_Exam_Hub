window.addEventListener('DOMContentLoaded', adjustFooter);

function adjustFooter() {
    const container = document.querySelector('main');
    const footer = document.querySelector('footer');
    const containerHeight = container.clientHeight;
    const viewportHeight = window.innerHeight;

    if (containerHeight < viewportHeight) {
        footer.style.position = 'fixed';
        footer.style.bottom = '0';
    } else {
        footer.style.position = 'relative';
        footer.style.bottom = 'auto';
    }
}
