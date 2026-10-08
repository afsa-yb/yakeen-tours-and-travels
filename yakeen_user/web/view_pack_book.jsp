<%@include file="rheader.jsp" %>

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

<div class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-12 ">
                  <div class="titlepage text_align_center">
                      <h2>View Packages Booking</h2>
                  </div>
               </div>
            <div class="col-md-12">
                <table class="table table-bordered">
                    <tr>                        
                        <th>Booking Date</th>
                        <th>Booking Day</th>
                        <th>No of person</th>
                        <th>Total Amount</th>                          
                        <th>Package Name</th>                                             
                        <th>Cancel Booking</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from booking_master where user_id='"+user_id+"'");
                        while(rs1.next())
                        {
                            int book_id1=rs1.getInt(1);
                    %>
                    <tr>
                        
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
                        
                        <td><button onclick="deletedata(<%=book_id1%>)" class="btn btn-danger">Cancel</button></td>
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