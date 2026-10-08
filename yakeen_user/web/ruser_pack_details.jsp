<%@include file="rheader.jsp" %>
    
 <!-- packages -->
<script>
let count = 1;

function increment() {
  count++;
  document.getElementById("person-count").textContent = count;
}

function decrement() {
  if (count > 1) {
    count--;
    document.getElementById("person-count").textContent = count;
  }
}
</script>
      <div class="packages">
         <div class="container">
            <div>
                
                <%
                    int pack_id=Integer.parseInt(request.getParameter("pack_id"));
                    stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select * from packages_master where pack_id='"+pack_id+"'");
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
                      <figure><img  style="width:600px;height:400px;" src="<%="http://localhost:8080/yakeen/pack_photo/"+rs1.getString(5)%>" alt="#"/></figure>
                  </div>
                  </div>
                  <div class="col-md-8">
                     <div class="tuscany">
                        <div class="tusc text_align_left">
                           <div class="italy">
                               <h3><%=rs1.getString(2)%></h3>
                           </div>                            
                        </div>                                                   
                        <p>Description: <%=rs1.getString(3)%></p>
                        <div>
                              <h4 style="margin:10px;">Price: <%=rs1.getString(4)%></h4>                              
                        </div>
                        <div>
                              <h4 style="margin:10px;">Packages Type: <%=rs1.getString(8)%></h4>                              
                        </div>
                        <div>
                              <h4 style="margin:10px;">Stay : <%=rs1.getString(6)%> and <%=rs1.getString(7)%></h4>                              
                        </div>
                        <form action="add_book.jsp" method="post">
                        <div class="main_form">
                           <input class="cont_in" placeholder="Choose Your Day" type="date" name="book_day"> 
                        </div>                        
                        <div class="main_form">
                           <input class="cont_in" placeholder="Enter No. of person" type="text" name="no_of_person"> 
                        </div>
                        <input type="hidden" name="user_id" value="<%=user_id%>">
                        <input type="hidden" name="pack_id" value="<%=pack_id%>">
                        <input type="hidden" name="pack_price" value="<%=rs1.getString(4)%>">
                        
                        <div class="tusc">
                            <input type="submit" class="read_more" value="Book Now">                            
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
                <form action="add_feedback.jsp" method="post">   
                <div class="row">
                <div class="col-md-9">
                    <textarea class="" rows="2" cols="150" placeholder="Enter Feedback"  id="comment" name="fb_msg"></textarea>
                <input type="hidden" name="user_id" value="<%=user_id%>">
                <input type="hidden" name="pack_id" value="<%=pack_id%>">
                </div>
                <div class="col-md-3">                    
                   <button type="submit" class="btn btn-success" style="margin-top: 70px;">Give Feedback</button>
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
                        rs1=stmt1.executeQuery("select * from feedback_master where pack_id='"+pack_id+"'");
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