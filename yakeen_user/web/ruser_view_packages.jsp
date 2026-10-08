<%@include file="rheader.jsp" %>
    
 <!-- packages -->
      <div class="packages">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage text_align_center ">
                     
                  </div>
               </div>
            </div>
             <div class="row">
                     <%
                         int sub_cat_id=Integer.parseInt(request.getParameter("sub_cat_id"));
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from packages_master where sub_cat_id='"+sub_cat_id+"'");
                        while(rs1.next())
                        {                            
                    %>
                  <div class=" col-md-6">
                  <div id="ho_img" class="packages_box" data-aos="fade-right" >                     
                      <figure><img  style="width:600px;height:400px;" src="<%="http://localhost:8080/yakeen/pack_photo/"+rs1.getString(5)%>" alt="#"/></figure>
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
                            <a class="read_more" href="ruser_pack_details.jsp?pack_id=<%=rs1.getInt(1)%>">Read More</a>
                            
                        </div>                        
                     </div>
                    </div>
               </div> 
                <%
                   }
                %>                                 
            </div>
            <div class="row">
                     <%
                         
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from vehicles_master where sub_cat_id='"+sub_cat_id+"'");
                        while(rs1.next())
                        {                            
                    %>
                  <div class=" col-md-6">
                  <div id="ho_img" class="packages_box" data-aos="fade-right" >                     
                      <figure><img  style="width:600px;height:400px;" src="<%="http://localhost:8080/yakeen/vehicle_photo/"+rs1.getString(5)%>" alt="#"/></figure>
                     <div class="tuscany">
                        <div class="tusc text_align_left">
                           <div class="italy">
                              <h3><%=rs1.getString(2)%></h3>                              
                           </div>                            
                        </div>                           
                        <p><%=rs1.getString(4)%></p>
                        <div class="tusc">
                            <a class="read_more" href="ruser_veh_details.jsp?veh_id=<%=rs1.getInt(1)%>">Read More</a>
                            
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