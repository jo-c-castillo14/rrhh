<%-- 
    Document   : add
    Created on : 10-10-2019, 21:46:10
    Author     : Diegoandres
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Person</h1>
        <jsp:useBean id="cn" class="ModeloDAO.DepartamentoDAO" scope="page"></jsp:useBean>
          <%
            ResultSet rs = cn.mostrardepartamento();
            ResultSet ps = cn.mostrarcargo();
        %>
          <form action= "Controlador">
            Rut:<br>
                <input type="text" name="txtRut"><br>
                   Nombre:<br>
                   <input type="text" name="txtNombre"><br>
                   Apellido:<br>
                  <input type="text" name="txtApellido"><br>
                  email<br>
                  <input type="text" name="txtEmail"><br>
                  Codigo de Empleado<br>
                  <input type="text" name="txtCodEmpleado"><br>
                   //<br>
            <select name="txtArea" class="combos">
                <option>Seleccione Departamento</option>
                <%
                    while (rs.next()) {
                %>
                <option type="text" value="<%=rs.getInt("id_departamento")%>"><%=rs.getString("descripcion")%></option>
                <% }
                    rs.close();
                %>
            </select>
            <p>Cargo</p>
            <select name="txtcargo" class="combos">
                <option>Seleccione Cargo</option>
                <%
                    while (ps.next()) {
                %>
                <option type="text" value="<%=ps.getInt("id_cargo")%>"><%=ps.getString("descripcion")%></option>
                <% }
                    ps.close();
                %>
            </select>
                   <input  type="submit" name="accion" value="Agregar"><br>
                   
                 
           
         
        </form>
    </body>
  
    
</html>
