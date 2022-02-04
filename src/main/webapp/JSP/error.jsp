<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notificaci&oacute;n</title>
        <link rel="stylesheet" type="text/css" href="${estilo}" />
    </head>
    <body>
        <h2>Listado de puertos o servicios</h2>           
        <div class="row justify-content-center" >
            <p class="error">${error}</p>
            <br />
            <p class="boton"><a href="${contexto}/" class="enlace">Men&uacute; inicial</a></p>
        </div>

    </body>
</html>