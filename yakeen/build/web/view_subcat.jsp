<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<script type="text/javascript">
    function deletedata(sub_cat_id)
    {
        if(confirm("Do you want to delete this record?"))
        {
            window.location.href="view_subcat.jsp?sub_cat_id="+sub_cat_id;
        }
    }
</script>
<%
    if(request.getParameter("sub_cat_id")!=null)
    {
        int sub_cat_id=Integer.parseInt(request.getParameter("sub_cat_id"));
        pstmt1=conn.prepareStatement("delete from sub_cat_master where sub_cat_id=?");
        pstmt1.setInt(1, sub_cat_id);
        pstmt1.executeUpdate();
    }
%>    


<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">View Sub Category</h4>
            </div>
            <div class="co-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th>Sub category Id</th>
                        <th>Sub category Name</th>
                        <th>Sub category Photo</th>
                        <th>Sub category Description</th>
                        <th>Category Name</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from sub_cat_master");
                        while(rs1.next())
                        {
                            int sub_cat_id1=rs1.getInt(1);
                    %>
                    <tr>
                        <td><%=sub_cat_id1%> </td>
                        <td><%=rs1.getString(2)%></td>                        
                        
                        <td><img class="img-responsive" height="150" width="150" src="<%="http://localhost:8080/yakeen/subcat_photo/"+rs1.getString(3)%>"></td>                                 
                        
                        <td><%=rs1.getString(4)%></td>
                        <td><%
                            int cat_id=rs1.getInt(5);
                            pstmt1=conn.prepareStatement("select * from cat_master where cat_id=?");
                            pstmt1.setInt(1,cat_id);
                            rs2=pstmt1.executeQuery();
                            
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                            %>
                        </td>
                        <td><a href="edit_sub_cat_master.jsp?sub_cat_id=<%=rs1.getInt(1)%>" class="btn btn-success">Edit</a></td>
                        <td><button onclick="deletedata(<%=sub_cat_id1%>)" class="btn btn-danger">Delete</button></td>
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