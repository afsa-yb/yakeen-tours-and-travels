<%@include file="header.jsp" %>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Add Category</h4>
            </div>
            <div class="row pad-botm">
                <div class="col-lg-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Add Category
                        </div>
                        <div class="panel-body">
                            <form action="add_cat_code.jsp" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Category Name</label>
                                            <input class="form-control" type="text" name="cat_name" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Category Photo</label>
                                            <input class="form-control" type="file" name="cat_photo" required="not null"/>                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Category Description</label>
                                            <textarea class="form-control" rows="3" name="cat_desc" required="not null"></textarea>
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