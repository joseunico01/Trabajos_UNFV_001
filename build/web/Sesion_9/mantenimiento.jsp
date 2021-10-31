<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Inicio-BBDD Regsitro</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

                <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        </head>
<body>
                <br>
                <div class="text-center">
                <a href="index.jsp">Regresar</a>
                </div>
                <br>
                <div class="container">
                        <div class="text-center">
                                <h1>MANTENIMIENTO-AGREGAR</h1>
                        </div>
                <hr>
                <form action="" method="post" class="form-control" style="width: 500px; height: 200px">
                        Codigo:
                        <input type="text" name="txtCod" class="form-control">
                        Nombres:
                        <input type="text" name="txtNom" class="form-control">
                        <br>
                        <div class="text-center">
                        <input type="submit" value="Guardar" class="btn btn-primary btn-sm"/>
                        </div>
                </form>
                </div>
<%
        //Conectando a la base de datos:
        Connection con;
        String url="jdbc:mysql://localhost:3306/proyecto_01";
        String Driver="com.mysql.cj.jdbc.Driver";
        String user="root";
        String clave="vasquez";
        Class.forName(Driver);
        con=DriverManager.getConnection(url, user, clave);
        PreparedStatement ps;
        String cod, nom;
        cod=request.getParameter("txtCod");
        nom=request.getParameter("txtNom");
        if(nom!=null && cod!=null){
                ps=con.prepareStatement("insert into persona(codigo,Nombres,estado)values('"+cod+"','"+nom+"','habilitado')");
                ps.executeUpdate();
                response.sendRedirect("index.jsp");
        }
%>
        
<%
        //Empezamos con el listado de la tabla Usuario
        ResultSet rs;
        ps=con.prepareStatement("select * from persona");
        rs=ps.executeQuery();
       //Creamos la tabla
%>
<div class="container">
        <br>
        <div class="text-center">
                <h1>RELACION DE BASE DE DATOS</h1>
        </div>
        <hr>
        <br>
        <table class="table table-bordered">
                <tr>
                        <th class="text-center">CODIGO</th>
                        <th class="text-center">NOMBRES</th>
                        <th>ESTADO</th>
                        <th class="text-center">MODIFICAR</th>
                        <th class="text-center">ELIMINAR</th>
                </tr>
<% 
        while(rs.next()){
%>
<tr>
        <td class="text-center"><%= rs.getInt("codigo")%></td>
        <td class="text-center"><%= rs.getString("Nombres")%></td>
        <td><%= rs.getString("estado")%></td>
        <td class="text-center"><a href="editar.jsp?id=<%= rs.getInt("codigo")%>" class="btn btn-info btn-sm">Editar</a></td>
        <td><a href="delete.jsp?id=<%= rs.getInt("codigo")%>" class="btn btn-danger btn-sm">Eliminar</a></td>
        </td>
</tr>
<%}%>
        </table>
        
</div>
</body>
</html>
