<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<script type="text/javascript">
    function deletedata(cat_id)
    {
        if(confirm("Do you want to delete this record?"))
        {
            window.location.href="view_cat.jsp?cat_id="+cat_id;
        }
    }
</script>
<%
    if(request.getParameter("cat_id")!=null)
    {
        int cat_id=Integer.parseInt(request.getParameter("cat_id"));
        pstmt1=conn.prepareStatement("delete from cat_master where cat_id=?");
        pstmt1.setInt(1, cat_id);
        pstmt1.executeUpdate();
    }
%>    

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">View Category</h4>
            </div>
            <div class="co-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th>Category Id</th>
                        <th>Category Name</th>
                        <th>Category Photo</th>
                        <th>Category Description</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from cat_master");
                        while(rs1.next())
                        {
                            int cat_id1=rs1.getInt(1);
                    %>
                    <tr>
                        <td><%=cat_id1%> </td>
                        <td><%=rs1.getString(2)%></td>                        
                        <td>
                            <img class="img-responsive" height="150" width="150" src="<%="http://localhost:8080/yakeen/cat_photo/"+rs1.getString(3)%>">                                 
                        </td>
                        <td><%=rs1.getString(4)%></td>
                        <td><a href="edit_cat_master.jsp?cat_id=<%=rs1.getInt(1)%>" class="btn btn-success">Edit</a></td>
                        <td><button onclick="deletedata(<%=cat_id1%>)" class="btn btn-danger">Delete</button></td>
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