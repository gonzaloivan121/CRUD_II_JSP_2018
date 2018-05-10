# CRUD_II_JSP_2018 (V2)

Este ejercicio en JSP y MySQL será sobre una tienda de música (Guitarras, Bajos y Baterías).  


## Descripción

He usado el framework CSS Bootstrap que ha dado estilo a la web basada en JSP y base de datos en MySQL.
He decidido hacerlo sobre música porque es lo que más me gusta.  



## Páginas

Aquí dejo capturas de pantalla de las diferentes páginas de la web.  



### Inicio

<img src="screenshots/inicio.png" width="750px">

Decidí usar unos colores estilo Material Design.  


### Instrumentos

<img src="screenshots/instrumentos.png" width="750px">  


### Fabricantes

<img src="screenshots/fabricantes.png" width="750px">  


### Proveedores

<img src="screenshots/proveedores.png" width="750px">  


## Funcionalidades

```
Ahora vamos a ver las funcionalidades
```


### Editar / Actualizar

<img src="screenshots/editar.png" width="750px">  


### Borrar / Añadir / Mostrar

<img src="screenshots/borrar1.png" width="750px">  

<img src="screenshots/borrar2.png" width="750px">  



# NUEVO

## INICIO DE SESIÓN CON HASH MAP

### Captura de pantalla

<img src="screenshots/login.png" width="750px">

### Código JSP/HTML

```
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
```