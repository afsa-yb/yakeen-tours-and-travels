<%@include file="rheader.jsp" %>
    
 <!-- packages -->
      <div class="packages">
        <div class="container">
        <div>           
            <%
                    int veh_id=Integer.parseInt(request.getParameter("veh_id"));
                    stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select * from vehicles_master where veh_id='"+veh_id+"'");
                    while(rs1.next())
                    {                            
            %>
            <div class="row">
                
               <div class="col-md-12">                  
                  <div class="titlepage text_align_center ">
                     <h2><%=rs1.getString(2)%></h2>
                  </div>
               </div>
            </div>
            <div class="row">                     
                  <div class=" col-md-4">
                  <div id="ho_img" class="packages_box" data-aos="fade-right" >                     
                      <figure><img  style="width:600px;height:400px;" src="<%="http://localhost:8080/yakeen/vehicle_photo/"+rs1.getString(5)%>" alt="#"/></figure>
                  </div>
                  </div>
                  <div class="col-md-8">
                     <div class="tuscany">
                        <div class="tusc text_align_left">
                           <div class="italy">
                              <h3><%=rs1.getString(2)%></h3>                              
                           </div>                            
                        </div>                                                   
                        <p>Description: <%=rs1.getString(4)%></p>
                        <div>
                              <h4 style="margin:10px;">Vehicle Number: <%=rs1.getString(3)%></h4>                              
                        </div>
                        <div>
                              <h4 style="margin:10px;">Seat Capacity: <%=rs1.getString(6)%></h4>                              
                        </div>
                        <div>
                              <h4 style="margin:10px;">Price Per KM: <%=rs1.getString(7)%></h4>                              
                        </div>
                        <form action="add_veh_book.jsp" method="post">
                        <div class="main_form">
                           <input class="cont_in" placeholder="Choose Your Day" type="date" name="vb_day"> 
                        </div>
                        <div class="main_form">
                           <input class="cont_in" placeholder="Enter Pick Up Location" type="text" name="pick_up_loc"> 
                        </div>
                        <div class="main_form">
                           <input class="cont_in" placeholder="Enter Drop Of Location" type="text" name="drop_of_loc"> 
                        </div>
                        <div class="main_form">
                            <h4>Enter Pick Up Time: </h4><input class="cont_in" placeholder="Enter Pick Up Time" type="time" name="pick_up_time"> 
                        </div>
                        <div class="main_form">
                            <h4>Enter Drop Of Time: </h4><input class="cont_in" placeholder="Enter Drop Of Time" type="time" name="drop_of_time"> 
                        </div>
                        <div class="main_form">
                            <input class="cont_in" placeholder="Enter Total Distance" type="text" name="total_distance"> 
                        </div>
                        <input type="hidden" name="user_id" value="<%=user_id%>">
                        <input type="hidden" name="veh_id" value="<%=veh_id%>">
                        <input type="hidden" name="price_per_km" value="<%=rs1.getString(7)%>">
                        <div class="tusc">
                            <button type="submit" class="read_more">Book Now</button>                            
                        </div> 
                        </form>
                     </div>
                    </div>
               </div> 
                <%
                   }
                %>            
            </div>
                     
                   <hr>    
               <div class="row">
                 <div class="col-md-12">
                    <div class="italy">
                    <h3> Give Feedback :</h3>
                    </div>
                </div> 
                </div>
                <form action="add_feedback_veh.jsp" method="post">   
                <div class="row">
                <div class="col-md-9">
                    <textarea class="" rows="2" cols="150" style="margin: 10px;" placeholder="Enter Feedback"  id="comment" name="fb_msg"></textarea>
                <input type="hidden" name="user_id" value="<%=user_id%>">
                <input type="hidden" name="veh_id" value="<%=veh_id%>">
                </div>
                <div class="col-md-3">                    
                   <button type="submit" class="btn btn-success" style="margin-top: 80px;">Give Feedback</button>
                </div>
                </div><br>
               </form>
                    <hr>  
                   <div class="row">
                       <div class="col-md-12"><div class="italy"><h3>User Feedbacks</h3></div></div>
                   </div><br> 
                    <center>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from feedback_veh where veh_id='"+veh_id+"'");
                        while(rs1.next())
                        {
                    %>
                    <hr>
                    <div class="row" style="font-size: 15px;text-transform: capitalize;">
                        <div class="col-md-2">
                            <b><%=rs1.getString(5)%></b>
                        </div>
                         <div class="col-md-6">
                            <b><%=rs1.getString(2)%></b>
                        </div>
                         <div class="col-md-2">
                            <b><%=rs1.getString(3)%></b>
                        </div>
                    </div>
                        <hr>
                    <%
                        }
                    %>    
                    </center>
            </div>
         </div>
      </div>

<%@include file="footer.jsp" %>