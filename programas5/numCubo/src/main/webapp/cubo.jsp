

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 2</title>
    </head>
    <body>
         <h1>Calcular el Cubo</h1>  
        <p>Ingrese un numero:</p>
        
          <form>
            <input type="number" name="num" required/><br>
            <input type="submit" name="Enviar"/>
        </form>
        
        <%
            int cubo = 0;
            if (request.getParameter("num") != null) {
                int n = Integer.parseInt(request.getParameter("num"));

                cubo = n * n * n;%>

        <br>
        <%
                out.println(" El cubo es: " + cubo);
            }
        %>

   
    </body>
</html>
