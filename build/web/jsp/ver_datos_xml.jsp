<%-- 
    Document   : ver_datos_xml
    Created on : 06-nov-2024, 23:41:36
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Datos del XML</title>
</head>
<body>
    <h1>Datos del Usuario desde XML</h1>
    <table border="1">
        <tr>
            <th>Nombre</th>
            <td>${nombre}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${email}</td>
        </tr>
        <tr>
            <th>Teléfono</th>
            <td>${telefono}</td>
        </tr>
    </table>
</body>
</html>

