<%-- 
    Document   : InsertaPaciente
    Created on : 10-23-2015, 11:37:49 AM
    Author     : men
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="datos.DAO"%>
<%@page import="datos.Paciente"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redireccionando...</title>
	<link rel="stylesheet" type="text/css" href="Estilo.css" />
    </head>
    <body>
        <div id="header">
                    <div id="head1">
                        <h2> &nbsp;&nbsp;&nbsp;Clinica Doctor Mauricio Antonio Rivas Hernandez  <br> &nbsp;&nbsp;&nbsp;Otorrinolaringolog&iacute;a </h2>
                    </div>
                    <div id="head2">
                        <img src="otorrino.jpg" width="300px" height="100px">
                    </div>
                    
	</div>
		
        <div id="content">
            <%
    try {
        
        Paciente paciente = new Paciente();
        paciente.setNombre(request.getParameter("nombres"));
        paciente.setApellido(request.getParameter("apellidos"));
        
        paciente.setFechaNacimiento(request.getParameter("fechaNac"));
        
        paciente.setSexo(request.getParameter("sexo"));
        
        paciente.setDireccion(request.getParameter("direccion"));
        paciente.setDui(request.getParameter("dui"));
        
        
        DAO.insertPaciente(paciente);
        
        out.println("Registro realizado con exito");
        response.setHeader("Refresh", "5;afterlog.jsp");

    } catch (SQLException ex) {
        out.print("En estos momentos el servidor de bases de datos no response, por favor int&eacute;ntelo m&aacute;s tarde.<br/>");
        out.print("Ser&aacute; redireccionado en 5 segundos.");
        out.print(ex.getMessage());
        response.setHeader("Refresh", "5;afterlog.jsp");
    }

%>
            
        </div>

        <div id="footer">
                    <h2> Hospital Ctro Pedi&aacute;trico Col M&eacute;dica San Salvador, El Salvador <br> Tel: (503) 22351274 </h2>                    
	</div><!-- #footer -->
        
    </body>
</html>

