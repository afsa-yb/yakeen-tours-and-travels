<%@include file="connect.jsp" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%            
    String fb_msg=request.getParameter("fb_msg");
    int user_id=Integer.parseInt(request.getParameter("user_id"));
    int veh_id=Integer.parseInt(request.getParameter("veh_id"));
    
    SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
    String fb_date=df.format(new Date());
            
    pstmt1=conn.prepareStatement("insert into feedback_veh(fb_msg,fb_date,user_id,veh_id)values(?,?,?,?)");
    
    
    pstmt1.setString(1, fb_msg);
    pstmt1.setString(2, fb_date);
    pstmt1.setInt(3, user_id);
    pstmt1.setInt(4, veh_id);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        response.sendRedirect("sample.jsp?");        
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>
