<%@include file="vheader.jsp" %>

<div class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-12 ">
                  <div class="titlepage text_align_center">
                     <h2>Login Form</h2>
                  </div>
               </div>
               <div class="col-md-8 offset-md-2">
                   <form id="request" class="main_form" action="login_check.jsp">
                     <div class="row">                        
                        <div class="col-md-12">
                           <input class="cont_in" placeholder="Your Email" type="email" name="username"> 
                        </div>
                        <div class="col-md-12 ">
                           <input class="cont_in" placeholder="Enter Password" type="password" name="password"> 
                        </div>                                
                        <div class="col-md-12">
                           <button type="submit" class="send_btnt">Submit</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>


<%@include file="footer.jsp" %>