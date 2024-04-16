var mapa = L.map("mapa-del-cut").setView([20.566736996117946, -103.22846090067654],17.49)
L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png?,{}").addTo(mapa)

var marcador =L.marker([20.567116, -103.225970]).addTo(mapa)
marcador.bindPopup("<h3> Botes de basura parada del camion </h3>  <p> con cordenadas :20.567116, -103.225970 </p> <img src='./img/rsz_rsz_20240411.jpg' /> ")


var marcador =L.marker([20.566896, -103.226716]).addTo(mapa)
marcador.bindPopup("Bote de basura recarga de tarjeta con cordenadas :20.566896, -103.226716 ")

var marcador =L.marker([20.566547, -103.226840]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.566547, -103.226840 ")

var marcador =L.marker([20.566478, -103.226975]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.566478, -103.226975 ")


var marcador =L.marker([20.566172, -103.226947]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.566172, -103.226947 ")


var marcador =L.marker([20.566375, -103.227492]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.566375, -103.227492")

var marcador =L.marker([20.566425, -103.227851]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.566425, -103.227851")

var marcador =L.marker([20.566291, -103.227883]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.566291, -103.227883 ")

var marcador =L.marker([20.566257, -103.228363]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.566257, -103.228363")

var marcador =L.marker([20.567184, -103.226779]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.567184, -103.226779 ")

var marcador =L.marker([20.567124, -103.227614]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura  </h3>  <p> con cordenadas :20.567124, -103.227614 ")

var marcador =L.marker([20.566568, -103.225838]).addTo(mapa)
marcador.bindPopup("<h3> Bote de basura entrada hacia edificio A </h3>  <p> con cordenadas :20.567124, -103.227614 </p> <img src='./img/rsz_20240411_151938.jpg'/>")

//Codigo de  ubicacion  ****************************************************************

if(!navigator.geolocation) {
    console.log("Tu navegador no es compatible con tu geolocalizacion")
}else{
    setInterval(() =>{
        navigator.geolocation.getCurrentPosition(getPosition)

    } ,5000);//Segundos de actualizacion ubicacion esta en 5s   

}

var marker , circle;

function getPosition (position){

    var lat = position.coords.latitude
    var long = position.coords.longitude
    var accuracy = position.coords.accuracy



     if(marker){
        mapa.removeLayer(marker)
     }
     if(circle){
        mapa.removeLayer(circle)
     }

     marker = L.marker([lat, long])
     circle= L.circle ([lat, long] , {radius:20,accuracy})

     var featureGroup = L.featureGroup([marker,circle]).addTo(mapa).bindPopup("<h3> Tu ubicacion actual </h3>").openPopup()

     mapa.fitBounds(featureGroup.getBounds())

     console.log("Tus coordenadas son :Lat "+lat+"long:"+long+"Accuracy "+accuracy)
    }