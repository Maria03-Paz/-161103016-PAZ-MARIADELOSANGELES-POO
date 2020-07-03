
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
        String clave1,clave2,clave;
       int id=0;

       if(request.getParameter("actual")!=null){
          id=Integer.parseInt(request.getParameter("id"));
                clave=request.getParameter("actual");

           Connection conexion = null;
           PreparedStatement stmt = null;
           ResultSet rs = null;

   try{
         Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
            stmt= conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=? AND password=MD5(?)");
            stmt.setInt(1, id);
            stmt.setString(2, clave);
            rs=stmt.executeQuery(); 


            if(rs.next()==true){
                if(request.getParameter("nuevo")!=null && request.getParameter("confirma")!=null){
                    clave1 = request.getParameter("nuevo");
                    clave2 = request.getParameter("confirma");
                    
                 if(clave1.equals(clave2)){%>
                    <div class="alert alert-info" role="alert">
                     Seguro que quiere cambiar su contraseña?
                    </div> 
                    
               <form action="cambiarPass.jsp" method="GET">
                    <input class="form-control" type="hidden" name="password" value="<%=clave1%>" id="" />
                   <input type="hidden" value="<%=id%>" name="id" />
                  <div class="form-group">
                   <input class="btn btn-success btn-block"  type="submit" value="Cambiar o enviar">
                    <a href="index.jsp" class="btn btn-danger btn-block">Cancelar por si te arrepientes</a>
                 </div>
              </form>
                                 
           <%}else{%>
                <div class="alert alert-danger" role="alert">
                    <h2>No coinsiden las nuevas contraseñas</h2>
                    <a href="index.jsp" class="btn btn-info btn-block">Regresar</a>
                </div>
            <%}
            }           
         }else{%>

                <div class="alert alert-danger" role="alert">
                    <h2>La contraseña es incorrecta</h2>
                    <a href="index.jsp" class="btn btn-info btn-block">Regresar</a>
                </div>

   <%}
        
     }catch(Exception e){%>
         <div class="alert alert-danger" role="alert">
        <h2>La contraseña es incorrecta</h2>
        <a href="index.jsp" class="btn btn-info btn-block">Regresar</a>
        </div>  
         
     <%
        }
   
     %>
      


<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edicion Password</title>
    </head>
    <body>
        <h1>Hello World!</h1>

    </body>
</html>