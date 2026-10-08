<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<script type="text/javascript">
    function deletedata(fb_id)
    {
        if(confirm("Do you want to delete this record?"))
        {
            window.location.href="view_feedback_pack.jsp?fb_id="+sub_cat_id;
        }
    }
</script>
<%
    if(request.getParameter("fb_id")!=null)
    {
        int fb_id=Integer.parseInt(request.getParameter("fb_id"));
        pstmt1=conn.prepareStatement("delete from feedback_master where fb_id=?");
        pstmt1.setInt(1, fb_id);
        pstmt1.executeUpdate();
    }
%>    


<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">View Packages Feedback</h4>
            </div>
            <div class="co-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th>Feedback Id</th>
                        <th>Feedback Message</th>
                        <th>Feedback Date</th>                        
                        <th>User Name</th>                        
                        <th>Packages Name</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from feedback_master");
                        while(rs1.next())
                        {
                            int fb_id1=rs1.getInt(1);
                    %>
                    <tr>
                        <td><%=fb_id1%> </td>
                        <td><%=rs1.getString(2)%></td>                                                                                               
                        <td><%=rs1.getString(3)%></td>
                        <td><%
                            int user_id=rs1.getInt(4);
                            pstmt1=conn.prepareStatement("select * from user_master where user_id=?");
                            pstmt1.setInt(1,user_id);
                            rs2=pstmt1.executeQuery();
                            
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));                                
                            }
                            %>
                        </td>                        
                        <td><%
                            int pack_id=rs1.getInt(5);
                            pstmt1=conn.prepareStatement("select * from packages_master where pack_id=?");
                            pstmt1.setInt(1,pack_id);
                            rs2=pstmt1.executeQuery();
                            
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                            %>
                        </td>
                        <td><button onclick="deletedata(<%=fb_id1%>)" class="btn btn-danger">Delete</button></td>
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