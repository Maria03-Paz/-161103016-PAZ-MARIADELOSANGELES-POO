<%-- 
    Document   : trinum
    Created on : 23/05/2020, 10:35:45
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario JAVA</h1>  
    
        <form>
            <input type="number" name="uno"/>
            <input type="submit" name="Enviar"/>
        </form>
      
         <%
            if (request.getParameter("uno") != null) {
                int numero1 = Integer.parseInt(request.getParameter("uno"));

                
                  out.println("\n ");
                for (int i=1; i<numero1; i++) {

                    for (int k=1; k<numero1; k++) {
                        out.println("\n ");
                    }
                    for (int t=1; t<=(numero1 * 2) - 1; t++) {
                        out.println(" * ");

                    }
                    out.println();
                }
            }
        %>
    </body>
</html>
