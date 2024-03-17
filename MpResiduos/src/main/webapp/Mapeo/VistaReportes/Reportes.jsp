

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Reportes</title>
    </head>
    <body>
        
        <div class = "reporte">  
            <h1>Reporte de Bote</h1>
            <form method="post" name = "Reportar" action = "/MpResiduos/MdReportes">                             
                          <div class="e1">
                             
                              Estado<select name="Estado" required>
                                  <option value="Lleno">Lleno</option>
                                  <option value="Vacio">Vacio</option>
                                  <option value="Dañado">Dañado</option>
                                  <option value="Basura Mezclada">Basura Mezclada</option>
                              </select>
                              
                              Etiqueta Ubicacion <input type = 'text' name = 'EtiquetaU'>
                          </div>                                
                          
                          <div class="AccionesR" >
                              <button type="submit">Reportar</button>  
                              
                          </div>     
                          
                     </form>      

            
            
      </div> 
    </body>
</html>
