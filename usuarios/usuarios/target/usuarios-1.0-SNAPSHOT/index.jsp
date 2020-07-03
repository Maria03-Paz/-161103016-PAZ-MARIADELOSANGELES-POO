
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
        stmt= conexion.prepareStatement("Select * from usuario");
        rs=stmt.executeQuery();
            
   
    }catch(Exception e){
        out.println("Error" +e);
    }
%>

<html>
    <head>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>

  <h1 align="center"  style="font-size: 50px" ><em> Los registros en la base de datos son:</em></h1> 
 
    <br>
    <div class="container" >
        <table  class="table table-hover table-responsive-sm " align="center" style="width:55%">
            <thread class="thread-dark">
                <tr>
                    <td colspan="2"><h2>Usuarios</h2></td>
                    <td><a class="btn btn-success btn-block" href="formulario.jsp">Agregar Usuario</a></td>  
                    <td>  </td>
                    <td>  </td>
                     <td>  </td>
                    <td>  </td>
                     <td>  </td>
                </tr>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Contraseña</th>
                    <th scope="col">telefono</th>
                    <th>  </th>
                     <th>  </th>
                     <th>  </th>
                     <th>  </th>
                </tr>
            </thead>
            <tbody>    
                
              <% while (rs.next()) {%>
                <tr>
                    <th scope="row"><%=rs.getInt("id_usuario")%></th>
                    <td><%=rs.getString("usuario")%></td>	
                    <td><%=rs.getString("password")%></td>
                     <td><%=rs.getString("telefono")%></td>
                    <td><a class="btn btn-info btn-block"  href="formulario.jsp?id=<%= rs.getInt("id_usuario")%>">Editar</a> </td>
                    <td><a class="btn btn-danger btn-block" href="eliminar.jsp?id=<%= rs.getInt("id_usuario")%>">Eliminar</a></td>
                    <td><a class="btn btn-warning btn-block" href="elimina2.jsp?id=<%= rs.getInt("id_usuario")%>">EliminarV2</a></td>
                     <td><a class="btn btn-dark btn-block" href="password.jsp?id=<%= rs.getInt("id_usuario")%>">Password</a></td>
                </tr>
                <% }%>
            </tbody>  
        </table>
    </div> 
    <br>
    <br>
    <br>
  </body>
</html>
