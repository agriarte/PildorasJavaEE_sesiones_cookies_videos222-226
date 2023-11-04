<%-- 
    Document   : recibe_peticion
    Created on : 29-oct-2023, 20:33:39
    Author     : Pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Recibe petición.</h1>
        <p>Se crea una cookie</p>
        <%
            // Leer la información que viene del formulario
            
            String miCiudad = request.getParameter("ciudad_favorita");

            // Crear la cookie y guardar la información del formulario
            Cookie miCookie = new Cookie("seleccionVuelos.ciudad_favorita", miCiudad);

            // Establecer la vida de la cookie
            miCookie.setMaxAge(365 * 24 * 60 * 60);

            // Guardar/Enviar la cookie al ordenador del usuario
            response.addCookie(miCookie);      
        %>
        
        <p>Ver vuelos: <a href="Aerolinea_vuelos.jsp">Click aquí!</a> </p>
    </body>
</html>
