<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<%   
    int sub_cat_id=Integer.parseInt(request.getParameter("sub_cat_id"));
    pstmt1=conn.prepareStatement("select * from sub_cat_master where sub_cat_id=?");
    pstmt1.setInt(1, sub_cat_id);
    rs2=pstmt1.executeQuery();
%>
<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Edit Sub Category</h4>
            </div>
            <div class="row pad-botm">
                <div class="col-lg-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Edit Subcategory
                        </div>
                        <div class="panel-body">
                            <form action="edit_sub_cat_code.jsp" method="post" enctype="multipart/form-data">
                                <%
                                    while(rs2.next())
                                    {                                                                            
                                %>
                                        <div class="form-group">
                                            <label>Subcategory Name</label>
                                            <input type="hidden" name="sub_cat_id" value="<%=sub_cat_id%>">     
                                                   <input class="form-control" type="text" name="sub_cat_name" value="<%=rs2.getString(2)%>" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Subcategory Photo</label>
                                            <input type="hidden" name="old_photo" value="<%=rs2.getString(3)%>" ><br>
                                            <img width="100px" height="100px" src="http://localhost:8080/yakeen/subcat_photo/<%=rs2.getString(3)%>">
                                            <input class="form-control" type="file" name="sub_cat_photo"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Subcategory Description</label>
                                            <textarea class="form-control" rows="3" name="sub_cat_desc" required="not null"><%=rs2.getString(4)%></textarea>
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