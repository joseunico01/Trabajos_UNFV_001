<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
                <title>Editar registro</title>
        </head>
        <body>
<%
        //Conectando a la base de datos:
        Connection con;
        String url="jdbc:mysql://localhost:3306/proyecto_01";
        String Driver="com.mysql.cj.jdbc.Driver";
        String user="root";
        String clave="vasquez";
        Class.forName(Driver);
        con=DriverManager.getConnection(url, user, clave);
        //Empezamos con el listado de la tabla Persona pero de la fila seleccionada
        PreparedStatement ps;
        ResultSet rs;
        int id=Integer.parseInt(request.getParameter("id"));
        ps=con.prepareStatement("select * from persona where codigo="+id);
        
        rs=ps.executeQuery();
        while(rs.next()){
%>
                <div class="container">
                <h1>Modificar Registro</h1>
                <hr>
                <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                        ID:
                        <input type="text" readonly="" class="form-control" value="<%= rs.getInt("codigo")%>"/>
                        DNI:
                        <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("Nombres")%>"/>
                        Nombres:
                        <input type="text" name="txtEst" class="form-control" value="<%= rs.getString("estado")%>"/>
                        <br>
                        <br>
                        <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
                        <a href="index.jsp">Regresar</a>
                </form>
<%}%>
                </div>
        </body>
</html>
<%      String est, nom;
        nom=request.getParameter("txtNom");
        est=request.getParameter("txtEst");
        if(nom!=null && est!=null){
                ps=con.prepareStatement("update persona set Nombres='"+nom+"', estado='"+est+"'where codigo="+id);
                ps.executeUpdate();
                response.sendRedirect("index.jsp");
        }
%>