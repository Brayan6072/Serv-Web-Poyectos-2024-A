

<%@page import="ControladorReporte.AccionReporte"%>
<%@page import="ModeloReporte.Reporte"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />

        <link href="../css/mapa.css" rel="stylesheet" />
        <link href="../css/styles.css" rel="stylesheet" />
        <link href="../css/graficos.css" rel="stylesheet" />
        <script src="../js/scripts.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
        
            
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <div class="container">
                        <p tabindex="1" aria-label="Titulo de la pagina" class="navbar-brand" href="#">Reportes de Botes</p>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                         <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                                <li class="nav-item dropdown">
                                    <a tabindex="2" aria-label="Menu desplegable" class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Regresar</a>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">

                                        <li><a class="dropdown-item" href="../Index.jsp">Mapa</a></li>
                                        
                                    </ul>
                                </li>
                            </ul>
            </div>
                    </div>
                </nav>
                
            <div class="VerReporte">
                <h1>Tabla de Alumnos</h1>
                <br>
                <table border = "0">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Fecha</th>
                            <th>Hora</th>
                            <th>Estado</th>
                            <th>Ubicacion</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Reporte> lista = AccionReporte.VerReporte();
                            for(Reporte rpt : lista){
                        %>
                        <tr>
                            <td><%=rpt.getId()%></td>
                            <td><%=rpt.getFecha()%></td>
                            <td><%=rpt.getHora()%></td>
                            <td><%=rpt.getEstado()%></td>
                            <td><%=rpt.getEtiquetaU()%></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

            <script src="../js/scripts.js"></script>
    </body>
</html>
