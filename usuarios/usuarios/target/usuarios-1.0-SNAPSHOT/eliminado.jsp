

<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int id=Integer.parseInt(request.getParameter("id"));
        
    try{
         Class.forName("com.mysql.jdbc.Driver");
         conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
        stmt= conexion.prepareStatement("DELETE FROM usuario WHERE id_usuario=?");
         stmt.setInt(1, id);
         stmt.executeUpdate();
      
%>
        
<html>
    
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Eliminar</title>
        </head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <body>
            <br>   
            <h1 align="center">Eliminar Usuario</h1>
            <br>
                <div class="container" align="center"><br>
                <%
                out.print(" <div class='alert alert-info' role='alert'> ");
                    out.println("Usuario eliminado con exito");
                out.print("</div>");
                     
              }catch(Exception e){%>
                      <div class='alert alert-danger' role='alert'>
                             <%out.println("Error "+e.getMessage());%> 
                             </div>
    <%} %> 


                      <div class="col-lg-6 col-sm-6">
                          <td><a class="btn btn-dark" href="index.jsp">Regresar</a></td>    </div>
    </body>
</html>

      
   