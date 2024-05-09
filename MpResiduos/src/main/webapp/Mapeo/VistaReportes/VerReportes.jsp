

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
        <link rel="stylesheet" href="../css/Estilos.css"/>
        <script src="../js/scripts.js"></script>
        <title>JSP Page</title>
    </head>
    <body>    
        
        <% if (session.getAttribute("usuarioLogueado") != null) { %>
            
        <% } else { %>
            
            <script>window.location.href = "http://mapeoresiduos.jelastic.saveincloud.net/";</script>
        <% } %>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <div class="container">
                        <p tabindex="1" aria-label="Titulo de la pagina" class="navbar-brand" href="#">Reportes de Botes</p>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                         <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                                <li class="nav-item dropdown">
                                    <a tabindex="2" aria-label="Menu desplegable" class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Menu</a>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">

                                        
                                        <li><a class="dropdown-item" href="Historial.jsp">Historial</a></li>
                                        <li><a class="dropdown-item" href="<%=request.getContextPath()%>/CerrarSesionServlet">Cerrar Sesión</a></li>
                                    </ul>
                                </li>
                            </ul>
            </div>
                    </div>
                </nav>
                
            <div class="Consultar">
                <h1>Reportes de Botes</h1>
                <br>
                <table border = "0">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Fecha</th>
                            <th>Hora</th>
                            <th>Clasificacion</th>     
                            <th>Estado</th>
                            <th>Ubicacion</th>    
                            <th>Estatus</th>
                            <th>Progreso</th>     
                            
                            
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
                            <td><%=rpt.getClasificacion()%></td>
                            <td><%=rpt.getEstado()%></td>
                            <td><%=rpt.getEtiquetau()%></td>
                            <td><div id="semaforo" class="luz" style="<% if(rpt.getEstatus().equals("rojo")) { 
                                out.print("background-color: red;");
                            } else if(rpt.getEstatus().equals("naranja")) { 
                                out.print("background-color: orange;");
                            } else if(rpt.getEstatus().equals("verde")) { 
                                out.print("background-color: green;");
                            } %>">
                             </div>
                            </td>
                            <td>
                                <form action="/BrReporte" method="post">
                                    
                                    <input type="hidden" name="idReporte" value="<%= rpt.getId() %>" />                                    
                                    <input type="hidden" name="estReporte" value="<%=rpt.getEstatus()%>"/>                 
                                    
                                    <button type="submit" name="action" value="procesar">Atender</button>
                                </form>
                                
                               </td>
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
