<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/procesar_datos_servlet" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre"><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br><br>

        <label for="telefono">Teléfono:</label>
        <input type="text" id="telefono" name="telefono"><br><br>

        <input type="submit" value="Enviar">
    </form> 
</body>
</html>
