package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Persona;
import java.sql.*;

public final class Pedido_005fPaso_005f2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            //conectarse a Bd y controlar excepciones
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://127.0.0.1/examenbd", "root", "");
                out.println("Conexión realizada con éxito a: " + conexion.getCatalog());
                conexion.close();
            } catch (SQLException ex) { 
      out.write("\n");
      out.write("        ");
} catch (Exception ex) { 
      out.write("\n");
      out.write("        ");
}
      out.write("\n");
      out.write("\n");
      out.write("        ");

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
            boolean seguir = rs.previous();
      out.write("\n");
      out.write("\n");
      out.write("        <br><br><br><br>\n");
      out.write("\n");
      out.write("        Bienvenido(a)<b> ");
      out.print(rs.getString(3));
      out.write(' ');
      out.write(' ');
      out.print(rs.getString(4));
      out.write(' ');
      out.print(rs.getString(5));
      out.write(" \n");
      out.write("            ");
seguir = rs.previous(); 
      out.write(" </b> | <a href=\"index.jsp\">Cerrar Seccion</a>\n");
      out.write("\n");
      out.write("        <br><br>\n");
      out.write("        <h1>\"Donde la Abuela\" :: Agregar Pedido :: Paso 2</h1>\n");
      out.write("\n");
      out.write("\n");
      out.write("        Resumen de Pedido\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            rs.close();
            consulta.close();
            conexion.close();
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
