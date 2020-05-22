<%-- 
    Document   : result
    Created on : 20/05/2020, 20:54:28
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
  
   
    
     <h1>Numeracion:</h1><br>
        
        <%
  
           
            int cont=0;       
          
          
           int n1 = Integer.parseInt(request.getParameter("numero"));
           
           for(int i=0; i<n1; i++){
           out.println(i);
           
         // int n1 = Integer.parseInt(request.getParameter("numero"));
         // String n1 = request.getParameter("numero");
           
           
          
            } 
         out.println(n1);
          // 
 %> 
        
   </body>
</html>
