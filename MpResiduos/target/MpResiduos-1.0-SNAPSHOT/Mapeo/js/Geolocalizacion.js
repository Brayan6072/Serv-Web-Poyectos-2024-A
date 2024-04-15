/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var mapa = L.map("mapa-del-cut").setView([20.566736996117946, -103.22846090067654],17.49)
L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png?,{}").addTo(mapa)

var marcador =L.marker([20.567116, -103.225970]).addTo(mapa)
marcador.bindPopup("Bote de basura parada del camion con cordenadas :20.567116, -103.225970 ")


var marcador =L.marker([20.566896, -103.226716]).addTo(mapa)
marcador.bindPopup("Bote de basura recarga de tarjeta con cordenadas :20.566896, -103.226716 ")

var marcador =L.marker([20.566547, -103.226840]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.566547, -103.226840 ")

var marcador =L.marker([20.566478, -103.226975]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.566478, -103.226975 ")


var marcador =L.marker([20.566172, -103.226947]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.566172, -103.226947 ")


var marcador =L.marker([20.566375, -103.227492]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.566375, -103.227492")

var marcador =L.marker([20.566425, -103.227851]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.566425, -103.227851")

var marcador =L.marker([20.566291, -103.227883]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.566291, -103.227883 ")

var marcador =L.marker([20.566257, -103.228363]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.566257, -103.228363")

var marcador =L.marker([20.567184, -103.226779]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.567184, -103.226779 ")
marcador.on('click', onMarkerClick);

var marcador =L.marker([20.567124, -103.227614]).addTo(mapa)
marcador.bindPopup("Bote de basura con cordenadas :20.567124, -103.227614 ")
marcador.on('click', onMarkerClick);

function onMarkerClick(e) {
    alert("Has hecho clic en el marcador en: " + e.latlng);
}



