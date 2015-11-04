<%@page import="java.sql.SQLException"%>
<%@page import="datos.DAO"%>
<%@page import="datos.Usuario"%>


	<link rel="stylesheet" type="text/css" href="Estilo.css" />


<%
    try {
        Usuario user = new Usuario();
        user.setUser(request.getParameter("nombre"));
        user.setPass(request.getParameter("pass"));
        int flag = DAO.getUser(user);
        
        HttpSession sesion = request.getSession();
        
        switch(flag){
            case 0:
                out.print("Ese usuario no existe, ser&aacute; redireccionado, intente nuevamente");
                response.setHeader("Refresh", "4;index.jsp");
                break;
            case 1:
                out.print("Ingreso exitoso como: DOCTOR ");
                sesion.setAttribute("usuario", "Doctor");
                sesion.setAttribute("id", 1);
                response.setHeader("Refresh", "2;afterlog.jsp");
                break;
                
            case 2:
                out.print("Ingreso exitoso: ASISTENTE");
                sesion.setAttribute("usuario", "Asistente");
                sesion.setAttribute("id", 2);
                response.setHeader("Refresh", "2;afterlog.jsp");
        }
        

    } catch (SQLException ex) {
        out.print("En estos momentos el servidor de bases de datos no response, por favor int&eacute;ntelo m&aacute;s tarde.<br/>");
        out.print("Ser&aacute; redireccionado en 5 segundos. -> ");
        out.print(ex.getMessage());
        response.setHeader("Refresh", "2;index.jsp");
    }

%>