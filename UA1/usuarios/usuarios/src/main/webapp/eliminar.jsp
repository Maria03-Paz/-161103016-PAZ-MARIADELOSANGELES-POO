

<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 

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
        <form action = "" method="POST">
            <div class="container" align="center">
                <div class="alert alert-info" role="alert">
                    Desea eliminar a el usuario?
                </div>
                     <br>
                      <div class="col-lg-6 col-sm-6">
                          <td><a class="btn btn-dark" href="index.jsp">Cancelar</a></td>  <td><a class="btn btn-danger" href="eliminado.jsp">Eliminar</a></td>
                   </div>
             </form>
    </body>
</html>





      
  