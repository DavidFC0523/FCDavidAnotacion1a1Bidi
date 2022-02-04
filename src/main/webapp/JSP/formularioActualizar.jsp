<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
        <link rel="stylesheet" type="text/css" href="${estilo}" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    </head>
    <body>
        <h2>Actualizaci&oacute;n de datos</h2>
        <br>
        <div class="row justify-content-center" >

            <form method="post" action="conclusion">
                <input type="hidden" name="op" value="update">
                <table  class="table table-striped" style="width: 500px">

                    <input type="hidden" name="id" value="${servicio.id}">


                    <tr>
                        <td colspan="2">Puerto</td>

                    </tr>
                    <tr>
                        <td>Numero Puerto</td>
                        <td><input type="text" name="numero" value="${servicio.puerto.numero}" required/></td>
                    </tr>
                    <tr>
                        <td>Tipo Puerto</td>
                        <td><input type="text" name="tipo"  value="${servicio.puerto.tipo}" required/></td>
                    </tr>

                    <tr>
                        <td colspan="2">Servicio</td>

                    </tr>
                    <tr>
                        <td>Nombre Servicio</td>
                        <td><input type="text" name="nombre" value="${servicio.nombre}"required/></td>
                    </tr>
                    <tr>
                        <td>Path</td>
                        <td><input type="text" name="path" value="${servicio.path}" required/></td>
                    </tr>   


                    <tr>
                        <td colspan="2"><input type="submit" name="enviar" value="Enviar" class="btn-primary" /></td>
                    </tr> 
                </table>
            </form>
        </div>


    </body>
</html>