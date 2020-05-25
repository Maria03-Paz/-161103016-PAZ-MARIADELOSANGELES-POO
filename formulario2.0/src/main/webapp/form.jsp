

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario 2.0</title>
    </head>
    <body>
        <h1>El programa que debio ser y no fue(Sin Try, Sin JavaScript y Sin Problemas de GlassFish)</h1>
       
       
        <%
             if (request.getParameter("num") != null) {%>
        <h2> EL ciclo del valor ingresado es: </h2>
        <%
            int num1 = Integer.parseInt(request.getParameter("num"));
            
            for (int i = 0; i < num1; i++) {
                out.println(i);
            }
            out.println(num1);
        %>
        <form>
            <input type="hidden" value="PRUEBA"/><br> 
            <input type="submit" name="regresar"/>
        </form>
        <%
        } else if (request.getParameter("num") == "hidden") {%>

        <% } else {%>
        <form>
            <input type="number" name="num" required/><br> 
            <input type="submit" name="regresar"/>
        </form>
        <p><em>No se ha ingresado ningun numero</em></p>

        <%}%>

    </body>
</html>
