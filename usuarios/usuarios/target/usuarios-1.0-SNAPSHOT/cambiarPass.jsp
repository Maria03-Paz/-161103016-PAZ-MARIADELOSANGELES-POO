
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
         stmt= conexion.prepareStatement("UPDATE usuario SET password=MD5(?) WHERE id_usuario=?");
         stmt.setString(1,request.getParameter("password"));
         stmt.setInt(2,Integer.parseInt(request.getParameter("id")));
         
        if(stmt.executeUpdate()==1 ){ %>
                <div>
                <h2>Se cambio correctamente la contraseña</h2>
                <a href="index.jsp" class="btn btn-danger btn-block">Menu</a>
             </div>
            <%}
       
            }catch(Exception e){
                 System.out.println(e.getMessage());
             }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
