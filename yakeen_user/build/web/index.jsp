<%@include file="vheader.jsp" %>

		<div id="carouselExampleIndicators" class="carousel slide">
                        <ol class="carousel-indicators">
                           <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="logo/slider1.jpg" class="d-block w-100" alt="..." style="width:100%; height:500px;">
                        </div>
                        <div class="carousel-item">
                            <img src="logo/slider2.jpg" class="d-block w-100" alt="..." style="width:100%; height:500px;">
                        </div>
                        <div class="carousel-item">
                            <img src="logo/slider3.jpg" class="d-block w-100" alt="..." style="width:100%; height:500px;">
                        </div>
                        <div class="carousel-item">
                            <img src="logo/slider4.png" class="d-block w-100" alt="..." style="width:100%; height:500px;">
                        </div>
                    </div>
                        <!-- controls -->
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                        </a>
                </div>


<div class="packages">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage text_align_center ">
                     <h2>New Arrivals</h2>
                  </div>
               </div>
            </div>
            <div class="row">
                     <%                         
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from packages_master order by rand() limit 6");
                        while(rs1.next())
                        {                            
                    %>
                  <div class=" col-md-4">
                  <div id="ho_img" class="packages_box" data-aos="fade-right" >                     
                      <figure><img  style="width:600px;height:300px;" src="<%="http://localhost:8080/yakeen/pack_photo/"+rs1.getString(5)%>" alt="#"/></figure>
                     <div class="tuscany">
                        <div class="tusc text_align_left">
                           <div class="italy">
                              <h3><%=rs1.getString(2)%></h3>                              
                           </div> 
                           <div class="italy_right">
                              <h3>Price</h3>
                              <span><%=rs1.getString(4)%></span>
                           </div>
                        </div>                           
                        <p><%=rs1.getString(3)%></p>
                        <div class="tusc">
                            <a class="read_more" href="vuser_pack_details.jsp?pack_id=<%=rs1.getInt(1)%>">Read More</a>
                            
                        </div>                        
                     </div>
                    </div>
               </div>
                    <%
                         }
                     %>
                  
               
            </div>
         </div>
      </div>

<%@include file="footer.jsp" %>