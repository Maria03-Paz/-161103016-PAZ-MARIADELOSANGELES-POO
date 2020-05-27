<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 3</title>
    </head>
    <body>
        
       <h1>Numero Mayor o Menor</h1>  
       <p>Ingrese los numeros:</p>
    
        <form>
            <input type="number" name="num1" required/><br>
            <input type="number" name="num2"  required/><br>
            <input type="submit" name="Enviar" />
        </form>
        <%
            if (request.getParameter("num1") != null && request.getParameter("num2") != null) {
                int numero1 = Integer.parseInt(request.getParameter("num1"));
                int numero2 = Integer.parseInt(request.getParameter("num2"));

                if (numero1 > numero2) {
                    out.println("El numero " + numero1 + " es el mayor ");
                }else {
                    out.println("El numero " + numero2 + " es el mayor" );
                }
            }else {
                out.println("No ingreso ningun numero");
            }
        %>
    </body>
</html>
       
       
    </body>
</html>
