<%@include file="connect.jsp" %>
<%
    MultipartRequest mrequest=new MultipartRequest(request,"D:/typroject/yakeen/web/pack_photo");
    File f=mrequest.getFile("pack_photo");
    String pack_photo=f.getName();
    
    String pack_name=mrequest.getParameter("pack_name");
    String pack_desc=mrequest.getParameter("pack_desc");
    String pack_price=mrequest.getParameter("pack_price");
    String days=mrequest.getParameter("days");
    String nights=mrequest.getParameter("nights");
    String pack_type=mrequest.getParameter("pack_type");
    int sub_cat_id=Integer.parseInt(mrequest.getParameter("sub_cat_id"));
            
    pstmt1=conn.prepareStatement("insert into packages_master(pack_name,pack_desc,pack_price,pack_photo,days,nights,pack_type,sub_cat_id)values(?,?,?,?,?,?,?,?)");
    
    pstmt1.setString(1, pack_name);
    pstmt1.setString(2, pack_desc);
    pstmt1.setString(3, pack_price);
    pstmt1.setString(4, pack_photo);
    pstmt1.setString(5, days);
    pstmt1.setString(6, nights);
    pstmt1.setString(7, pack_type);
    pstmt1.setInt(8, sub_cat_id);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        out.println("<script type='text/javascript'>alert('Record Inserted');</script>");
        response.sendRedirect("view_packages.jsp");
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>