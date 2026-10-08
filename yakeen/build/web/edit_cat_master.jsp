<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<%
    int cat_id=Integer.parseInt(request.getParameter("cat_id"));
    pstmt1=conn.prepareStatement("select * from cat_master where cat_id=?");
    pstmt1.setInt(1, cat_id);
    rs2=pstmt1.executeQuery();
%>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Edit Category</h4>
            </div>
            <div class="row pad-botm">
                <div class="col-lg-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Edit Category
                        </div>
                        <div class="panel-body">
                            <form action="edit_cat_code.jsp" method="post" enctype="multipart/form-data">
                                <%
                                    while(rs2.next())
                                    {                                                                            
                                %>
                                        <div class="form-group">
                                            <label>Category Name</label>
                                            <input type="hidden" name="cat_id" value="<%=cat_id%>" >
                                            <input class="form-control" type="text" name="cat_name" value="<%=rs2.getString(2)%>" required="not null"/>  
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Category Photo</label>
                                            <input class="form-control" type="hidden" name="old_photo" value="<%=rs2.getString(3)%>"/>
                                            <input class="form-control" type="file" name="cat_photo"/>
                                            <img width="100px" height="100px" src="http://localhost:8080/yakeen/cat_photo/<%=rs2.getString(3)%>">
                                        </div>
                                        <div class="form-group">
                                            <label>Category Description</label>
                                            <textarea class="form-control" rows="3" name="cat_desc" required="not null"><%=rs2.getString(4)%></textarea>
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