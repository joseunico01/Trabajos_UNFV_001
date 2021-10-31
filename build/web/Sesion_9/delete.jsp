<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Delete Registro</title>
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
        ps=con.prepareStatement("delete from persona where codigo="+id);
        ps.executeUpdate();
        response.sendRedirect("index.jsp");
                %> 
        </body>
</html>
