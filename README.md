# TIENDA MUSICAL

## Proyecto CRUD con JSP, MySQL, Bootstrap y JavaScript

Este ejercicio en JSP será sobre una tienda de música (Guitarras, Bajos y Baterías).  


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
  acceso.put("gonzalo", "chaparro");
  
  String usuario = request.getParameter("usuario");
  String contrasena = request.getParameter("contrasena");
  
  if (acceso.containsKey(usuario)) {
    if (acceso.get(usuario).equals(contrasena)) {
      session.setAttribute("usuario", usuario);
      response.sendRedirect("home.jsp");
      
    } else {
      out.println("<script type=\"text/javascript\">");
      out.println("alert('¡Contraseña Incorrecta!');");
      out.println("location='index.jsp';");
      out.println("</script>");
      
    }

  } else {
    out.println("<script type=\"text/javascript\">");
    out.println("alert('¡El usuario " + usuario + " no existe!');");
    out.println("location='index.jsp';");
    out.println("</script>");
  }

%>
```

## LOS TIPOS DE INSTRUMENTOS ESTÁN GUARDADOS EN UN ARRAYLIST

### Código JSP/HTML

```
...
<%
  ArrayList<String> instrumento = new ArrayList();
  instrumento.add("Guitarra Eléctrica");
  instrumento.add("Guitarra Acústica");
  instrumento.add("Guitarra Española");
  instrumento.add("Bajo Eléctrico");
  instrumento.add("Bajo Acústico");
  instrumento.add("Batería Acústica");
  instrumento.add("Batería Eléctrica");
%>

<div class="form-group">
	<select type="text" class="form-control select-instrumentos" name="instrumento">
  <option value="" selected disabled hidden>Elige el instrumento</option>

  <%
  for (String x : instrumento) {
    out.println("<option>" + x + "</option>");
  }
  %>
	</select>
<div>
...
```
