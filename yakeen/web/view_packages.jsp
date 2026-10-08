<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<script type="text/javascript">
    function deletedata(pack_id)
    {
        if(confirm("Do you want to delete this record?"))
        {
            window.location.href="view_packages.jsp?pack_id="+pack_id;
        }
    }
</script>
<%
    if(request.getParameter("pack_id")!=null)
    {
        int pack_id=Integer.parseInt(request.getParameter("pack_id"));
        pstmt1=conn.prepareStatement("delete from packages_master where pack_id=?");
        pstmt1.setInt(1, pack_id);
        pstmt1.executeUpdate();
    }
%>    

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">View Packages</h4>
            </div>
            <div class="co-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th>Package Id</th>
                        <th>Package Name</th>
                        <th>Package Description</th>
                        <th>Package Price</th>
                        <th>Package Photo</th>  
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Package Type</th>
                        <th>Sub Category Name</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from packages_master");
                        while(rs1.next())
                        {
                            int pack_id1=rs1.getInt(1);
                    %>
                    <tr>
                        <td><%=pack_id1%> </td>
                        <td><%=rs1.getString(2)%></td>                        
                        <td><%=rs1.getString(3)%></td>
                        <td><%=rs1.getString(4)%></td>
                        <td>
                            <img class="img-responsive" height="200px" width="200px" src="<%="http://localhost:8080/yakeen/pack_photo/"+rs1.getString(5)%>">                                 
                        </td>
                        <td><%=rs1.getString(6)%></td>
                        <td><%=rs1.getString(7)%></td>
                        <td><%=rs1.getString(8)%></td>
                        <td><%
                            int sub_cat_id=rs1.getInt(9);
                            pstmt1=conn.prepareStatement("select * from sub_cat_master where sub_cat_id=?");
                            pstmt1.setInt(1,sub_cat_id);
                            rs2=pstmt1.executeQuery();
                            
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                            %>
                        </td>
                        <td><a href="edit_packages_master.jsp?pack_id=<%=rs1.getInt(1)%>" class="btn btn-success">Edit</a></td>
                        <td><button onclick="deletedata(<%=pack_id1%>)" class="btn btn-danger">Delete</button></td>
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