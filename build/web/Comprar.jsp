<%-- 
    Document   : index
    Created on : 25-nov-2016, 12:35:25
    Author     : linf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/validarut.js"></script>
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

        </nav>

        <div class="container">

            <div class="row">
                <div class="box">
                    <div class="col-lg-12 text-center">


                        <p style="font-size: 10px; color: #777">
                            <%
                                //Conectar a drive de Mysql - Control de Excepciones 
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examenbd",
                                            "root", "");
                                    out.println("Conexión realizada con éxito a " + con.getCatalog());
                                    con.close();
                                } catch (SQLException ex) {%>

                            <%="Se produjo una excepción durante la conexión:" + ex%>
                            <%} catch (Exception ex) {%>
                            <%="Se produjo una excepción:" + ex%>
                            <%}%> 
                        </p>


                        <br><br><hr style="max-width: 520px;">
                        <h1 style="font-size: 60px; margin-bottom: -15px">Iniciar Sección</h1><hr style="max-width: 520px;">
                        <br><br>





                        <form name = "form1" action ="Procesar" method = "post" onsubmit="javascript:return required()">

                            <label>Rut</label>
                            <div>
                                <input name="rutInicial" type="text" maxlength="255" value="" /> <br><br>
                                <input name="rut" id="rut" type="hidden" />
                            </div> 



                            <label>Contraseña </label>
                            <div>
                                <input name="pass" type="password" maxlength="255" value="" /> <br><br>
                            </div> 

                            <input type="submit" value="Ingresar" />

                        </form>
                        <br>
                        <br>
                        <br>
                        <label style="font-size:12px; color: gray">Recuerda si no eres Usuario puedes aquí </label>
                        <a href="Registrarse.jsp"><button type="button">Registrarte</button></a>

                        <br>
                        <br>
                        <br>


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
