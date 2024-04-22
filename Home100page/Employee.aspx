<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Home100page.Employee" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Employee</title>
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
               }
           

       </style>
</head>
   <body id="page-top" class="bg-black">
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
                        <li class="nav-item">
                            <asp:Label ID="Label1" CssClass="nav-link" runat="server" Text="Welcome "></asp:Label>
                        </li>
                        <li class="nav-item">
                            <asp:Button ID="Button1" CssClass="mt-4 bg-opacity-10" height="30px" runat="server" Text="LogOut" OnClick="Button1_Click" />
                        </li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Projects-->
        <section class="projects-section bg-black" id="projects">
            <div class="container px-4 px-lg-5">
                <!-- Featured Project Row-->
                
                <!-- Project One Row-->
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <div class="col-lg-6"><img class="img-fluid" src="assets/img/dataanalysis.jpeg" alt="..." /></div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                    <h2 class="float-lg-center text-bold text-white">MANAGE YOUR PROFILE</h2></br>
                            <table style="width:530px">
                                <tr>
                                    <td style="text-align: Left" class="text-white">Employee Id </td>
                                    <td>
                                        <asp:TextBox ID="pid" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Name</td>
                                    <td>
                                        <asp:TextBox ID="pname" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Department</td>
                                    <td>
                                        <asp:TextBox ID="pdept" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox></td>
                                </tr>
                                
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Address</td>
                                    <td>
                                        <asp:TextBox ID="padd" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Education</td>
                                    <td>
                                        <asp:TextBox ID="pedu" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox>

                                    </td>
                                </tr>
<tr>
                                    <td style="text-align: Left" class="text-white">Age</td>
                                    <td>
                                        <asp:TextBox ID="proage" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox>

                                    </td>
                                </tr>

                                
                                <tr>

                                    <td></td>
                                </tr>

                
                                <tr>
                                    <td colspan="10" align="center" class="auto-style3">
                                        </br>
                          
                                        <asp:Button class="btn" ID="update" runat="server" Text="Update" OnClick="btnUpdate_Click"  BackColor="#7171bf" ForeColor="White" />
                                    


                                    </td>
                                </tr>
                            </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Project Two Row-->
                <div class="row gx-0 justify-content-center">
                    <div class="col-lg-6 justify-content-end">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <img class="img-fluid" src="assets/img/leave1.jpg" alt="..." /></div>
                    <div class="col-lg-6 order-lg-first">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left justify-content-left">
                                   <h2 class="float-lg-center text-bold text-white" style="margin-left:50px"> APPLY FOR A LEAVE </h2>
                                    <br/>
                            <table style="width:537px">
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Employee Id </td>
                                    <td>
                                        <asp:TextBox ID="lempid" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Name</td>
                                    <td>
                                        <asp:TextBox ID="lname" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">Post</td>
                                    <td>
                                        <asp:TextBox ID="post" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox></td>
                                </tr>
                                
                       

                                <tr>
                                    <td style="text-align: Left" class=" text-white p10" >From</td>
                                    <td>
                                        <asp:TextBox ID="from" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox>
                                       
                                        <ajaxToolkit:CalendarExtender ID="from_CalendarExtender" runat="server" BehaviorID="from_CalendarExtender" TargetControlID="from" />
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class=" text-white">To</td>
                                    <td>
                                        <asp:TextBox ID="to" CssClass="txtbx" runat="server" Width="300px"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="to_CalendarExtender" runat="server" BehaviorID="to_CalendarExtender" TargetControlID="to" />
                                    </td>
                                
                                </tr>
                                <tr>

                                    <td></td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class=" text-white">Reason</td>
                                    <td>
                                        <asp:TextBox ID="reason" CssClass="txtbx"  runat="server" Width="300px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="10" align="center" class="auto-style3">
                                        <br/>
                                        <asp:Button class="btn" ID="req" runat="server" Text="Request a Leave" OnClick="btnAssign_Click"  BackColor="#b80404" ForeColor="White"  />
                                    
                                    </td>
                                </tr>

                                <tr >
                                   <td  align="center" class="auto-style3">
                                        <br/><br/>
                                       
                                        <asp:Button class="txtbx" ID="seestt" runat="server" Text="Leave Status" OnClick="btnStat_Click"  BackColor="#00CC99" ForeColor="White" Width="168px"  />
                                    </td>
                                    <td>
                                        <br/><br/>
                                        <asp:TextBox ID="stat" CssClass="txtbx  text-center text-capitalize text-white"  runat="server" Width="275px" Height="28px" BackColor="#666699"></asp:TextBox>

                                    </td>
                                </tr>
                            </table>
                                     <table>
                                <tr>
                                    <td>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                    </td>
                                </tr>
                            </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; Tajmilur Rahman </br> 1807100</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        </form>
</body>
</html>
