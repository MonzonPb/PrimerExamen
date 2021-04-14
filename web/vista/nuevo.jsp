


<%@page import="Examen.modelo.Gestion_vacunas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Gestion_vacunas item=(Gestion_vacunas) request.getAttribute("item");
        %>
        <h1>Registrar Estudiante</h1>
        <form action="Principal?op=guardar" method="post">
            Id:<input type="text" name="id" value="<%= item.getId() %>" size="2" pattern="[1-9]{1}[0-9]*"/>
            <input type="hidden" name="tipo" value="-1" />
            <br>
            Nombre: <input type="text" name="nombre" value="<%= item.getNombre() %>" required/>
            <br>
            Peso: <input type="text" name="peso" value="<%= item.getPeso()%>" />
            <br>
            Talla: <input type="text" name="talla" value="<%= item.getPeso()%>" />
            <br>
            Estado: <input type="radio" name="estado" value="Si" <%= (item.getEstado()=="Si") ? "checked" : ""%> required/> Si
            <input type="radio" name="estado" value="No" <%= (item.getEstado()=="No") ? "checked" : ""%> required/> No
            <br>
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
