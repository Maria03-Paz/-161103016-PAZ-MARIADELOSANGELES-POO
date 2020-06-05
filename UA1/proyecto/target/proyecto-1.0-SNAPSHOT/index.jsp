

<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
        Statement stnt = null;
        ResultSet rs = null;
    try{
         Class.forName("com.mysql.jdbc.Driver");
         conexion = DriverManager.getConnection("jdbc:mysql://localhost/peluches","root","");
         stnt = conexion.createStatement();
            
   
    }catch(Exception e){
        out.println("Error" +e);
    }
%>
         

<html>
    <head>
      
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

/* imagen de fondo */
 body {
  background-image: url('img/ran.jpg');
}


/* Style the header */
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* color lineas tabla */
td, th {
  border: 1px solid #8FBC8F;
  text-align: left;
  padding: 8px;
}


table th {
  background-color: cornflowerblue;
  color: white;
}

/* color cuadros tabla */
tr:nth-child(even) {
  background-color: #B9F6CA;
}
</style>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD</title>
    </head>
    <body style="background-color: white ;" >
        
    <div style="background-color:#000000; padding:35px; text-align:center; ">
  <h1 align="center" style="color:white;" style="font-size: 70px" ><em>CRUD Peluches</em></h1>
</div>  
    
      <br>
      <table align="center" style="width:55%">
        <tr>
             
             <th>Id</th>
             <th>Nombre</th>
            <th>Precio</th>   
            <th>Piezas</th> 
            <th>Tipo</th>
    
            </tr>
            
      <%   rs = stnt.executeQuery(" SELECT peluch.id_peluche, peluch.nombre, peluch.precio, peluch.piezas, catalogo.nombre FROM peluch JOIN catalogo ON peluch.id_peluche=catalogo.id_tipo");
      
         while(rs.next()){%>
            
            <tr>
           <td><% out.print(rs.getString(1));%></td>
           <td><% out.print(rs.getString(2));%></td>
           <td> <%out.print(rs.getString(3));%></td>
           <td><%out.print(rs.getString(4));%></td>
           <td><%out.print(rs.getString(5));%></td>
         
           </tr>
       <%}%>  
      </table>
      
      <br>
      <br>
     
      <h1 align="center" style="font-size: 60px" ><em>Catalogo</em></h1>
      <h2 align="center" style="color:white;">Animales</h2>
     
     <table align="center" style="width:55%">
        <tr> 
             <th><p>Oso Gigante</p></th>
             <th><p>Pinguino Con Bufanda </p></th>
             <th><p>Pollito</p></th>
             <th><p>Gato</p></th>     
            </tr>
          
            <td><img src="img/osi.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/pingui.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/pollito.jpg" align="center" style="width:150px;height:150px;" > </td>
             <td><img src="img/gato.jpg" align="center" style="width:150px;height:150px;" > </td>
     </table>
      
     <h2 align="center" style="color:white;">Video Juegos</h2>
     
     <table align="center" style="width:55%">
        <tr>   
             <th><p>Yoshi</p></th>
             <th><p>Angry Birds</p></th>
             <th><p>Packman</p></th>
             <th><p>Mario Bros</p></th>
            </tr>
          
            <td><img src="img/yoshi.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/angry.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/pac.jpg" align="center" style="width:150px;height:150px;" > </td>
             <td><img src="img/bros.jpg" align="center" style="width:150px;height:150px;" > </td>
     </table>
     
      <h2 align="center" style="color:white;">Caricaturas</h2>
     
     <table align="center" style="width:55%">
        <tr>
             
             <th><p>Mickey</p></th>
             <th><p>Stitch</p></th>
             <th><p>Osos Escandalosos</p></th>
             <th><p>Garfield</p></th>
            </tr>
          
            <td><img src="img/mickey.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/stich.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/escandalosos.jpg" align="center" style="width:150px;height:150px;" > </td>
             <td><img src="img/garfield.jpg" align="center" style="width:150px;height:150px;" > </td>
         
     </table>
      
      
      
       <h2 align="center" style="color:white;">Anime</h2>
     
     <table align="center" style="width:55%">
        <tr>
             
             <th><p>Pikachu</p></th>
             <th><p>Rilakkuma</p></th>
             <th><p>Miku</p></th>
             <th><p>Dango</p></th>
            </tr>
          
            <td><img src="img/pikachu.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/rilakkuma.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/miku.jpg" align="center" style="width:150px;height:150px;" > </td>
             <td><img src="img/dango.jpg" align="center" style="width:150px;height:150px;" > </td>
     </table>
    <br>   
     
    </body>
</html>

            