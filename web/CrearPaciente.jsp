<%-- 
    Document   : CrearPaciente
    Created on : 10-23-2015, 10:40:58 AM
    Author     : men
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Creaccion de paciente </title>
    </head>
    <body>
        <div>
            <form action="InsertaPaciente.jsp" method="post">
                <br><table border="0" align="center">
                                <tr>
                                  <td><label> Nombres:</label></td>
                                  <td><br><input type="text" name="nombres"><br><br></td>  
                                </tr>
                                <tr>                                  
                                  <td><label> Apellidos: </label></td>
                                  <td><br><input type="text" name="apellidos"><br><br></td>
                                </tr>
                                <tr>
                                    <td><label> Fecha de Nacimiento: </label></td>
                                    <td><br><input type="date" name="fechaNac"><br><br></td>
                                </tr>
                                <tr>
                                    <td><label> Sexo: </label></td>
                                    <td><br><select name="sexo">
                                            <option value="M">Masculino</option>
                                            <option value="F">Femenino</option>
                                        </select><br><br></td>
                                </tr>
                                <tr>
                                    <td><label> Direccion de residencia: </label></td>
                                    <td><br><input type="text" name="direccion"><br><br></td>
                                </tr>
                                <tr>
                                    <td><label> Numero de DUI: </label></td>
                                    <td><br><input type="text" name="dui"><br><br></td>
                                </tr>
                                <tr>
                                    <td COLSPAN=2=2><input align="center" type="submit" value="Crear"><br><br></td>
                                </tr>

                </table>
            </form>
        </div>
    </body>
</html>
