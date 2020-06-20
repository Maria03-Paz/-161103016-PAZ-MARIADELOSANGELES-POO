

<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
    try{
         Class.forName("com.mysql.jdbc.Driver");
         conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
        stmt= conexion.prepareStatement("DELETE FROM usuario WHERE id_usuario=?");
       stmt.setInt(1, Integer.parseInt(request.getParameter("id_usuario")));
  
    }catch(Exception e){
         System.out.println(e.getMessage());
    }
%>
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <body>
        <br>
        <div class="alert alert-success" role="alert" align="center">
            Eliminado Correctamente!
        </div>
        <div class="col-lg-4 col-sm-6">
            <td><a class="btn btn-success btn-block" href="index.jsp">Regresar</a></td>
        </div>
    </body>
</html>

      
   