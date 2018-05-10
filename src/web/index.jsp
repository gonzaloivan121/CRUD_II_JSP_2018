<%-- 
    Document   : index
    Created on : 13-mar-2018, 12:38:40
    Author     : mrhighway98
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Inicio - CRUD JSP MYSQL 2018</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="icon" type="image/png" href="assets/favicon.png" />
  </head>
  
  <body class="inicio">
    
    <!-- HEADER -->
    <div class="navbar">
      <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">CRUD JSP MYSQL 2018</a>
          </div>

          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#errorModal" data-toggle="modal" data-target="#errorModal">Inicio</a></li>
              <li><a href="#errorModal" data-toggle="modal" data-target="#errorModal">Instrumentos</a></li>
              <li><a href="#errorModal" data-toggle="modal" data-target="#errorModal">Fabricantes</a></li>
              <li><a href="#errorModal" data-toggle="modal" data-target="#errorModal">Proveedores</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
    <!-- /HEADER -->
    
    
    
    <!-- MODAL -->
    <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModal" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="errorModalTitle">Error</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            No puede acceder al contenido debido a que no ha iniciado sesión.
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>
    <!-- /MODAL -->
    
    
    
    <!-- CONTAINER -->
    <div class="container-fluid contenedor">
      
      <div class="row contenido">
        <div class="col-sm-12">
          <div class="centro-container">
            <div class="centro">
              <div class="cabecera">
                <div id="Contenedor">
                  <div class="Icon">
                    <!--Icono de usuario-->
                    <span class="glyphicon glyphicon-user"></span>
                  </div>
                  
                  <div class="ContentForm">
                    <form action="login.jsp" method="post" name="FormEntrar">
                      <div class="input-group input-group-lg">
                        <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="text" class="form-control" name="usuario" placeholder="Usuario" id="Usuario" aria-describedby="sizing-addon1" required>
                      </div>
                      <br>
                      <div class="input-group input-group-lg">
                        <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
                          <input type="password" name="contrasena" class="form-control" placeholder="Contraseña" aria-describedby="sizing-addon1" required>
                      </div>
                      <br>
                      <button class="btn btn-lg btn-primary btn-block btn-signin" id="IngresoLog" type="submit" value="Acceder">Entrar</button>
                    </form>
                  </div>
                  
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div> <!-- row --> 
      
    </div>
    <!-- /CONTAINER -->
    
  </body>
  
  <script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="assets/js/popper.min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.js"></script>
  
</html>