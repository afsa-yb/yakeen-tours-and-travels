<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<%   
    int veh_id=Integer.parseInt(request.getParameter("veh_id"));
    pstmt1=conn.prepareStatement("select * from vehicles_master where veh_id=?");
    pstmt1.setInt(1, veh_id);
    rs2=pstmt1.executeQuery();
%>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Edit Vehicles</h4>
            </div>
            <div class="row pad-botm">
                <div class="col-lg-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Edit Vehicles
                        </div>
                        <div class="panel-body">
                            <form action="edit_vehicles_code.jsp" method="post" enctype="multipart/form-data">
                                 <%
                                    while(rs2.next())
                                    {                                                                            
                                %>
                                        <div class="form-group">
                                            <label>Vehicles Name</label>
                                            <input type="hidden" name="veh_id" value="<%=veh_id%>">
                                            <input class="form-control" type="text" name="veh_name" value="<%=rs2.getString(2)%>" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Vehicles Number</label>
                                            <input class="form-control" type="text" name="veh_number" value="<%=rs2.getString(3)%>" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Vehicles Description</label>
                                            <textarea class="form-control" rows="3" name="veh_desc" required="not null"><%=rs2.getString(4)%></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Vehicles Photo</label>
                                            <input type="hidden" name="old_photo" value="<%=rs2.getString(5)%>"><br>
                                            <img width="100px" height="100px" src="http://localhost:8080/yakeen/vehicle_photo/<%=rs2.getString(5)%>">
                                            <input class="form-control" type="file" name="veh_photo"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Seat Capacity</label>
                                            <input class="form-control" type="text" name="seat_capacity" value="<%=rs2.getString(6)%>" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Price Per Km.</label>
                                            <input class="form-control" type="text" name="price_per_km" value="<%=rs2.getString(7)%>" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Select Subcategory</label>
                                            <select class="form-control" name="sub_cat_id" required="not null">
                                                <%
                                                    stmt1=conn.createStatement();
                                                    rs1=stmt1.executeQuery("select * from sub_cat_master");
                                                    while(rs1.next())
                                                    {
                                                %>
                                                <option value="<%=rs1.getInt("sub_cat_id")%>"><%=rs1.getString("sub_cat_name")%></option>
                                                <%
                                                    }
                                                %>
                                            </select>                                            
                                        </div>
                                        <button type="submit" class="btn btn-info">Submit</button>
                                        <%
                                            }
                                        %>
                                    </form>
                            </div>
                        </div>
                </div>                
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>