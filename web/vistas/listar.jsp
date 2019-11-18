
<%-- 
    Document   : lista
    Created on : 10-10-2019, 21:45:54
    Author     : Diegoandres
--%>

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
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Codigo de empleado</th>
                    <th>ACCIONES</th>
                </tr>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> list = dao.listar();
                    Iterator<Persona> iter = list.iterator();
                    Persona per = null; 
                    while(iter.hasNext()){
                        per = iter.next();
                %>
          <tr>
              <td><%= per.getRut()%></td>
                    <td><%= per.getNom()%></td>
                    <td><%= per.getApellido()%></td>
                    <td><%= per.getEmail()%></td>
                    <td><%= per.getId_empleado()%></td>
                    
                 <th>
                     <a href="Controlador?accion=editar&rut=<%= per.getRut()%>">Editar</a>
                     <a href="Controlador?accion=eliminar&rut=<%= per.getRut()%>">Eliminar</a>
                       
  
                     
                     
                    
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
