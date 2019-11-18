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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Personas</h1>
        <a href="Controlador?accion=add"> Agregar Nuevo</a>
        <table border="1">
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

    </body>
</html>
