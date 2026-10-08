<%@include file="connect.jsp" %>
<%
    String cat_photo;
    MultipartRequest mrequest=new MultipartRequest(request,"D:/typroject/yakeen/web/cat_photo");
    File f=mrequest.getFile("cat_photo");    
    
    if(f!=null)
    {
        cat_photo=f.getName();
    }
    else
    {
        cat_photo=mrequest.getParameter("old_photo");
    }
    
    String cat_name=mrequest.getParameter("cat_name");
    String cat_desc=mrequest.getParameter("cat_desc");
    int cat_id=Integer.parseInt(mrequest.getParameter("cat_id"));
            
    pstmt1=conn.prepareStatement("update cat_master set cat_name=?,cat_photo=?,cat_desc=? where cat_id=?");
    
    pstmt1.setString(1, cat_name);
    pstmt1.setString(2, cat_photo);
    pstmt1.setString(3, cat_desc);
    pstmt1.setInt(4, cat_id);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        response.sendRedirect("view_cat.jsp");
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>
