<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Add Sub Category</h4>
            </div>
            <div class="row pad-botm">
                <div class="col-lg-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Add Subcategory
                        </div>
                        <div class="panel-body">
                            <form action="add_sub_cat.jsp" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Subcategory Name</label>
                                            <input class="form-control" type="text" name="sub_cat_name" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Subcategory Photo</label>
                                            <input class="form-control" type="file" name="sub_cat_photo"required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Subcategory Description</label>
                                            <textarea class="form-control" rows="3" name="sub_cat_desc" required="not null"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Select Category</label>
                                            <select class="form-control" name="cat_id" required="not null">
                                                <%
                                                    stmt1=conn.createStatement();
                                                    rs1=stmt1.executeQuery("select * from cat_master");
                                                    while(rs1.next())
                                                    {
                                                %>
                                                <option value="<%=rs1.getInt("cat_id")%>"><%=rs1.getString("cat_name")%></option>
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