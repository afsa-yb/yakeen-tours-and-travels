<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Add Packages</h4>
            </div>
            <div class="row pad-botm">
                <div class="col-lg-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Add Packages
                        </div>
                        <div class="panel-body">
                            <form action="add_packages.jsp" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Packages Name</label>
                                            <input class="form-control" type="text" name="pack_name" required="not null"/>                                            
                                        </div>                                        
                                        <div class="form-group">
                                            <label>Packages Description</label>
                                            <textarea class="form-control" rows="3" name="pack_desc" required="not null"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Packages Price</label>
                                            <input class="form-control" type="text" name="pack_price" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Packages Photo</label>
                                            <input class="form-control" type="file" name="pack_photo" required="not null"/>                                            
                                        </div>                                        
                                        <div class="form-group">
                                            <label>Days</label>
                                            <input class="form-control" type="text" name="days" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Nights</label>
                                            <input class="form-control" type="text" name="nights" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Packages Type</label>
                                            <input class="form-control" type="text" name="pack_type" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Select Sub Category</label>
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