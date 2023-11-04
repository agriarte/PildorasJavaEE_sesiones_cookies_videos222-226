<%-- 
    Document   : Lista_Compra
    Created on : 28-oct-2023, 14:09:28
    Author     : Pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<html>
    <style type="text/css">
        .titcentrado {
            text-align: center;
        }
    </style>

    <body bgcolor="#99CC66">
        <h1 class="titcentrado">Carro de la compra (supuesto)</h1>
        <form name="Formulario_Compra" action="supermercado.jsp">

            <p>Artículos a comprar:</p>
            <p>
                <label>
                    <input type="checkbox" name="articulos" value="agua " >
                    Agua </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="leche" >
                    Leche </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="pan" >
                    Pan </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="mazanas" >
                    Manzanas </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="carne" >
                    Carne </label>
                <br>
                <label>
                    <input type="checkbox" name="articulos" value="pescado" >
                    Pescado </label>
            </p>
            <p>
                <input type="submit" name="button" id="button" value="Enviar">
                <br>
            </p>
        </form>

        <h3>Lista de la compra</h3>
        <ul>
            <%
                // Primero, intentamos obtener la sesión anterior con el nombre "misAlimentos" al cargar la página.
                // La respuesta debe ser convertida (casteada) ya que getAttribute devuelve objetos y nuestra lista es de tipo String.
                ArrayList<String> listaAlimentos = (ArrayList<String>) session.getAttribute("misAlimentos");

                // Si no existe una sesión previa, creamos una nueva lista.
                if (listaAlimentos == null) {
                    listaAlimentos = new ArrayList<String>();
                    session.setAttribute("misAlimentos", listaAlimentos);
                }

                // Recuperamos, si los hay, los valores anteriores del formulario almacenados en la sesión.
                String[] alimentos = request.getParameterValues("articulos");

                // Si hay valores en el formulario, los agregamos a la lista de alimentos.
                if (alimentos != null) {
                    for (String articuloCarro : alimentos) {
                        listaAlimentos.add(articuloCarro);
                    }
                }

                // Finalmente, actualizamos la vista con los valores introducidos en el formulario,
                // incluyendo los valores almacenados en la sesión, si los hay.
                for (String listaFinal : listaAlimentos) {
                    out.println("<li>" + listaFinal + "</li>");
                }
            %>
        </ul>

    </ul>

</body>

</html>