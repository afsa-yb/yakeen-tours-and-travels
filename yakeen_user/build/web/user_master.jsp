<%@include file="vheader.jsp" %>

<div class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-12 ">
                  <div class="titlepage text_align_center">
                     <h2>User Registration</h2>
                  </div>
               </div>
               <div class="col-md-8 offset-md-2">
                   <form id="request" class="main_form" action="add_user.jsp">
                     <div class="row">
                        <div class="col-md-12 ">
                           <input class="cont_in" placeholder="Enter Name" type="text" name="user_name"> 
                        </div>
                        <div class="col-md-12">
                           <textarea class="textarea2" style="color:#676767;" placeholder="Enter Address" type="text" name="user_address"> </textarea>
                        </div>
                         <div class="col-md-12 ">
                           <input class="cont_in" placeholder="Enter City" type="text" name="user_city"> 
                        </div>
                         <div class="col-md-12 ">
                           <input class="cont_in" placeholder="Enter Pin-code" type="text" name="user_pincode"> 
                        </div>
                        <div class="col-md-12">
                           <input class="cont_in" placeholder="Your Email" type="email" name="user_email"> 
                        </div>
                        <div class="col-md-12 ">
                           <input class="cont_in" placeholder="Enter Password" type="password" name="user_password"> 
                        </div>
                        <div class="col-md-12">
                           <input class="cont_in" placeholder="Enter Mobile Number" type="type" name="user_mobile">                          
                        </div>                        
                        <div class="col-md-12">
                           <button type="submit" class="send_btnt">Send</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>


<%@include file="footer.jsp" %>