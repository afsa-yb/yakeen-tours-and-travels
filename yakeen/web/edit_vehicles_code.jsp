<%@include file="connect.jsp" %>
<%
    String veh_photo;
    MultipartRequest mrequest=new MultipartRequest(request,"D:/typroject/yakeen/web/vehicle_photo");
    File f=mrequest.getFile("veh_photo");    
    
    if(f!=null)
    {
        veh_photo=f.getName();
    }
    else
    {
        veh_photo=mrequest.getParameter("old_photo");
    }
    
    String veh_name=mrequest.getParameter("veh_name");
    String veh_number=mrequest.getParameter("veh_number");
    String veh_desc=mrequest.getParameter("veh_desc");
    String seat_capacity=mrequest.getParameter("seat_capacity");
    String price_per_km=mrequest.getParameter("price_per_km");    
    int sub_cat_id=Integer.parseInt(mrequest.getParameter("sub_cat_id"));
    int veh_id=Integer.parseInt(mrequest.getParameter("veh_id"));
            
    pstmt1=conn.prepareStatement("update vehicles_master set veh_name=?,veh_number=?,veh_desc=?,veh_photo=?,seat_capacity=?,price_per_km=?,sub_cat_id=? where veh_id=?");
    
    pstmt1.setString(1, veh_name);
    pstmt1.setString(2, veh_number);
    pstmt1.setString(3, veh_desc);
    pstmt1.setString(4, veh_photo);
    pstmt1.setString(5, seat_capacity);
    pstmt1.setString(6, price_per_km);    
    pstmt1.setInt(7, sub_cat_id);
    pstmt1.setInt(8, veh_id);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        response.sendRedirect("view_vehicles.jsp");
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>