<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado</title>
        <link rel="stylesheet" type="text/css" href="${estilo}" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <br>
        <h2>Listado de Servicio</h2>
        <div class="row justify-content-center" >
            <table class="table table-striped" style="width: 500px">
                <tr>
                    <th>Nombre Servicio</th>
                    <th>PATH</th>
                    <th>Numero Puerto</th>
                    <th>Tipo de Puerto</th>

                </tr>
                </tr>
                <c:forEach var="servicio" items="${listado}">
                    <tr>  
                        <td><strong>${servicio.nombre}</strong></td> 
                        <td><strong>${servicio.path}</strong></td> 
                        <td>${servicio.puerto.numero}</td>
                        <td>${servicio.puerto.tipo}</td>
                    </tr>
                    </tr>   
                </c:forEach>
            </table>
        </div>
        <p class="boton"><a href="${contexto}/" class="enlace">Men&uacute; inicial</a></p>

    </body>
</html>