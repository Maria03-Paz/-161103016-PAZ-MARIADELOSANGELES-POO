
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
    <h1 align="center">Agrega un nuevo Usuario!</h1>
        <br>
        <form action = "agregar.jsp" method="POST">
            <div class="container" align="center">
                <div class="col-lg-6 col-sm-6">
                    <input type="text" class="form-control" placeholder="nombre" name="usuario" required/>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <input type="password" class="form-control" placeholder="password" name="password" required/>
                </div>
                 <div class="col-lg-6 col-sm-6">
                <input type="submit" class="btn btn-success  btn-block" value=enviar>
                 </div>
            </div>
        </form>
        
        
    </body>
</html>
