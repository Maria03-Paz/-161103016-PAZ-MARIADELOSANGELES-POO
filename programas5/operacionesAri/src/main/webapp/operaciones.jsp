

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 1</title>
    </head>
    <body>
        <h1>Operaciones Aritmeticas</h1> 
         <p>Ingrese los numeros:</p>
    
        <form>
            <input type="number" name="num1" required/><br>
            <input type="number" name="num2" required/><br>
            <input type="submit" name="Enviar"/>
        </form>
        <%
            float r1 = 0, r2 = 0, r3 = 0, r4 = 0;

            if (request.getParameter("num1") != null && request.getParameter("num2") != null) {
            
                float n1 = Float.parseFloat(request.getParameter("num1"));
                float n2 = Float.parseFloat(request.getParameter("num2"));

                r1 = n1 + n2;
                r2 = n1 - n2;
                r3 = n1 * n2;
                r4 = n1 / n2;

                out.println(" \nLa suma es: " + r1);
                out.println("\r La resta es: " + r2);
                out.println("\r La multiplicacion es: " + r3);
                out.println("\r La division es: " + r4);
                

            } else {%>
        <p>No ha ingresado ningun numero</p>
        <%}

        %>
    </body>
</html>
