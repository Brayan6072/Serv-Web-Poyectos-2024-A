document.addEventListener("DOMContentLoaded", function() {
    const svgContainer = document.getElementById("mapa_int");
    const points = document.querySelectorAll(".point");

    svgContainer.addEventListener("mousemove", function(event) {
        CambiamosDeColor(event, points);
    });
    svgContainer.addEventListener("click", function(event) {
        CambiamosDeColor(event, points);
    });
});

function CambiamosDeColor(event, points) {
    const mouseX = event.clientX;
    const mouseY = event.clientY;

    let startNode = null;
    let closestDistance = Infinity;

    //Busca el punto más cercano del click
    points.forEach(point => {
        const pathDataX = point.getBoundingClientRect().left;
        const pathDataY = point.getBoundingClientRect().top;

        const distance = Math.sqrt((mouseX - pathDataX) ** 2 + (mouseY - pathDataY) ** 2);

        if (distance < closestDistance) {
            closestDistance = distance;
            startNode = point;
        }
    });
    //alert("clkX: " + mouseX + " sNX: " + startNode.getBoundingClientRect().left + " clkY: " + mouseY + " sNY: " + startNode.getBoundingClientRect().top);
    points.forEach(point => {
        point.classList.remove("closest");
    });

    startNode.classList.add("closest");

    points.forEach(point => {
        
        const pathDataX = point.getBoundingClientRect().left;
        const pathDataY = point.getBoundingClientRect().top;
        const sNDataX = startNode.getBoundingClientRect().left;
        const sNDataY = startNode.getBoundingClientRect().top;
        const distanceToPoint = Math.sqrt((parseFloat(sNDataX) - pathDataX) ** 2 +
            (parseFloat(sNDataY) - parseFloat(pathDataY)) ** 2);

        const colorR = 255 - Math.floor(distanceToPoint / 40) * 40;
        const colorG = 195 - Math.floor(distanceToPoint / 40) * 40;
        const colorB = 0 - Math.floor(distanceToPoint / 40) * 40;
        const color = `rgb(${colorR}, ${colorG}, ${colorB})`;
        point.setAttribute("fill", color);
    });
}