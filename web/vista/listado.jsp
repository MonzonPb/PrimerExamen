

<%@page import="Examen.modelo.Gestion_vacunasDAO"%>
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
            Gestion_vacunasDAO lista = (Gestion_vacunasDAO) session.getAttribute("gestor");
        %>
        <h3>PRIMER PARCIAL TEM-742</h1>
        <h3>Nombre: Edgar Adrian Monzón Arroyo</h1>
        <h3>Carnet: 14297006</h1>
        <h1>Registro de Vacunas</h1>
        <p><a href="../Principal?op=nuevo">Nuevo</a></p>
        <%
            if(lista.getVacunas().size()>0){
        %>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Estado</th>
                <th></th>
                <th></th>
            </tr>
            <%
                for(Gestion_vacunas item : lista.getVacunas()){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getPeso()%></td>
                <td><%= item.getTalla()%></td>
                <td><%= item.getEstado() %></td>
                <td><a href="../Principal?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="../Principal?op=eliminar&id=<%= item.getId() %>">Eliminar</a></td>
            </tr>
            <%
            }
            %>
        </table>
            <%
                }
                else{
                    out.println("<p>No existe registro");
                }
            %>
    </body>
</html>
