<%-- 
    Document   : ValidaUser
    Created on : 25-nov-2016, 12:36:07
    Author     : linf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import ="modelo.Persona"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        -pagina validar-
        <%
            Persona p1 =(Persona)request.getSession().getAttribute("persona1");
            
            
            String userid = p1.getUserName();
            String _pwd = p1.getUserPass();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examenbd",
                    "root", "");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from usuario where Rut='" + userid + "' and Clave='" + _pwd + "'");
            if (rs.next()) {
                response.sendRedirect("exito.jsp");
               
            } else {
                response.sendRedirect("ErrorLogin.jsp");
            }
        %>


    </body>
</html>
