<%-- 
    Document   : mockup
    Created on : 1/12/2016, 02:30:43 AM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

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

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

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
                    <div class="col-lg-12">
                        <hr style="max-width: 350px;">
                        <h2 style="font-size: 60px; margin-bottom: -15px" class="intro-text text-center">Ubicación
                        </h2>
                        <hr style="max-width: 350px;"><br><br>
                        

                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3329.60807623514!2d-70.65298934899182!3d-33.43346088068441!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c5bc998ea403%3A0xe84ee889c983a953!2sIsmael+Vald%C3%A9s+Vergara+956%2C+Santiago%2C+Regi%C3%B3n+Metropolitana!5e0!3m2!1ses-419!2scl!4v1481597183348" height="400" frameborder="0" style="border:0; width: 100%" allowfullscreen></iframe>
                        <hr><br><br>
                        <span class="glyphicon glyphicon-earphone"></span> <label style=" font-weight: lighter">2-3345 2622</label><br><br>
                        <span class="glyphicon glyphicon-phone"></span> <label style=" font-weight: lighter">(+56)9-2433 2253</label><br><br>
                        <span class="glyphicon glyphicon-cutlery"></span> <label style=" font-weight: lighter">Atencion en Tienda y Entrega a Domicilio</label><br><br> 
                        <span class="glyphicon glyphicon-map-marker"></span> <label style=" font-weight: lighter">Ismael Valdés Vergara 956, Santiago</label><br><br>
                        <span class="glyphicon glyphicon-time"></span> <label style=" font-weight: lighter">Abierto desde las 10 am hasta las 23 horas de miercoles a martes</label><br>
                        </div><br><br>
                </div>
            </div>







        </div>
        <!-- /.container -->


        <br><br><br>

        <div id="footer-zone"> <br><p>&copy; Sergio Zapata, 2016.</p>
        </div> 

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Script to Activate the Carousel -->
        <script>
            $('.carousel').carousel({
                interval: 5000 //cambiar velocidad del cambio automatico de imagenes 
            })
        </script>

    </body>

</html>
