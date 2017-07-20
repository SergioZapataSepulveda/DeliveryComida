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
                        <hr style="max-width: 500px;">
                        <h2 style="font-size: 60px; margin-bottom: -15px" class="intro-text text-center">Quienes  
                            <b>Somos</b>
                        </h2>
                        <hr style="max-width: 500px;"><br><br>
                        <img class="img-responsive img-left" src="img/dsc_2055.jpg" alt=""><hr>
                        <hr>
                        <p>Restaurante <b>"Donde La Abuela"</b> es un establecimiento familiar que abrió sus puertas en 1810. Se trata de un proyecto de más de 2 siglos continuado por Juan Antonio y Josefina que otorgan a <b>"Donde La Abuela"</b> un halo de amabilidad y elegancia único en el centro de Santiago.

                        <p>A pesar de su juventud, los hermanos Carmona cuentan con gran experiencia en el mundo de la restauración. Antonio L. Carmona empezó su carrera profesional cuando tenía tan sólo 16 años en San Pedro de Atacama. Desde ese momento sintió que su vida estaba ligada a los fogones, sintiendo su profesión con mucha pasión.
                            Ha trabajado en varios restaurantes y hoteles en Arica y Tierra del Fuego desarrollando diferentes tareas.
                        </p>
                        <p>Además de experimentar en numerosos restaurantes de Juan Fernadez y de la provincia Antartica, Juan José ha trabajado en el norte, participando durante un año en la cocina creativa de esta zona. También ha formado parte de la plantilla de selectos restaurantes en Isla de Pascua.
                        </p>
                        <p>Tras esta época de aprendizaje, los hermanos Carmona continuaron con el legado de <b>"Donde La Abuela"</b>. Un original y distinguido enclave de la Capital de Chile con una cocina Tipica repleta de nuevos sabores y texturas que provocarán sin duda, su vuelta a esta casa.
                        </p>                   </div><br><br>
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
