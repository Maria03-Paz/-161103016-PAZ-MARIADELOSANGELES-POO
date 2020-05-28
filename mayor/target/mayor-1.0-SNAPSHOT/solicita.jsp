<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    int num = Integer.parseInt(request.getParameter("numero"));
    

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar los números</title>
    </head>
    <body>
        <h1>Ingresa un total de: <%out.println(num);%></h1>
        <form>

            <input type="hidden" value="<%out.print(num);%>" name="numero"/>
            <%
                int arreglo[] = new int[num];
                // arreglo[0] = "”;
                
                for (int i = 0; i < num; i++) {%>
            <input type="number" name="valor<%out.print(i);%>" requerid/>
            
            
            <% if(request.getParameter("valor"+i)!=null){
            int valor = Integer.parseInt(request.getParameter("valor"+i));
                    arreglo[i] = valor;
                }
            }
            
                for (int j = 0; j < num; j++) {
                    out.println(arreglo[j]);
                }

            %>

            <input type="submit" value="envianding dato"/>
        </form>
       

    </body>
</html>