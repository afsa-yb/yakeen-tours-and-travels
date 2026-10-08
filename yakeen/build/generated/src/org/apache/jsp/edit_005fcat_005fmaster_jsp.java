package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;

public final class edit_005fcat_005fmaster_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection conn;
PreparedStatement pstmt1,pstmt2,pstmt3,pstmt4,pstmt5;
ResultSet rs1,rs2,rs3,rs4,rs5;
Statement stmt1,stmt2,stmt3,stmt4,stmt5;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/connect.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"author\" content=\"\" />\n");
      out.write("    <!--[if IE]>\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <![endif]-->\n");
      out.write("    <title>FREE RESPONSIVE HORIZONTAL ADMIN</title>\n");
      out.write("    <!-- BOOTSTRAP CORE STYLE  -->\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- FONT AWESOME STYLE  -->\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- CUSTOM STYLE  -->\n");
      out.write("    <link href=\"assets/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- GOOGLE FONT -->\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"navbar navbar-inverse set-radius-zero\" >\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.html\">\n");
      out.write("\n");
      out.write("                    <img src=\"assets/img/logo.png\" />\n");
      out.write("                </a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"right-div\">\n");
      out.write("                <a href=\"#\" class=\"btn btn-danger pull-right\">LOG ME OUT</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- LOGO HEADER END-->\n");
      out.write("    <section class=\"menu-section\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row \">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div class=\"navbar-collapse collapse \">\n");
      out.write("                        <ul id=\"menu-top\" class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"index.html\" class=\"menu-top-active\">DASHBOARD</a></li>\n");
      out.write("                           \n");
      out.write("                            <li><a href=\"form.html\">FORMS</a></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">UI ELEMENTS <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"ui.html\">UI ELEMENTS</a></li>\n");
      out.write("                                     <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">EXAMPLE LINK</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"tab.html\">TABS & PANELS</a></li>\n");
      out.write("                             <li><a href=\"table.html\">TABLES</a></li>\n");
      out.write("                            <li><a href=\"blank.html\">BLANK PAGE</a></li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("     <!-- MENU SECTION END-->\n");
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');

    Class.forName("com.mysql.jdbc.Driver");			
    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/yakeen","root","");

      out.write('\n');
      out.write('\n');

    int cat_id=Integer.parseInt(request.getParameter("cat_id"));
    pstmt1=conn.prepareStatement("select * from cat_master where cat_id=?");
    pstmt1.setInt(1, cat_id);
    rs2=pstmt1.executeQuery();

      out.write("\n");
      out.write("\n");
      out.write("<div class=\"content-wrapper\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row pad-botm\">\n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <h4 class=\"header-line\">CATEGORY</h4>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row pad-botm\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <div class=\"panel panel-info\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                           Edit Category\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <form action=\"edit_cat_code.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                ");

                                    while(rs2.next())
                                    {                                                                            
                                
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Category Name</label>\n");
      out.write("                                            <input type=\"hidden\" name=\"cat_id\" value=\"");
      out.print(cat_id);
      out.write("\">\n");
      out.write("                                            <input class=\"form-control\" type=\"text\" name=\"cat_name\" value=\"");
      out.print(rs2.getString(2));
      out.write("\"/>  \n");
      out.write("                                            \n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Category Photo</label>\n");
      out.write("                                            <input class=\"form-control\" type=\"hidden\" name=\"old_photo\" value=\"");
      out.print(rs2.getString(3));
      out.write("\"/>\n");
      out.write("                                            <input class=\"form-control\" type=\"file\" name=\"cat_photo\" />\n");
      out.write("                                            <img width=\"100px\" height=\"100px\" src=\"http://localhost:8080/yakeen/cat_photo/");
      out.print(rs2.getString(3));
      out.write("\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Category Description</label>\n");
      out.write("                                            <textarea class=\"form-control\" rows=\"3\" name=\"cat_desc\">");
      out.print(rs2.getString(4));
      out.write("</textarea>\n");
      out.write("                                        </div>                                        \n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-info\">Submit</button>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                    </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<section class=\"footer-section\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                   &copy; 2014 Yourdomain.com |<a href=\"http://www.binarytheme.com/\" target=\"_blank\"  > Designed by : binarytheme.com</a> \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("      <!-- FOOTER SECTION END-->\n");
      out.write("    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->\n");
      out.write("    <!-- CORE JQUERY  -->\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.js\"></script>\n");
      out.write("    <!-- BOOTSTRAP SCRIPTS  -->\n");
      out.write("    <script src=\"assets/js/bootstrap.js\"></script>\n");
      out.write("      <!-- CUSTOM SCRIPTS  -->\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\n");
      out.write("  \n");
      out.write("</body>\n");
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
