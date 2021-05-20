<%-- 
    Document   : index
    Created on : 15/05/2021, 19:25:53
    Author     : agr12
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="usuarioServlet" method="post">
            <input type="text" name="usuario" value="" />
            <input type="text" name="password" value="" />
            <button type="submit">Iniciar sesión</button>
        </form>
    </body>
</html>
