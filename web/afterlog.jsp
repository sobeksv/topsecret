<%-- 
    Document   : afterlog
    Created on : Oct 23, 2015, 10:39:38 AM
    Author     : mrlm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<link rel="stylesheet" type="text/css" href="Estilo.css" />
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="JavaScript">
            function setVisibility(id, visibility) {
            document.getElementById(id).style.display = visibility;
            }
        </script>
        
    </head>
    <body>
        
        
        <div id="wrapper">
            <div id="header">
                    <div id="head1">
                        <h2> &nbsp;&nbsp;&nbsp;Clinica Doctor Mauricio Antonio Rivas Hernandez  <br> &nbsp;&nbsp;&nbsp;Otorrinolaringolog&iacute;a </h2>
                    </div>
                    <div id="head2">
                        <img src="otorrino.jpg" width="300px" height="100px">
                    </div>
                    
            </div>
            <div id="content">
                <h4> Bienvenido: <%=session.getAttribute("usuario")%> </h4>
                <br/>
                
                <% 
                    Integer id = (Integer)session.getAttribute("id");
                    if(id==1 ) { %>

                        <div>
                            <input type=button name=type value='Ver informacion del paciente' onclick="setVisibility('sub1', 'inline');";>            
                            <div id="sub1" style="display: none;"> <jsp:include page="BuscarPaciente.jsp"/></div>
                            <br><br>

                            <input type=button name=type value='Ver expediente medico' onclick="setVisibility('sub2', 'inline');";>            
                            <div id="sub2" style="display: none;"> <jsp:include page="BuscarExp.jsp"/></div>
                            <br><br>

                            <input type=button name=type value='Diagnosticar Enfermedad' onclick="setVisibility('sub3', 'inline');";>            
                            <div id="sub3" style="display: none;"> <jsp:include page="DiagEnfermedad.jsp"/></div>
                            <br><br>
                        </div>
                        <% } %>


                        <% if(id==2 ) { %>

                        <div>
 
                            <input type=button name=type value='Crear Paciente' onclick="setVisibility('sub4', 'inline');";>            
                            <div id="sub4" style="display: none;"> <jsp:include page="CrearPaciente.jsp"/></div>
                            <br><br>

                            <input type=button name=type value='Buscar Paciente' onclick="setVisibility('sub5', 'inline');";>            
                            <div id="sub5" style="display: none;"> <jsp:include page="BuscarPaciente.jsp"/></div>
                            <br><br>

                        </div>
                        <% } %>
            </div>
            <div id="footer">
                    <h2> Hospital Ctro Pedi&aacute;trico Col M&eacute;dica San Salvador, El Salvador <br> Tel: (503) 22351274 </h2>                    
            </div>
            
        </div>       
        
    </body>
</html>
