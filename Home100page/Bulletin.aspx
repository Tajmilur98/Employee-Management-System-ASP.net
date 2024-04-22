<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bulletin.aspx.cs" Inherits="Home100page.Bulletin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Bulletin</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
       <style>
          
           .txtbx{
               
               border:1px solid black;
               border-radius:6px;
               width:300px;
           }
           h5{
               color:orangered;
           }
           h3{
               font-weight:bold;
           }

       </style>

</head>
<body id="page-top">
    <form id="form1" runat="server">
         <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand text-bold" href="#page-top">Pearson</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="pageHome.aspx">Home</a></li>  
                        <li class="nav-item"><a class="nav-link" href="#page-top">Bulletin</a></li>
                        <li class="nav-item"><a class="nav-link" href="pageLogin.aspx">Log in</a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>

        
        <section class="projects-section bg-black" id="Bulletin">
            <div class="container px-4 px-lg-5 justify-content-center">
                <div class="gx-0 mb-4 mb-lg-5 align-items-center">
                    <div><img class="img-fluid mb-3 mb-lg-0" src="assets/img/hire.jpg" alt="..." /></div>
                </div>                            
            </div>       
        </section>

        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                <div class="d-flex justify-content-center">
                    <div class="text-center">
                        
                            <!--Application table-->
                         <h3 class="text-white-50 mx-auto mt-2 mb-5">Put Your Information Here </h3>
                       
                           <table >
                                <tr>
                                    <td style="text-align: Left" class=" text-white">National Id </td>
                                    <td class="justify-content-end" style="width:240px">
                                        <asp:TextBox ID="id" runat="server"  CssClass="txtbx"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Name </td>
                                    <td>
                                        <asp:TextBox ID="name" runat="server"  CssClass="txtbx" ></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Applying Post</td>
                                    <td>
                                        <asp:TextBox ID="post" runat="server"  CssClass="txtbx"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Age</td>
                                    <td>
                                        <asp:TextBox ID="age" runat="server" CssClass="txtbx"></asp:TextBox></td>
                                </tr>
                                

                                
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Education</td>
                                    <td>
                                        <asp:TextBox ID="edu" runat="server" CssClass="txtbx"></asp:TextBox></td>
                                </tr>
                                <tr>

                                    <td>
                                        </br> 
                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class=" text-white">Upload Your CV</td>
                                    <td  class="justify-content-right">
                                        <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" Class=" btn text-info"/>
                                        
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="10" align="center" class="auto-style3">
                                        </br>
                                        <asp:Button class="btn" ID="insert" runat="server" Text="Apply" OnClick="insert_Click" Width="150px"  BackColor="#d95757" ForeColor="White" />
                                        
                                    </td>
                                </tr>
                            </table>

                            <!--End of application table-->
                    </div>
                </div>
            </div>
        </header>



        <!-- More news-->
        <section class="contact-section bg-black">
             <h2 class="text-white-50 mx-auto text-center pb-50">More News</h2>
             </br></br>
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <h5>October 2, 2021</h5>
                                </br>
		                        <h3>Pearson Reaches 2k Of Commercial Client Through Q3 2022</h3>
                                </br>
		                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis rem ut natus illum sequi teneturi possimus inventore, nobis cumque libero incidunt mnima, porro ducimus nihil, deleniti excepturi dolorum adipisci eos!</p>
	
                                <hr class="my-4 mx-auto" />
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <h5>December 21, 2022</h5></br>
		                        <h3>Conferences On Branding & Identity</h3></br>
	                        	<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis rem ut natus illum sequi tenetur possimus inventore, nobis cumque libero incidunt minima, porro ducimus nihil, deleniti excepturi dolorum adipisci eos!</p>
	
                                <hr class="my-4 mx-auto" />
                               
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                               <h5>January 29, 2023</h5></br>
		                            <h3>Free Digital Marketing Webinar</h3></br>
		                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis rem ut natus illum sequi tenetur possimus inventore, nobis cumque libero incidunt minima, porro ducimus nihil, deleniti excepturi dolorum adipisci eos!</p>
	
                                    <hr class="my-4 mx-auto" />
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section>


        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; Tajmilur Rahman </br> 1807100</div></footer>
        
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>        
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </form>
</body>
</html>
