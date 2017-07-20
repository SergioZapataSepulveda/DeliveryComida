<%-- 
    Document   : Exito
    Created on : 25-nov-2016, 12:36:16
    Author     : linf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="modelo.Persona"%>
<%@page import="java.sql.*" %>

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
                            <a href="inicio.jsp">Inicio</a>
                        </li>
                        <li>
                            <a href="nosotros.jsp">Nosotros</a>
                        </li>
                        <li>
                            <a href="Registrarse.jsp">Registrate</a>
                        </li>
                        <li>
                            <a href="index.jsp">Comprar</a>
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

                        <br><br><hr>
                        <h1 style="font-size: 60px; margin-bottom: -15px">Elegir Pedido</h1><hr>
                        <br><br><br>



                        <form name = "form1" action ="ProcesarPedido" method = "post">

                            <table style="width: 100%">


                                <tr>
                                    <th><label>Plato</label></th>
                                    <th>
                                        <select class="entrada" name="_plato">
                                            <option value="1">Arroz con pollo - $3200 </option>
                                            <option value="2">Cazuela de vacuno - $3500 </option>
                                            <option value="3">Lentejas con longaniza - $3000 </option>
                                            <option value="4">Porotos con riendas - $2000 </option>
                                        </select>
                                    </th>
                                </tr>


                                <tr>
                                    <th><label>Numero de Platos</label></th>
                                    <th>
                                        <select class="entrada" name="_platoNum">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </th>
                                </tr>


                                <tr>
                                    <th><label>Bebida</label></th>
                                    <th style="text-align: left; color:#777; font-weight: lighter">
                                        <input type="radio" name="_bebida" value="1" checked> Mineral - $700<br>
                                        <input type="radio" name="_bebida" value="2"> Jugo - $800<br>
                                        <input type="radio" name="_bebida" value="3"> Malteada - $1000
                                    </th>
                                </tr>  

                                <tr>
                                    <th><label>Numero de Bebida</label> </th>
                                    <th>
                                        <select class="entrada" name="_bebidaNum">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </th>
                                </tr>


                                <tr>
                                    <th><label>A Domicilio</label></th>
                                    <th>
                                        <input class="entrada" name="_despacho" type="checkbox" value="Si" />
                                    </th>
                                </tr>

                            </table>
                            <br>
                            <div><label></label><a href="exito.jsp"><button type="button">Volver</button></a>
                                <input   type="submit" value="Continuar Pedido" /></div>
                        </form><br><br><br>



                        <%
                            rs.close();
                            consulta.close();
                            conexion.close();
                        %>


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
