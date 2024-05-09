
<%@page import="ModeloLogin.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Mapa Interactivo del Cutonala</title>

    <link rel="icon" type="image/x-icon" href="Mapeo/assets/favicon.ico" />
    <link rel="stylesheet" href="Mapeo/css/Botones.css"/>
    <link href="Mapeo/css/mapa.css" rel="stylesheet" />
    <link href="Mapeo/css/styles.css" rel="stylesheet" />
    <link href="Mapeo/css/graficos.css" rel="stylesheet" />
    <script src="Mapeo/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!--     <script src="js/puntero.js"></script>  Desvanecido de punteros -->
       <link rel="stylesheet" href="Mapeo/css/stylesG.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>
</head>

<body ondblclick="ocultarCuadroTexto() ">
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <p tabindex="1" aria-label="Titulo de la pagina" class="navbar-brand" href="#">Mapa Interactivo del Cutonala</p>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                    <li class="nav-item dropdown">
                        <a tabindex="2" aria-label="Menu desplegable" class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Otros</a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">

                            <li><a class="dropdown-item" href="Mapeo/VistaLogin/Login.jsp">Reportes</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            
                            <li><a class="dropdown-item" href="Mapeo/Others/Infografias.pdf">Infografias</a></li>
                        </ul>
                    </li>
                   
                    
                </ul>
            </div>
        </div>
    </nav>

    <div class="container" ondblclick="ocultarCuadroTexto() ">

        <div class="text-center mt-5">
            <h1 tabindex="3">¡Conoce tu Universidad!</h1>
            <p tabindex="4" class="lead">¿A Donde quieres ir?</p>

        </div>

        <!--
                "#212529" areas externas
                yellowgreen edificios
                #31827c verde alternativa
                #ee9b57 punteros
            -->

        <div id="svg-container">
            <div id="mapa-del-cut">    </div>   
    
        </div>     
                     
            
    </div>
      

        <div id="cuadroreporte" class="cuadroreporte">
            
                <form method="post" name = "Reportar" action = "/MdReportes">           
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
          <div id="cuadroTexto" class="cuadroTexto">
            
                <a href="" id="imagenCuadro"></a>
                <!-- comment 
                <h4 id="textoCuadro"></h4>
                <p id="informacionCuadro"></p>-->
            </div>    
     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="Mapeo/js/scripts.js"></script>
    <script src="Mapeo/js/Geolocalizacion.js"></script>
</body>

</html>


