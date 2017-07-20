<%-- 
    Document   : Exito
    Created on : 25-nov-2016, 12:36:16
    Author     : linf
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="modelo.Persona"%>
<%@page import ="modelo.Pedido"%>
<%@page import="java.sql.*" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Donde La Abuela</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/business-casual.css" rel="stylesheet">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    </head>


    <body>
        <div class="imgenDLA">
            <img class="img-responsive img-full" src="img/DLA-01.svg" alt="">
        </div>

        <!-- Navigation -->
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                    <a class="navbar-brand" >Menu</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="index.jsp">Inicio</a>
                        </li>
                        <li>
                            <a href="nosotros.jsp">Nosotros</a>
                        </li>
                        <li>
                            <a href="Registrarse.jsp">Registrate</a>
                        </li>
                        <li>
                            <a href="Comprar.jsp">Comprar</a>
                        </li>
                        <li>
                            <a href="contacto.jsp">Contacto</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <div class="container">

            <div class="row">
                <div class="box">
                    <div class="col-lg-12 text-center">





                        <p style="font-size: 10px; color: #777">
                            <%
                                //conectarse a Bd y controlar excepciones
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conexion = DriverManager.getConnection("jdbc:mysql://127.0.0.1/examenbd", "root", "");
                                    out.println("Conexión realizada con éxito a " + conexion.getCatalog());
                                    conexion.close();
                                } catch (SQLException ex) { %>
                            <%} catch (Exception ex) { %>
                            <%}%>

                            <%
                                //Conectarse a Bd y generar consultas 
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/examenbd",
                                        "root", "");

                                Statement consulta = conexion.createStatement(
                                        ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                                //
                                //Variable rs de tipo ResultSet 

                                Persona p1 = (Persona) request.getSession().getAttribute("persona1");
                                ResultSet rs = consulta.executeQuery("SELECT * FROM usuario where Rut='" + p1.getUserName() + "'");
                                rs.afterLast();
                                boolean seguir = rs.previous();%>
                        </p>
                        <br>
                        <p style="font-size: 14px">
                            Hola <b> <%=rs.getString(3)%>  <%=rs.getString(4)%> <%=rs.getString(5)%> 
                                <%seguir = rs.previous(); %> </b> | <a href="index.jsp">Cerrar Seccion</a>
                        </p>

                        <br><br><hr style="max-width: 500px;">
                        <h1 style="font-size: 60px; margin-bottom: -15px">Revisar Pedido</h1><hr style="max-width: 500px;">
                        <br><br><br>



                        <%
                            Pedido pdd1 = (Pedido) request.getSession().getAttribute("pedido1");


                        %>

                        <div style="text-align: center; width: 100%; float: right ">
                            <div class="revisarPedido">
                                Tu Plato es:  <b><%=pdd1.getNombrePlato()%> </b> 
                                <br>
                                Cantidad de platos solicitados:<b> <%=pdd1.getPlatoNum()%></b> 
                                <br>
                                Precio de platos solicitados: <b>$<%=Integer.parseInt(pdd1.getPlatoPrecio()) * Integer.parseInt(pdd1.getPlatoNum())%></b>
                                <br><br><br>


                                Tu Bebida es: <b><%=pdd1.getNombreBebida()%></b>
                                <br>
                                Cantidad de Bebidas solicitadas: <b><%=pdd1.getBebidaNum()%></b>
                                <br>
                                Precio de Bebidas solicitadas: <b>$<%=Integer.parseInt(pdd1.getBebidaPrecio()) * Integer.parseInt(pdd1.getBebidaNum())%></b>
                                <br><br><br>
                                Despacho a domicilio: <b><%=pdd1.getDespacho()%></b>
                                <br><br><br><hr style="max-width: 250px;">
                                <b style="font-size: 22px">Total a Pagar: $<%=(Integer.parseInt(pdd1.getPlatoPrecio()) * Integer.parseInt(pdd1.getPlatoNum())) + (Integer.parseInt(pdd1.getBebidaPrecio()) * Integer.parseInt(pdd1.getBebidaNum()))%>
                                </b><hr style="max-width: 250px;">
                            </div>
                        </div>







                        <%
                            rs.close();
                            consulta.close();
                            conexion.close();
                        %>


                        


                        <a href="Pedido_Paso_1.jsp"><button type="button">Volver</button></a>
                        <a href="Pedido_Paso_3.jsp"><button type="button">Confirmar Pedido</button></a>
                        <br><br><br>


                    </div>
                </div>
            </div>
        </div>

        <br><br><br>

        <div id="footer-zone"> <br><p>&copy; Sergio Zapata, 2016.</p>
        </div> 

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Script to Activate the Carousel -->


    </body>

</html>