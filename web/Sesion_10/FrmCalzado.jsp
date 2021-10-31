<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <title>JSP Page</title>
      
      <style>
         *{
            margin: 5px;
            padding: 5px;
         }
   body{
    background-image: linear-gradient(to top, rgba(251, 194, 235, 0.486) 0%, hsla(218, 68%, 79%, 0.514) 100%), url(Sesion_10recursos/imagen1.jpg);
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
      }
      </style>
   </head>
   <body>
   <center><h1><b>Bienvenido A Calzado SAC </b></h1></center>
      <div class="container">
         <center>
      <form class="form-control" method="GET" action="<%=request.getContextPath()%>/CalzadoControlador">
         <table>
          <tr>
             <th>Marca</th>
             <td><select name="txtMarca">
                <option value="O" selected="">...</option>
                <option value="Batta">Batta</option>
                <option value="Calimod">Calimod</option>
                <option value="Azaleia">Azaleia</option>
                <option value="Renzo Costa">Renzo costa</option>
          </select></td>
          </tr>
          <tr>
             <th>Talla</th>
             <td><select name="txtTalla">
                <option value="O" selected="">...</option>
                <option value="30">30</option>
                <option value="35">35</option>
                <option value="39">39</option>
                <option value="40">40</option>
                <option value="44">44</option>
          </select></td>
          </tr>
          <tr>
          <td colspan="3">
             <input class="form-crontrol mb-3" placeholder="Los Pares de zapatillas" type="text" name="txtnumParVendidos">
          </td>
          </tr>
          <tr>
             <td colspan="2"><center><input type="submit" class="btn btn-primary" value="Enviar"></center></td>
         </tr>
         </table>
      </form>
      </center>
      </div>
<br><br>
<div class="alert alert-info" role="alert">
   <center>
   <%
   //Codigo de respuesta dl servlet
    String mensaje=(String)request.getAttribute("costoFinal");
    out.print(mensaje);
   %>
   </center>
</div>
   </body>
</html>
