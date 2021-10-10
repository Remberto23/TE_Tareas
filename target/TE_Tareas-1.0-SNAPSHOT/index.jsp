
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tareas"%>
<%
    ArrayList<Tareas> lista = (ArrayList<Tareas>) session.getAttribute("listaTareas");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body class="body_lista">
        <div id="contenedor">
            <h1 align="center">Lista de Tareas</h1>
            <h2><a href="MainController?op=nuevo">Nuevo</a></h2>

            <table border="1">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Tarea</th>
                        <th>Prioridad</th>
                        <th>Completado</th>
                        <th>Accion</th>
                    </tr>
                </thead>
                <%
                    if (lista != null) {
                        for (Tareas item : lista) {
                %>
                <tr>
                    <td><%= item.getId()%></td>
                    <td><%= item.getTarea()%> </td>
                    <td><%= item.getPrioridad()%></td>

                    <% if (item.getCompletado().equals("Concluido")) { %>

                    <td><input checked="checked" type="checkbox" name="acepto"></td>
                        <%} else {%>
                    <td><input type="checkbox" name="acepto"></td>
                        <%}%>
                    <td><a href="MainController?op=editar&id=<%= item.getId()%>">Modificar</a>
                        | <a href="MainController?op=eliminar&id=<%= item.getId()%>"
                             onclick="return confirm('Está seguro de eliminar el registro ?');">Elimnar</a></td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>
    </body>
</html>
