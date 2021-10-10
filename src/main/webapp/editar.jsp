<%@page import="com.emergentes.modelo.Tareas"%>
<%
    Tareas item = (Tareas) request.getAttribute("misTareas");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body class="body_b">
        <form action="MainController" class="box" method="post">
            <h1 class="title" ><%= (item.getId() == 0) ? "Nuevo registro" : "Editar registro"%></h1>
            <input type="hidden" name="id" value="<%= item.getId()%>"/>

            <label>Tarea. . . . .:  </label>
            <input type="text" name="tarea" value="<%= item.getTarea()%>" /><br><br>

            <label>Prioridad. . .: </label>
            <select class="option" name="prioridad">
                <option value="Alta">Alta</option>
                <option value="Media">Media</option>
                <option value="Baja">Baja</option>
            </select><br><br>


            <label>Completado: </label>
            <select class="option" name="completado">
                <option value="Concluido">Concluido</option>
                <option value="Pendiente">Pendiente</option>
            </select><br><br>

            <button type="submit">Envia</button>
        </form>
    </body>
</html>
