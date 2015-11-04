<%@page import="java.util.ArrayList"%>
<%@page import="datos.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/estilos.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="Estilo.css" />
        <script language="JavaScript">
            function setVisibility(id, visibility) {
                document.getElementById(id).style.display = visibility;
            }
        </script>
    </head>
    <body>


        <div id="wrapper">

            <div id="header">
                <h2> #header -->  #header --> #header --> #header --> #header --> <br> #header --> #header --> #header --> #header --> #header --></h2>
            </div>

            <div id="content">
                <div class="contenedor-formulario">
                    <div class="wrap">
                        <form action="Buscar.jsp" class="formulario" name="formulario_registro" method="get">
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
                                    <label class="label" for="pass">Contrase&ntilde;a:</label>
                                </div>

                                <input type="submit" id="btn-submit" value="Enviar">
                                <br>
                                <input type="button" id="btn-nuevo" name=type value='Crear Cuenta' onclick="setVisibility('subX', 'inline');";>            
                            </div>
                        </form>
                    </div>
                </div>

                <script src="js/formulario.js"></script>

                <div id="subX" style="display: none;"> <jsp:include page="registro.jsp"/></div>


            </div><!-- #content -->

            <div id="footer">
                <h2> #footer --> #footer --> #footer --> #footer --> #footer --><br> #footer --> #footer --> #footer --> #footer --> #footer --></h2>                    
            </div><!-- #footer -->

        </div><!-- #wrapper -->        

    </body>
</html>