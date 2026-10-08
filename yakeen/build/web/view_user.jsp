<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<script type="text/javascript">
    function deletedata(pack_id)
    {
        if(confirm("Do you want to delete this record?"))
        {
            window.location.href="view_user.jsp?user_id="+user_id;
        }
    }
</script>
<%
    if(request.getParameter("user_id")!=null)
    {
        int user_id=Integer.parseInt(request.getParameter("user_id"));
        pstmt1=conn.prepareStatement("delete from user_master where user_id=?");
        pstmt1.setInt(1, user_id);
        pstmt1.executeUpdate();
    }
%>    

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">View Users</h4>
            </div>
            <div class="co-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th>User Id</th>
                        <th>User Name</th>
                        <th>User Address</th>
                        <th>User City</th>
                        <th>User Pin-code</th>  
                        <th>User E-mail</th>
                        <th>User Password</th>
                        <th>User Mobile</th>                        
                        <th>Delete</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from user_master");
                        while(rs1.next())
                        {
                            int user_id1=rs1.getInt(1);
                    %>
                    <tr>
                        <td><%=user_id1%> </td>
                        <td><%=rs1.getString(2)%></td>                        
                        <td><%=rs1.getString(3)%></td>
                        <td><%=rs1.getString(4)%></td>                        
                        <td><%=rs1.getString(5)%></td>
                        <td><%=rs1.getString(6)%></td>
                        <td><%=rs1.getString(7)%></td>                      
                        <td><%=rs1.getString(8)%></td>
                        <td><button onclick="deletedata(<%=user_id1%>)" class="btn btn-danger">Delete</button></td>
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