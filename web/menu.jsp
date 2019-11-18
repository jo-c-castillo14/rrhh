<%-- 
    Document   : menu
    Created on : 17-11-2019, 22:40:19
    Author     : Joc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    <style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #4CAF50;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}

</style>
</head>
<body>

<div class="header">
  <h1>RRHH</h1>
</div>
<ul>
  <li><a class="active" href="#home">Acciones</a></li>
  <li> <a href="Controlador?accion=MosEmpleados">Empleados </a></li>
  <li><a  href="Controlador?accion=MostrarDepartamento">Departamento</a></li>
  <li> <a  href="Controlador?accion=listar">Login Empleados</a></li>
  <li> <a href="Controlador?accion=MosEmpleados">Empleados </a></li>
  <li> <a  href="Controlador?accion=listarCargo">Cargo Empleado</a></li>
  <li> <a href="Controlador?accion=addCargo">Nuevo Cargo</a></li>
  <li>  <a  href="Controlador?accion=MostrarDepartamento">Ver Departamento</a></li>
  <li><a  href="Controlador?accion=addDepartamento">Crear Departamento</a></li>
    <li><a  href="Controlador?accion=Contratos">Mostrar Contratos</a></li>
</ul>



</body>
    <body>
     
    </body>
</html>
