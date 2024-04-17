

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/stylesG.css">
    <link rel="stylesheet" href="../css/Botones.css">
    <link rel="stylesheet" href="../css/mapa.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>
     <link rel="stylesheet" href="../css/stylesG.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>


    <title>Mapa de botes CUT</title>
</head>
<body>
    <h1>Localiza tu bote mas cercano del CUT </h1>
    <p>Manten el centro universitario limpio</p>
    <div id="mapa-del-cut">    </div>
    <script src="../js/Geolocalizacion.js"></script>

     <div id="cuadroreporte" class="cuadroreporte">
                <form method="post" name = "Reportar" action = "/MpResiduos/MdReportes">           
                    
                        <input type="text" id="ub" readonly />
                        <div class="wrappers"> 
                            Tipo de Bote<select id="TpBt" name="TpBts" required>
                              </select>
                        </div>            
                          <div class="wrapper">                           
                                
                              
                              
                              <input type="radio" name="Estado" value="Lleno" id="option-1" checked>
                               <input type="radio"  name="Estado" value="Danado" id="option-2">
                                <input type="radio"  name="Estado" value="Basura Mezclada" id="option-3">
                                
                                <label for="option-1" class="option option-1">                                     
                                    <div class="dot"></div>
                                    <span>Lleno</span>                                
                              </label>
                                
                              <label for="option-2" class="option option-2">
                                    <div class="dot"></div>
                                    <span>Dañado</span>
                              </label>
                                
                              <label for="option-3" class="option option-3">
                                    <div class="dot"></div>
                                    <span>Basura Mezclada</span>
                              </label>      
                              
                          </div>                                
                          
                          <div class="AccionesR" >
                              <button type="submit">Reportar</button>  
                              
                          </div>     
                          
                     </form>   
           
        </div>
    
</body>
</html>

