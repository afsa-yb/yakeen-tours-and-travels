<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<script type="text/javascript">
    function deletedata(book_id)
    {
        if(confirm("Do you want to delete this record?"))
        {
            window.location.href="view_pack_book.jsp?book_id="+book_id;
        }
    }
</script>
<%
    if(request.getParameter("book_id")!=null)
    {
        int book_id=Integer.parseInt(request.getParameter("book_id"));
        pstmt1=conn.prepareStatement("delete from booking_master where book_id=?");
        pstmt1.setInt(1, book_id);
        pstmt1.executeUpdate();
    }
%>    

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">View Packages Booking</h4>
            </div>
            <div class="co-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th>Booking Id</th>
                        <th>Booking Date</th>
                        <th>Booking Date</th>
                        <th>No of person</th>
                        <th>Total Amount</th>                          
                        <th>Package Name</th>
                        <th>User Name</th>                        
                        <th>Delete</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from booking_master");
                        while(rs1.next())
                        {
                            int book_id1=rs1.getInt(1);
                    %>
                    <tr>
                        <td><%=book_id1%> </td>
                        <td><%=rs1.getString(2)%></td>                        
                        <td><%=rs1.getString(3)%></td>
                        <td><%=rs1.getString(4)%></td>
                        <td><%=rs1.getString(5)%></td>
                        <td><%
                            int pack_id=rs1.getInt(6);
                            pstmt1=conn.prepareStatement("select * from packages_master where pack_id=?");
                            pstmt1.setInt(1,pack_id);
                            rs2=pstmt1.executeQuery();
                            
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                            %>
                        </td>
                        <td><%
                            int user_id=rs1.getInt(7);
                            pstmt1=conn.prepareStatement("select * from user_master where user_id=?");
                            pstmt1.setInt(1,user_id);
                            rs2=pstmt1.executeQuery();
                            
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                            %>
                        </td>
                        
                        <td><button onclick="deletedata(<%=book_id1%>)" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <%
                        }
                    %>
                </table>                
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>