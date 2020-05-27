

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 5</title>
    </head>
    <body>
        <h1>Triangulo</h1>  
        <p>Ingrese un numero:</p>
        <form>
            <input type="number" name="num" required/><br>
            <input type="submit" name="Enviar"/>
        </form>
      <br>
        <%
            if (request.getParameter("num") != null) {
                int numero = Integer.parseInt(request.getParameter("num"));

                for (int i = 0; i < numero; i++) {
                    int j = 0;
                    while (j <= i) {
                        out.println("*");
                        j++;
                    }
        %>
        <p> </p>
        <% }

               } else {%>
        <p>No se ha ingresado ningun numero </p>
        <% }
        %>
    </body>
</html>
