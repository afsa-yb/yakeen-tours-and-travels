<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<script type="text/javascript">
    function deletedata(veh_id)
    {
        if(confirm("Do you want to delete this record?"))
        {
            window.location.href="view_vehicles.jsp?veh_id="+veh_id;
        }
    }
</script>
<%
    if(request.getParameter("veh_id")!=null)
    {
        int veh_id=Integer.parseInt(request.getParameter("veh_id"));
        pstmt1=conn.prepareStatement("delete from vehicles_master where veh_id=?");
        pstmt1.setInt(1, veh_id);
        pstmt1.executeUpdate();
    }
%>    

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">View Vehicles</h4>
            </div>
            <div class="co-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th>Vehicles Id</th>
                        <th>Vehicles Name</th>
                        <th>Vehicles Number</th>
                        <th>Vehicles Description</th>
                        <th>Vehicles Photo</th>
                        <th>Seat Capacity</th>
                        <th>Price Per KM</th>
                        <th>Sub Category Name</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from vehicles_master ");
                        while(rs1.next())
                        {
                            int veh_id1=rs1.getInt(1);
                    %>
                    <tr>
                        <td><%=veh_id1%> </td>
                        <td><%=rs1.getString(2)%></td>                        
                        <td><%=rs1.getString(3)%></td>
                        <td><%=rs1.getString(4)%></td>
                        <td>
                            <img class="img-responsive" height="100" width="100" src="<%="http://localhost:8080/yakeen/vehicle_photo/"+rs1.getString(5)%>">                                 
                        </td>
                        <td><%=rs1.getString(6)%></td>
                        <td><%=rs1.getString(7)%></td>
                        <td><%
                            int sub_cat_id=rs1.getInt(8);
                            pstmt1=conn.prepareStatement("select * from sub_cat_master where sub_cat_id=?");
                            pstmt1.setInt(1,sub_cat_id);
                            rs2=pstmt1.executeQuery();
                            
                            while(rs2.next())
                            {
                                out.println(""+rs2.getString(2));
                            }
                            %>
                        </td>
                        <td><a href="edit_vehicles_master.jsp?veh_id=<%=rs1.getInt(1)%>"class="btn btn-success">Edit</a></td>
                        <td><button onclick="deletedata(<%=veh_id1%>)" class="btn btn-danger">Delete</button></td>
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