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
        <script type="text/javascript" src="js/validaRegistro.js"></script>
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












            <div class="row text-center">
                <div class="box" >
                    <div class="col-lg-12 ">
                        







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
                        <%
                            String nom1 = request.getParameter("rut");
                            String pass = request.getParameter("_pass1");
                            String nome = request.getParameter("_Nombre");
                            String appa = request.getParameter("_ApPaterno");
                            String apma = request.getParameter("_ApMaterno");
                            String dire = request.getParameter("_Direccion");
                            String nume = request.getParameter("_Numeracion");
                            String comu = request.getParameter("_Comuna");
                            String fono = request.getParameter("_Telefono");

                            //Conectar a BD y Generar consulta de Selección
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conexion = DriverManager.getConnection("jdbc:mysql://127.0.0.1/examenbd", "root", "");
                            if (pass != null && nom1 != null) {
                                Statement consulta = conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                                String q = "insert into usuario (Rut, Clave, Nombre, ApellidoPaterno, ApellidoMaterno, Direccion, Numeracion, Comuna, Telefono) "
                                        + "values ('" + nom1 + "', '" + pass + "', '" + nome + "', '" + appa + "', '" + apma + "', '" + dire + "', '" + nume + "', '" + comu + "', '" + fono + "')"; // los datos en la tabla siempre tienen que ser string

                                try {
                                    // agregando renglon (insert)
                                    int n = consulta.executeUpdate(q);
                                    // mensaje que muestra la inserción  
                                    out.println("<br>REGISTRO INSERTADO CORRECTAMENTE");
                                } catch (SQLException e) {
                                    out.println("Error Rut ya Registrado");
                                };
                                try {
                                    // tabla.close();
                                    consulta.close();
                                    conexion.close();
                                } catch (SQLException e) {
                                    out.println(e);
                                };
                            };
                        %>

                        <br><br><hr style="max-width: 400px;">
                        <h1 style="font-size: 60px; margin-bottom: -15px">REgistrarse</h1><hr style="max-width: 400px;">
                        
                        <!-- /.container -->

                        <form name = "form1" action ="Registrarse.jsp" method = "post" onsubmit="javascript:return required()">

                            <table style="width: 100%">
                                <div><tr><th><label class="textoRegistro">Rut  </label></th>
                                        <th><input class="entrada" name="rutInicial" type="text" maxlength="255" value="" />
                                            <input id="rut" name="rut" type="hidden" /></th></tr></div>

                                <div><tr><th><label>Contraseña </label></th>
                                        <th><input class="entrada" name="_pass1" type="password" maxlength="255" value=""/> </th></div>

                                <div><tr><th><label>Confirmar Contraseña </label></th>
                                        <th><input class="entrada" name="_pass2" type="password" maxlength="255" value=""/> </th></div>

                                <div><tr><th><label>Nombre </label></th>
                                        <th><input class="entrada" name="_Nombre" type="text" maxlength="255" value=""/> </th></div>

                                <div><tr><th><label>Apellido Paterno </label></th>
                                        <th><input class="entrada" name="_ApPaterno" type="text" maxlength="255" value=""/> </th></div>

                                <div><tr><th><label>Apellido Materno </label></th>
                                        <th><input class="entrada" name="_ApMaterno" type="text" maxlength="255" value=""/> </th></div> 

                                <div><tr><th><label>Dirección </label></th>
                                        <th><input class="entrada" name="_Direccion" type="text" maxlength="255" value=""/> </th></div>

                                <div><tr><th><label>Numeracion </label></th>
                                        <th><input class="entrada" name="_Numeracion" type="number"  value=""/> </th></div>

                                <div><tr><th><label>Comuna</label> </th>
                                        <th><select class="entrada" name="_Comuna" size="1" >
                                                <option value="1">Maipu</option>
                                                <option value="2">Recoleta</option>
                                                <option value="3">Santiago</option>
                                                <option value="4">Providencia</option>
                                                <option value="5">Independecia</option>
                                            </select></th></div>

                                <div><tr><th><label>Telefono</label></th>
                                        <th><input class="entrada" name="_Telefono" type="number"  value=""  /> </th></div><br>



                                <div><tr><th><label></label></th>
                                        <th><input class="entrada" type="submit" value="Registrarse" /> </th></div><br>

                            </table>
                        </form>

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


    </body>

</html>




