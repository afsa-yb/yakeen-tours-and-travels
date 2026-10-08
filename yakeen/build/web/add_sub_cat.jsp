<%@include file="connect.jsp" %>
<%
    MultipartRequest mrequest=new MultipartRequest(request,"D:/typroject/yakeen/web/subcat_photo");
    File f=mrequest.getFile("sub_cat_photo");
    String sub_cat_photo=f.getName();
    
    String sub_cat_name=mrequest.getParameter("sub_cat_name");
    String sub_cat_desc=mrequest.getParameter("sub_cat_desc");
    int cat_id=Integer.parseInt(mrequest.getParameter("cat_id")); 
            
    pstmt1=conn.prepareStatement("insert into sub_cat_master(sub_cat_name,sub_cat_photo,sub_cat_desc,cat_id)values(?,?,?,?)");
    
    pstmt1.setString(1, sub_cat_name);
    pstmt1.setString(2, sub_cat_photo);
    pstmt1.setString(3, sub_cat_desc);
    pstmt1.setInt(4, cat_id);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        out.println("<script type='text/javascript'>alert('Record Inserted');</script>");
        response.sendRedirect("view_subcat.jsp");
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>
