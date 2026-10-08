<%@include file="connect.jsp" %>
<%
    MultipartRequest mrequest=new MultipartRequest(request,"D:/typroject/yakeen/web/cat_photo");
    File f=mrequest.getFile("cat_photo");
    String cat_photo=f.getName();
    
    String cat_name=mrequest.getParameter("cat_name");
    String cat_desc=mrequest.getParameter("cat_desc");
            
    pstmt1=conn.prepareStatement("insert into cat_master(cat_name,cat_photo,cat_desc)values(?,?,?)");
    
    pstmt1.setString(1, cat_name);
    pstmt1.setString(2, cat_photo);
    pstmt1.setString(3, cat_desc);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        out.println("<script type='text/javascript'>alert('Record Inserted');</script>");
        response.sendRedirect("view_cat.jsp");
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>
