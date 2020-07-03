<%@page import="java.sql.*"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("UPDATE usuario SET usuario=? WHERE id_usuario=?");
        stmt.setString(1, request.getParameter("usuario"));
        stmt.setInt(2, Integer.parseInt(request.getParameter("id_usuario")));
        
        if(stmt.executeUpdate()>0 ){ %>
                 <div class="alert alert-success" role="alert">
                   Se cambio correctamente el usuario
                </div>
                 <a href="index.jsp" class="btn btn-info btn-block">Menu</a>
            
            <%}%>
          
    <%
    } catch (Exception e) {%>
    <form action="index.jsp" methode="POST" class="form" >
        <div class="alert alert-danger" role="alert" align="center" class="col-lg-4 col-sm-6">
                     Error usuario no modificado Correctamente!
        </div>
        <input type="submit" class="btn btn-success btn-block" value="Regresar" />
    </form>
    <%}
%>        
     
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar un nuevo usuario</title>
    </head>
    <body>
         
    </body>
</html>


