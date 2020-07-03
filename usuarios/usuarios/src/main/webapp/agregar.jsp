

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
         //colocar los demas atributos
         stmt= conexion.prepareStatement("INSERT INTO usuario(usuario, password, telefono)  VALUES (? ,MD5(?),?)");  
        stmt.setString(1,request.getParameter("usuario"));
        stmt.setString(2,request.getParameter("password"));
         stmt.setInt(3, Integer.parseInt(request.getParameter("telefono")));
        System.out.println(stmt.executeUpdate());

    %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <body>
        <br>
        <div class="alert alert-primary" role="alert" align="center">
            Usuario Agregado Correctamente!
        </div>
        <div class="col-lg-4 col-sm-6">
            <td><a class="btn btn-success btn-block" href="index.jsp">Regresar</a></td>
        </div>
    </body>
</html>

      
   <%
    }catch(Exception e){
        out.println(e.getMessage());
    }
%>