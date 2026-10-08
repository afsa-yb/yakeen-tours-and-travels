<%@include file="connect.jsp" %>
<%
    String sub_cat_photo;
    MultipartRequest mrequest=new MultipartRequest(request,"D:/typroject/yakeen/web/subcat_photo");
    File f=mrequest.getFile("sub_cat_photo");    
    
    if(f!=null)
    {
        sub_cat_photo=f.getName();
    }
    else
    {
        sub_cat_photo=mrequest.getParameter("old_photo");
    }
    
    String sub_cat_name=mrequest.getParameter("sub_cat_name");
    String sub_cat_desc=mrequest.getParameter("sub_cat_desc");
    int cat_id=Integer.parseInt(mrequest.getParameter("cat_id")); 
    int sub_cat_id=Integer.parseInt(mrequest.getParameter("cat_id"));
            
    pstmt1=conn.prepareStatement("update sub_cat_master set sub_cat_name=?,sub_cat_photo=?,sub_cat_desc=?,cat_id=? where sub_cat_id=?");
    
    pstmt1.setString(1, sub_cat_name);
    pstmt1.setString(2, sub_cat_photo);
    pstmt1.setString(3, sub_cat_desc);
    pstmt1.setInt(4, cat_id);
    pstmt1.setInt(5, sub_cat_id);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        
        response.sendRedirect("view_subcat.jsp");
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>
