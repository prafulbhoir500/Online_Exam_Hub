window.addEventListener('DOMContentLoaded', adjustFooter);

function adjustFooter() {
    let mainHeight, viewportHeight;
    const main = document.querySelector('main');
    const footer = document.querySelector('footer');
    if (main !== null) {
    mainHeight = main.clientHeight;
    }

    if (footer !== null) {
    viewportHeight = window.innerHeight;
    }
    //alert(mainHeight);
    //alert(viewportHeight);

    if (mainHeight < viewportHeight) {
        footer.style.position = 'fixed';
        footer.style.bottom = '0';
        footer.style.width = '100%';
    }
    else {
        footer.style.position = 'relative';
        footer.style.bottom = '0';
    }
}
