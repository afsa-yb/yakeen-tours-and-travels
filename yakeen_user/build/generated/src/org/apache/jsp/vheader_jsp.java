package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;

public final class vheader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection conn;
PreparedStatement pstmt1,pstmt2,pstmt3,pstmt4,pstmt5;
ResultSet rs0,rs1,rs2,rs3,rs4,rs5;
Statement stmt0,stmt1,stmt2,stmt3,stmt4,stmt5;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connect.jsp");
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("   <head>\n");
      out.write("      <!-- basic -->\n");
      out.write("      <meta charset=\"utf-8\">\n");
      out.write("      <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("      <!-- mobile metas -->\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("      <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1\">\n");
      out.write("      <!-- site metas -->\n");
      out.write("      <title>yakeen</title>\n");
      out.write("      <meta name=\"keywords\" content=\"\">\n");
      out.write("      <meta name=\"description\" content=\"\">\n");
      out.write("      <meta name=\"author\" content=\"\">\n");
      out.write("      <!-- bootstrap css -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("      <!-- style css -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("      <!-- Responsive-->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("      <!-- fevicon -->\n");
      out.write("      <link rel=\"icon\" href=\"images/fevicon.png\" type=\"image/gif\" />\n");
      out.write("      <!-- Tweaks for older IEs-->\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css\">\n");
      out.write("      <link href=\"https://unpkg.com/aos@2.3.1/dist/aos.css\" rel=\"stylesheet\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/nice-select.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/bootstrap-datepicker.min.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/niceCountryInput.css\">\n");
      out.write("      <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script><![endif]-->\n");
      out.write("   </head>\n");
      out.write("   <!-- body -->\n");
      out.write("   <body class=\"main-layout inner_page\">\n");
      out.write("      <!-- loader  -->\n");
      out.write("      <div class=\"loader_bg\">\n");
      out.write("         <div class=\"loader\"><img src=\"images/loading.gif\" alt=\"#\"/></div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end loader -->\n");
      out.write("      <!-- header -->\n");
      out.write("      <div class=\"header\">\n");
      out.write("         <div class=\"top_header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("               <div class=\"row\">\n");
      out.write("                  <div class=\"col-md-12\">\n");
      out.write("                     <div class=\"select_main\">\n");
      out.write("                        <div class=\"sign\">\n");
      out.write("                           \n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                        <ul class=\"top_infomation\">\n");
      out.write("                           <li><img src=\"images/ti_call.png\" alt=\"#\"/>Call : +91 9979766588</li>\n");
      out.write("                           <li><img src=\"images/ti_mail.png\" alt=\"#\"/><a href=\"Javascript:void(0)\"> info@yakeentoursonline.com</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                     </div>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("         <div class=\"header_midil\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("               <div class=\"row d_flex\">\n");
      out.write("                  <div class=\" col-md-2 col-sm-3 logo_section\">\n");
      out.write("                     <div class=\"full\">\n");
      out.write("                        <div class=\"center-desk\">\n");
      out.write("                           <div class=\"logo\">\n");
      out.write("                               <a href=\"index.html\"><img src=\"logo/logofinal.png\" style=\"width:250px;height:60px;\" alt=\"#\" /></a>\n");
      out.write("                           </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-sm-9 col-md-8\">\n");
      out.write("                     <nav class=\"navigation navbar navbar-expand-md navbar-dark \">\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarsExample04\" aria-controls=\"navbarsExample04\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <div class=\"collapse navbar-collapse\" id=\"navbarsExample04\">\n");
      out.write("                           <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                              <li class=\"nav-item\">\n");
      out.write("                                  <a class=\"nav-link\" href=\"sample.jsp\">Home</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item\">\n");
      out.write("                                  <a class=\"nav-link\" href=\"vuser_about_us.jsp\">About</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item dropdown\">\n");
      out.write("\t\t\t\t<a class=\"nav-link \" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("\t\t\t\tTour\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">                                                                \n");
      out.write("                    ");

                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from cat_master");
                        while(rs1.next())
                        {
                            
                    
      out.write("\n");
      out.write("                                    \n");
      out.write("                    <a class=\"dropdown-item\" href=\"vuser_view_tour_subcat.jsp?cat_id=");
      out.print(rs1.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</a>\n");
      out.write("                                \n");
      out.write("                                    ");

                                        }
                                     
      out.write("\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                </div>\n");
      out.write("\t\t\t\t</li>                                                            \n");
      out.write("                              <li>\n");
      out.write("                                 <a class=\"nav-link\" href=\"#\">Contact Us</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li>\n");
      out.write("                                  <a class=\"nav-link\" href=\"user_master.jsp\">Register</a>\n");
      out.write("                              </li>\n");
      out.write("                           </ul>\n");
      out.write("                        </div>\n");
      out.write("                     </nav>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-md-2  d_none\">\n");
      out.write("                     <ul class=\"email text_align_right\">\n");
      out.write("                        <li><a href=\"login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("                        <li><a href=\"Javascript:void(0)\"><i class=\"fa fa-search\" aria-hidden=\"true\"></i>   </a></li>\n");
      out.write("                     </ul>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end header inner -->\n");
      out.write("      \n");
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
