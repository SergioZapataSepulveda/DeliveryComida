package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class ErrorLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/validarut.js\"></script>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>Donde La Abuela</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core CSS -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"css/business-casual.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Fonts -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"imgenDLA\">\n");
      out.write("            <img class=\"img-responsive img-full\" src=\"img/DLA-01.svg\" alt=\"\">\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Navigation -->\n");
      out.write("        <nav class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->\n");
      out.write("                    <a class=\"navbar-brand\" >Menu</a>\n");
      out.write("                </div>\n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"inicio.jsp\">Inicio</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"nosotros.jsp\">Nosotros</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Registrarse.jsp\">Registrate</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"index.jsp\">Comprar</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"contacto.jsp\">Contacto</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-collapse -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.container -->\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <div class=\"col-lg-12 text-center\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <p style=\"font-size: 10px; color: #777\">\n");
      out.write("                            ");

                                //Conectar a drive de Mysql - Control de Excepciones 
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examenbd",
                                            "root", "");
                                    out.println("Conexión realizada con éxito a " + con.getCatalog());
                                    con.close();
                                } catch (SQLException ex) {
      out.write("\n");
      out.write("\n");
      out.write("                            ");
      out.print("Se produjo una excepción durante la conexión:" + ex);
      out.write("\n");
      out.write("                            ");
} catch (Exception ex) {
      out.write("\n");
      out.write("                            ");
      out.print("Se produjo una excepción:" + ex);
      out.write("\n");
      out.write("                            ");
}
      out.write(" \n");
      out.write("                        </p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <br><br><hr style=\"max-width: 520px;\">\n");
      out.write("                        <h1 style=\"font-size: 60px; margin-bottom: -15px\">Iniciar Sección</h1><hr style=\"max-width: 520px;\">\n");
      out.write("                        <br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <form name = \"form1\" action =\"Procesar\" method = \"post\" onsubmit=\"javascript:return required()\">\n");
      out.write("\n");
      out.write("                            <label>Rut <label style=\"font-size:14px; color: gray\">(sin puntos ni guion)</label>  </label>\n");
      out.write("                            <div>\n");
      out.write("                                <input name=\"rutInicial\" type=\"text\" maxlength=\"255\" value=\"\" /> <br><br>\n");
      out.write("                                <input name=\"rut\" id=\"rut\" type=\"hidden\" />\n");
      out.write("                            </div> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <label>Contraseña </label>\n");
      out.write("                            <div>\n");
      out.write("                                <input name=\"pass\" type=\"password\" maxlength=\"255\" value=\"\" /> <br><br>\n");
      out.write("                            </div> \n");
      out.write("\n");
      out.write("                            <input type=\"submit\" value=\"Ingresar\" />\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                        <p style=\"color: red; font-size: 16px\">Usuario o clave incorrectos</p>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                        <label style=\"font-size:12px; color: gray\">Recuerda si no eres Usuario puedes aquí </label>\n");
      out.write("                        <a href=\"Registrarte.jsp\"><button type=\"button\">Registrarte</button></a>\n");
      out.write("\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br><br><br>\n");
      out.write("\n");
      out.write("        <div id=\"footer-zone\"> <br><p>&copy; Sergio Zapata, 2016.</p>\n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("        <!-- jQuery -->\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core JavaScript -->\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Script to Activate the Carousel -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("  ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
