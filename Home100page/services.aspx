<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="Home100page.services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>services</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    <style>
        .lab-style{
             text-align:left;
            background-color:aquamarine;
            border:1px solid;
            border-radius:5px;
            font-weight:bold;
            color:white;
            padding:2px;
            margin:1px;
        }
        .txtbx{
               
               border:1px solid black;
               border-radius:6px;
               width:300px;
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
                        
                        <li class="nav-item"><a class="nav-link" href="#page-top">Projects</a></li>
                      
                        <li class="nav-item"><a class="nav-link" href="pageLogin.aspx">Log in</a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>

                <!-- Projects-->
        <section class="projects-section bg-black" id="projects">
            <div class="container px-4 px-lg-5">
                <!-- Featured Project Row-->
                <div class="row gx-0 mb-4 mb-lg-5 align-items-center">
                    <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="assets/img/service-3.jpg" alt="..." /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            <h4 class="text-white">Business Analysis Software </h4>
                            <p class="text-white-50 mb-0">Pearson is open source and MIT licensed project building platform for your own business. This means you can use it for any project - even commercial projects with our help to grow your own business!</p>
                            <br/>
                            <asp:Label ID="Label1" CssClass="lab-style" runat="server" BackColor="#458a64" Text="PROJECT CLOSED"></asp:Label>
                            <br />
                            <asp:Label ID="Label2" CssClass="lab-style" runat="server" BackColor="#e36052" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="Label3" CssClass="lab-style" runat="server" BackColor="#d1ad5e" Text=""></asp:Label>
                            </br>
                            </br>
                             
                        </div>
                    </div>
                </div>
                <br /> <br /> <br /> <br />
                <!-- Project One Row-->
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <div class="col-lg-6"><img class="img-fluid" src="assets/img/service-1.png" alt="..." /></div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                    <h4 class="text-white">Datasys</h4>
                                    <p class="mb-0 text-white-50">Datasys is a data analysis project conducted under our data engineering team. It is a combination of Business analysis and data science.</p>
                                    <p class="mb-0 text-white-50">&nbsp;</p>
                                    
                                     <asp:Label ID="Label4" CssClass="lab-style" BackColor="#458a64" runat="server" Text="PROJECT CLOSED"></asp:Label>
                            <br />
                            <asp:Label ID="Label5" CssClass="lab-style" BackColor="#e36052" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="Label6" CssClass="lab-style" BackColor="#d1ad5e" runat="server" Text=""></asp:Label>
                                    <hr class="d-none d-lg-block mb-0 ms-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br /> <br /> <br /> <br />
                <!-- Project Two Row-->
                <div class="row gx-0 justify-content-center">
                    <div class="col-lg-6"><img class="img-fluid" src="assets/img/service-2.jpg" alt="..." /></div>
                    <div class="col-lg-6 order-lg-first">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-right">
                                    <h4 class="text-white">ONLINE SCHOOL</h4>
                                    <p class="mb-0 text-white-50">Our courses explore Meta Marketing Analytics Tools.  You’ll learn how the advertising platform works and you’ll learn to create ads using Meta Ads Manager.  Then, you’ll learn how Meta reports results and how you can customize the reports to match your business goals.  You’ll also learn how you can use Meta experiments to evaluate the effectiveness of your advertising campaign.  You’ll learn to optimize ads with A/B testing and you will explore how you can integrate data from Meta campaigns in marketing mix modeling.</p>
                                    <p class="mb-0 text-white-50">&nbsp;</p>
                                    <p class="mb-0 text-white-50">&nbsp;</p>
                                    <asp:Label ID="Label9" CssClass="lab-style" BackColor="#458a64" runat="server" Text="PROJECT CLOSED"></asp:Label>
                            <br />
                            <asp:Label ID="Label10" CssClass="lab-style" BackColor="#e36052" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="Label11" CssClass="lab-style" BackColor="#d1ad5e" runat="server" Text=""></asp:Label>
                                    <hr class="d-none d-lg-block mb-0 me-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Signup-->
        <section class="signup-section justify-content-center" id="signup">
            <div class="container px-4 px-lg-5 justify-content-center">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 mx-auto text-center justify-content-center ">
                        <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                        <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                <div class="d-flex justify-content-center">
                    <div class="text-center">
                        <h2 class="text-white mb-5 pt-10">ORDER NOW</h2>
                        <table>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Phone Number</td>
                                    <td class="justify-content-end" style="width:240px">
                                        <asp:TextBox ID="cid" runat="server"  CssClass="txtbx"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Name </td>
                                    <td>
                                        <asp:TextBox ID="name" runat="server"  CssClass="txtbx" ></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Project Id</td>
                                    <td>
                                        <asp:TextBox ID="pid" runat="server"  CssClass="txtbx"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Project Title</td>
                                    <td>
                                        <asp:TextBox ID="ptitle" runat="server" CssClass="txtbx"></asp:TextBox></td>
                                </tr>
                                

                                
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Deal Amount</td>
                                    <td>
                                        <asp:TextBox ID="pamount" runat="server" CssClass="txtbx"></asp:TextBox></td>
                                </tr>
                                <tr>

                                    <td>
                                        </br> 
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="10" align="center" class="auto-style3">
                                        </br>
                                        <asp:Button class="btn" ID="insert" runat="server" Text="DEAL PROJECT" OnClick="insert_Click" Width="300px"  BackColor="#d95757" ForeColor="White" />
                                        
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                   </div>

                            <!--End of application table-->

                    </div>
                </div>
            </div>
        </section>
        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; Tajmilur Rahman </br> 1807100</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </form>
</body>
</html>
