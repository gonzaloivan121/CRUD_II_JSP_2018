<%-- 
    Document   : login
    Created on : 26-abr-2018, 12:39:46
    Author     : mrhighway98
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ACCEDIENDO...</title>
  </head>
  <body>
    
    <%
      
    HashMap<String, String> acceso = new HashMap<String, String>();
    
    
    acceso.put("admin", "admin");
    acceso.put("malaga27", "codigopostal");
    
    acceso.put("usuario", "usuario");
    acceso.put("", "");
    acceso.put("gonzalo", "chaparro");
    
    String usuario = request.getParameter("usuario");
    String contrasena = request.getParameter("contrasena");
    
    if (acceso.containsKey(usuario)) {
      if (acceso.get(usuario).equals(contrasena)) {
        session.setAttribute("usuario", usuario);
        response.sendRedirect("home.jsp");
        
      } else {
        out.println("<div class='alert alert-success' role='alert'>Contraseña incorrecta</div>");
        out.println("<a href='index.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span>Volver a iniciar sesión</button></a>");
        
      }
    } else {
      out.println("<div class='alert alert-success' role='alert'>El usuario no existe</div>");
      out.println("<a href='index.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span>Volver a iniciar sesión</button></a>");
    }
    %>
    
  </body>
</html>
