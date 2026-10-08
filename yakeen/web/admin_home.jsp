<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
<link rel="stylesheet" href="dashboard.css">
<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">ADMIN DASHBOARD</h4>
            </div>
            <div class="col-md-12">
                <div class="container">
    <div class="row">
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-5">
                <div class="inner">
                    
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from cat_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    
                    <p>Categories</p>
                </div>
                <div class="icon">
                    <i class="fa fa-bar-chart-o" aria-hidden="true"></i>
                </div>
                    <a href="view_cat.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-6">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from sub_cat_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p> Sub Categories </p>
                </div>
                <div class="icon">
                    <i class="fa fa-briefcase" aria-hidden="true"></i>
                </div>
                    <a href="view_subcat.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-7">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from packages_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p> Packages </p>
                </div>
                <div class="icon">
                    <i class="fa fa-photo" aria-hidden="true"></i>
                </div>
                    <a href="view_packages.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-8">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from vehicles_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p> Vehicles </p>
                </div>
                <div class="icon">
                    <i class="fa fa-cab"></i>
                </div>
                    <a href="view_vehicles.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
                    
           <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-1">
                <div class="inner">
                    
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from booking_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    
                    <p>Packages Booking</p>
                </div>
                <div class="icon">
                    <i class="fa fa-picture-o" aria-hidden="true"></i>
                </div>
                    <a href="view_pack_book.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-2">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from veh_book_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p> Vehicles Booking </p>
                </div>
                <div class="icon">
                    <i class="fa fa-car" aria-hidden="true"></i>
                </div>
                    <a href="view_veh_book.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-4">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from user_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p> Users </p>
                </div>
                <div class="icon">
                    <i class="fa fa-users" aria-hidden="true"></i>
                </div>
                    <a href="view_user.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-3">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from feedback_master");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p> Packages Feedback </p>
                </div>
                <div class="icon">
                    <i class="fa fa-envelope"></i>
                </div>
                    <a href="view_fedback_pack.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
         <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-9">
                <div class="inner">
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select count(*) from feedback_veh");
                        if(rs1.next())
                        {
                            out.println("<h3>"+rs1.getInt(1)+"</h3>");
                        }
                    %>
                    <p> Vehicles Feedback </p>
                </div>
                <div class="icon">
                    <i class="fa fa-envelope"></i>
                </div>
                    <a href="view_fedback_veh.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
            
        </div>
        </div>
        </div>
        </div>
    </div>    
</div>

            </div>
        </div>
    </div>
</div>    
<%@include file="footer.jsp" %>