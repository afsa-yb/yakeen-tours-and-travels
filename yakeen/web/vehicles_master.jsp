<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Add Vehicles</h4>
            </div>
            <div class="row pad-botm">
                <div class="col-lg-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Add Vehicles
                        </div>
                        <div class="panel-body">
                            <form action="add_vehicles.jsp" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Vehicles Name</label>
                                            <input class="form-control" type="text" name="veh_name" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Vehicles Number</label>
                                            <input class="form-control" type="text" name="veh_number" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Vehicles Description</label>
                                            <textarea class="form-control" rows="3" name="veh_desc" required="not null"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Vehicles Photo</label>
                                            <input class="form-control" type="file" name="veh_photo" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Seat Capacity</label>
                                            <input class="form-control" type="text" name="seat_capacity" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Price Per Km.</label>
                                            <input class="form-control" type="text" name="price_per_km" required="not null"/>                                            
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
                                    </form>
                            </div>
                        </div>
                </div>                
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>