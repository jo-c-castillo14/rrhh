<%-- 
    Document   : listarcargo
    Created on : 16-11-2019, 19:13:17
    Author     : Diegoandres
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Cargo"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <h1>Cargos</h1>
     
          <div style="overflow-x:auto;">
        <table>
            <thead>
                <tr>
                    <th>Codigo Cargo</th>
                    <th>Nombre Cargo</th>

                    <th>ACCIONES</th>
                </tr>
                <%
                    CargoDAO dao = new CargoDAO();
                    List<Cargo> list = dao.listarCargo();
                    Iterator<Cargo> iter = list.iterator();
                    Cargo per = null;
                    while (iter.hasNext()) {
                        per = iter.next();
                %>
                <tr>
                    <td><%= per.getId_Cargo()%></td>
                    <td><%= per.getDescripcion()%></td>



                    <th>


                        <a href="Controlador?accion=eliminarCargo&id=<%= per.getId_Cargo()%>">Eliminar</a>

                    </th>




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
   <a href="Controlador?accion=addcargo">Nuevo Cargo</a>
    </body>
</html>
