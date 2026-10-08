<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>yakeen</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
      <link rel="stylesheet" href="css/nice-select.css">
      <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
      <link rel="stylesheet" href="css/niceCountryInput.css">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout inner_page">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#"/></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <div class="header">
         <div class="top_header">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="select_main">
                        <div class="sign">
                           
                           
                        </div>
                        <ul class="top_infomation">
                           <li><img src="images/ti_call.png" alt="#"/>Call : +91 9979766588</li>
                           <li><img src="images/ti_mail.png" alt="#"/><a href="Javascript:void(0)"> info@yakeentoursonline.com</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="header_midil">
            <div class="container">
               <div class="row d_flex">
                  <div class=" col-md-2 col-sm-3 logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo">
                               <a href="index.html"><img src="logo/logofinal.png" style="width:250px;height:60px;" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-9 col-md-8">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item">
                                  <a class="nav-link" href="index.jsp">Home</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="vuser_about_us.jsp">About</a>
                              </li>
                              <li class="nav-item dropdown">
				<a class="nav-link " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				Tour
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">                                                                
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from cat_master");
                        while(rs1.next())
                        {
                            
                    %>
                                    
                    <a class="dropdown-item" href="vuser_view_tour_subcat.jsp?cat_id=<%=rs1.getInt(1)%>"><%=rs1.getString(2)%></a>
                                
                                    <%
                                        }
                                     %>
                                
                                
                                </div>
				</li>                                                            
                              <li>
                                 <a class="nav-link" href="vuser_contact.jsp">Contact Us</a>
                              </li>
                              <li>
                                  <a class="nav-link" href="user_master.jsp">Register</a>
                              </li>
                           </ul>
                        </div>
                     </nav>
                  </div>
                  <div class="col-md-2  d_none">
                     <ul class="email text_align_right">
                        <li><a href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i></a></li>
                        <li><a href="Javascript:void(0)"><i class="fa fa-search" aria-hidden="true"></i>   </a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end header inner -->
      
