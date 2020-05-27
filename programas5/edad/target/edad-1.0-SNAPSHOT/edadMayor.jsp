

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 4</title>
    </head>
    <body>
      <h1>Mayor de Edad</h1>  
       <p>Ingrese el numero:</p>
        <form>
            <input type="number" name="num1"required /><br>
            <input type="submit" name="Enviar"/>
        </form>
        <%
            if (request.getParameter("num1") != null) {
                int numero1 = Integer.parseInt(request.getParameter("num1"));
     

                if (numero1 >= 18) {
                    out.println("El usuario es mayor ");
                }else {
                    out.println("El usuario es menor" );
                }
            }else {
                out.println("No ingreso ningun numero");
            }
        %>
    </body>
</html>
