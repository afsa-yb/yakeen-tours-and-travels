<%@include file="connect.jsp" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%                
    int user_id=Integer.parseInt(request.getParameter("user_id"));
    int veh_id=Integer.parseInt(request.getParameter("veh_id"));    
    int price_per_km=Integer.parseInt(request.getParameter("price_per_km"));
    String vb_day=request.getParameter("vb_day");
    String pick_up_loc=request.getParameter("pick_up_loc");
    String drop_of_loc=request.getParameter("drop_of_loc");
    String pick_up_time=request.getParameter("pick_up_time");
    String drop_of_time=request.getParameter("drop_of_time");
    int total_distance=Integer.parseInt(request.getParameter("total_distance"));
    int total_amount=price_per_km*total_distance;
    
    SimpleDateFormat df=new SimpleDateFormat("dd-MM-yy");
    String vb_date=df.format(new Date());
            
    pstmt1=conn.prepareStatement("insert into veh_book_master(vb_date,vb_day,pick_up_loc,drop_of_loc,pick_up_time,drop_of_time,total_distance,total_amount,veh_id,user_id)values(?,?,?,?,?,?,?,?,?,?)");
    
    
    pstmt1.setString(1, vb_date);
    pstmt1.setString(2, vb_day);
    pstmt1.setString(3, pick_up_loc);
    pstmt1.setString(4, drop_of_loc);
    pstmt1.setString(5, pick_up_time);
    pstmt1.setString(6, drop_of_time);
    pstmt1.setInt(7, total_distance);
    pstmt1.setInt(8, total_amount);
    pstmt1.setInt(9, veh_id);
    pstmt1.setInt(10, user_id);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        response.sendRedirect("tnx.jsp?");        
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>
