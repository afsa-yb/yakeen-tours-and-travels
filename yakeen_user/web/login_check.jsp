<%@include file="connect.jsp" %>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    
pstmt1=conn.prepareStatement("select * from user_master where user_email=? and user_password=? ");
pstmt1.setString(1, username);
pstmt1.setString(2, password);

rs1=pstmt1.executeQuery();

if(rs1.next())
{
    session.setAttribute("username", username);
    response.sendRedirect("sample.jsp");
}
else
{
    response.sendRedirect("login.jsp");
}
%>    