<%-- 
    Document   : Formulario_envia_datos
    Created on : 29-oct-2023, 20:28:34
    Author     : Pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Agencia Viajes</title>
    </head>
    <body style="background-color:#FFC">
        
        <!<!-- Formulario que envia a un archivo .jsp -->
        <form action="recibe_peticion_vuelos.jsp">

            <h2>Selecciona tu ciudad de destino</h2>
            <center>
                <select name="ciudad_favorita">

                    <option>Madrid</option>
                    <option>Par&iacute;s</option>	
                    <option>Nueva York</option>	
                    <option>Sidney</option>

                </select>
                <br/><br/><br/>

                <input type="submit" value="Enviar"/>

            </center>
        </form>


    </body>
</html>
