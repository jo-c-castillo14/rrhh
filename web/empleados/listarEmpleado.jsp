<%-- 
    Document   : listarEmpleado
    Created on : 17-10-2019, 17:54:46
    Author     : Diegoandres
--%>

<%@page import="Modelo.Empleados"%>
<%@page import="ModeloDAO.EmpleadosDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personas</title>
        <style>
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: blue;
}
</style>
        <style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
    </head>
    <body>
        <h1>Personas</h1>

            
                    <div style="overflow-x:auto;">
  <table>
      <thead>
    <tr>
     <th>Codigo empleado</th>
                    <th>Nombre empresa</th>
                    <th>codigo departamento</th>
                     <th>codigo  cargo</th>
                     <th>Horas trabajadas</th>
                    <th>sueldo</th>
                    <th>ACCIONES</th>
    </tr>
                    
                <%
                    EmpleadosDAO dao = new EmpleadosDAO();
                    List<Empleados> list = dao.listarEmpleado();
                    Iterator<Empleados> iter = list.iterator();
                    Empleados per = null; 
                    while(iter.hasNext()){
                        per = iter.next();
                %>
          <tr>
              <td><%= per.getId_empleados()%></td>
                    <td><%= per.getId_departamento()%></td>
                    <td><%= per.getId_cargo()%></td>
                    <td><%= per.getEmail()%></td>
                    
                 <th>
                     <a href="Controlador?accion=departamento&rut=<%= per.getId_empleados()%>">Departamento</a>
                 
                     
                     
                    
                 </th>
          </tr>
          <% 
                    }%>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
<a href="Controlador?accion=add" target="_blank">Agregar Empleado</a>
    </body>
</html>
