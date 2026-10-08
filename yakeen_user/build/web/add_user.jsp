<%@include file="connect.jsp" %>
<%        
    String user_name=request.getParameter("user_name");
    String user_address=request.getParameter("user_address");
    String user_city=request.getParameter("user_city");
    String user_pincode=request.getParameter("user_pincode");
    String user_email=request.getParameter("user_email");
    String user_password=request.getParameter("user_password");
    String user_mobile=request.getParameter("user_mobile");
            
    pstmt1=conn.prepareStatement("insert into user_master(user_name,user_address,user_city,user_pincode,user_email,user_password,user_mobile)values(?,?,?,?,?,?,?)");
    
    pstmt1.setString(1, user_name);
    pstmt1.setString(2, user_address);
    pstmt1.setString(3, user_city);
    pstmt1.setString(4, user_pincode);
    pstmt1.setString(5, user_email);
    pstmt1.setString(6, user_password);
    pstmt1.setString(7, user_mobile);
    
    int i=pstmt1.executeUpdate();
    if(i==1)
    {
        out.println("<script type='text/javascript'>alert('Record Inserted');</script>");        
    }
    else
    {
        out.println("<script type='text/javascript'>alert('Record Not Inserted');</script>");
    }
    
    pstmt1.close();
    conn.close();
%>
