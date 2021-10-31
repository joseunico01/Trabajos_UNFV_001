<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

                <title>JSP Page</title>
        </head>
        <body>
                <div style="border: 2px solid red; display: inline-block">
                        <h1>Mantenimiento</h1>
                </div>
                <br><br><hr>
                <form method="get" action="<%=request.getContextPath()%>/ClassServlet" class="container" style="text-align: center; height: 100px">
                                <input  class="btn btn-lg btn-primary"  name="mantenimiento.jsp" type="submit" value="carrera">
                </form>
                        <br><br>
                <form method="get" action="" class="container" style="text-align: center; height: 100px">
                                <input class="btn btn-lg btn-primary" name="nada.jsp" type="submit" value="Materia">
                </form>

        </body>
</html>
