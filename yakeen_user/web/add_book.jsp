<%@include file="connect.jsp" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%                
    int user_id=Integer.parseInt(request.getParameter("user_id"));
    int pack_id=Integer.parseInt(request.getParameter("pack_id"));    
    int pack_price=Integer.parseInt(request.getParameter("pack_price"));    
   
    String book_day=request.getParameter("book_day");
    int no_of_person=Integer.parseInt(request.getParameter("no_of_person"));
    int total_amount=pack_price*no_of_person;
    
    SimpleDateFormat df=new SimpleDateFormat("dd-MM-yy");
    String book_date=df.format(new Date());
            
    pstmt1=conn.prepareStatement("insert into booking_master(book_date,book_day,no_of_person,total_amount,pack_id,user_id)values(?,?,?,?,?,?)");
    
    
    pstmt1.setString(1, book_date);
    pstmt1.setString(2, book_day);
    pstmt1.setInt(3, no_of_person);
    pstmt1.setInt(4, total_amount);
    pstmt1.setInt(5, pack_id);
    pstmt1.setInt(6, user_id);
    
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
