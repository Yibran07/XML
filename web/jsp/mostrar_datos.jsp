<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    // Comprobar si el XML ya fue generado en esta sesión
    Boolean xmlGenerado = (Boolean) session.getAttribute("xmlGenerado");
    if (xmlGenerado == null) {
        xmlGenerado = false;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Datos del Usuario</title>
        <script>
            function activarVerXML() {
                document.getElementById("verXmlButton").disabled = false;
            }
        </script>
    </head>
    <body>
        <h2>Datos del Formulario</h2>
        <table border="1">
            <tr>
                <th>Campo</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            <tr>
                <td>${nombre}</td>
                <td>${email}</td>
                <td>${telefono}</td>
                <td>
                    <!-- Formulario para regenerar el XML -->
                    <form action="${pageContext.request.contextPath}/crear_xml_servlet" method="post" onsubmit="activarVerXML();">
                        <input type="hidden" name="nombre" value="${nombre}">
                        <input type="hidden" name="email" value="${email}">
                        <input type="hidden" name="telefono" value="${telefono}">
                        <button type="submit">Generar XML</button>
                    </form>

                    <!-- Formulario para ver el XML -->
                    <form action="${pageContext.request.contextPath}/ver_xml_servlet" method="get" >
                        <button type="submit" id="verXmlButton" <c:if test="${xmlGenerado == false}">disabled</c:if>>Ver XML</button>

                    </form>
                </td>
            </tr>
        </table>
    </body>
</html>
