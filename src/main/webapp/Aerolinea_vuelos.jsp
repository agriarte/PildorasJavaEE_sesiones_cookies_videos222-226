<%-- 
    Document   : Aerolinea_vuelos
    Created on : 30-oct-2023, 16:52:48
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
        <h1>Lectura de cookie</h1>
        <%
            // 1- Lee la cookie de la petición hecha desde el navegador
            
            //variable que contiene el valor de la cookie
            String miCiudadFavorita = "sin selección todavía";

            //crear un array con todas las cookies del navegador
            Cookie[] lasCokies = request.getCookies();

            // 2 - Busca la cookie de la ciudad favorita
            
            // Si existen cookies buscar con bucle foreach una con un nombre concreto.
            if (lasCokies != null) {
                for (Cookie iteradorCookies : lasCokies) {
                    if ("seleccionVuelos.ciudad_favorita".equals(iteradorCookies.getName())) {
                    // cuando encuentra la cookie que buscamos, la guarda en variable y rompe el bucle
                        miCiudadFavorita = iteradorCookies.getValue();
                        break;
                    }
                }
            }
        %>
        
        Vuelos a <%= miCiudadFavorita %>
    </body>
</html>
