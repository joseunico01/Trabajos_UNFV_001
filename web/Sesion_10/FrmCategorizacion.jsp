<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <title>JSP Page</title>
   <script>
      function enviar(){
         document.form.action="<%=request.getContextPath()%>/CategoriaControlador";
         document.form.method="GET";
         document.form.submit();
      }
   </script>
   <style>
      *{
         margin: 5px;
         padding: 5px;
      }
      .a{
         text-align: center;
      }
      body{
    background-image: linear-gradient(to top, rgba(251, 194, 235, 0.486) 0%, hsla(218, 68%, 79%, 0.514) 100%), url(Sesion_10/recursos/imagen1.jpg);
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
      }
   </style>
   </head>
   <body>
   <center><h1><b>Bienvenido UNFV</b></h1>
      <h2><b>Calcular la pension a pagar</b></h2>
   </center>
   
      <div class="container">
         <center>
      <form name="form">
         <table border="1">
            <tr><td class="a"><b>CATEGORIA</b></td></tr>
            <tr><td class="a"><input type="radio" name="txtCategoria" value="A">A</td></tr>
            <tr><td class="a"><input type="radio" name="txtCategoria" value="B">B</td></tr>
            <tr><td class="a"><input type="radio" name="txtCategoria" value="C">C</td></tr>

            <tr><td class="a"><b>TIPO DE ALUMNO</b></td></tr>
            <tr><td class="a"><input type="radio" name="txtTipoAlumno" value="INTERNO">INTERNO</td></tr>
            <tr><td class="a"><input type="radio" name="txtTipoAlumno" value="EXTERNO">EXTERNO</td></tr>

            <tr><td class="a"><b>PROMEDIO</b></td></tr>
            <tr><td class="a"><input type="text" name="txtPromedio"></td></tr>
            <tr><td class="a"><input type="submit" class="btn btn-primary" value="CALCULAR" onclick="enviar()"></td></tr>

            <tr><td class="a"><b>VER RESULTADOS</b></td></tr>
            <tr><td class="a"><textarea name="" rows="8" cols="50" readonly="">
               <%
               String nuevaPension=(String)request.getAttribute("nuevaPension");
               if(nuevaPension!=null){
                  out.print(nuevaPension);
               }else{
                  out.print("");
               }
               %>
                  </textarea></td></tr>
         </table>
      </form> 
         </center>
      </div>
   </body>
</html>
