<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario</title>
    </head>
    <body>
        
        <br>   
        <h1 align="center">Editar Password</h1>
        <br>
        <form action = "" method="POST">
            <div class="container" align="center">
                <div class="col-lg-6 col-sm-6">      
                         <input type="hidden" name="id_usuario" value="<%=request.getParameter("id")%>"/>
                    </div>
                    <div class="col-lg-6 col-sm-6">      
                         <input type="password" class="form-control" placeholder="ingrese password anterior" name="password" required/>
                    </div>
                  <br>
                    <div class="col-lg-6 col-sm-6">
                         <input type="password" class="form-control" placeholder="nuevo password " name="password" required/>
                    </div>
                  <br>
                    <div class="col-lg-6 col-sm-6">
                         <input type="password" class="form-control" placeholder="confirme password" name="password" required/>
                    </div>
                     <br>
                      <div class="col-lg-6 col-sm-6">
                     <input type="submit" class="btn btn-info  btn-block" value=enviar>
                     </div>
                </form>
   </body>
</html>
             