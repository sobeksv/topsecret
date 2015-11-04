<%-- 
    Document   : registro
    Created on : Oct 30, 2015, 5:34:04 PM
    Author     : mrlm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/estilos.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
        <title>Formularios</title>
    </head>
    <body>
        <div class="contenedor-formulario">
            <div class="wrap">

                <form action="" class="formulario" name="formulario_registro" method="get">
                    <div>
                        <div class="input-group">
                            <input type="text" id="nombre" name="nombre">
                            <label class="label" for="nombre">Nombre:</label>
                        </div>
                        <div class="input-group">
                            <input type="email" id="correo" name="correo">
                            <label class="label" for="correo">Correo:</label>
                        </div>
                        <div class="input-group">
                            <input type="password" id="pass" name="pass">
                            <label class="label" for="pass">Contraseña:</label>
                        </div>
                        <div class="input-group">
                            <input type="password" id="pass2" name="pass2">
                            <label class="label" for="pass2">Repetir Contraseña:</label>
                        </div>
                        <div class="input-group radio">
                            <input type="radio" name="sexo" id="hombre" value="Hombre">
                            <label for="hombre">Hombre</label>
                            <input type="radio" name="sexo" id="mujer" value="Mujer">
                            <label for="mujer">Mujer</label>
                        </div>
                        <div class="input-group checkbox">
                            <input type="checkbox" name="terminos" id="terminos" value="true">
                            <label for="terminos">Acepto los Terminos y Condiciones</label>
                        </div>

                        <input type="submit" id="btn-submit" value="Enviar">
                    </div>
                </form>
            </div>
        </div>

        <script src="js/formulario.js"></script>
    </body>
</html>
