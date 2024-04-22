<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageAdminProject.aspx.cs" Inherits="Home100page.pageAdminProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Manage Projects</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
   
    <style type="text/css">

        .txtbx{
               
               border:1px solid black;
               border-radius:6px;
               width:300px;
           }
        
        body {
            background-size:cover;
        }
        
        .auto-style1 {
            text-align: center;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 630px;
            height: 420px;
            padding: 80px 55px;
            box-sizing: border-box;
            background: rgba(0, 0, 0,0);
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            font-weight: 700;
             font-size: medium; 
             color: #FFFFFF; 
             margin-top: 10px; 
             margin-left: 0px;
             
        }

    </style>
</head>
<body id="page-top">
    <form id="form1" runat="server">
       <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand text-bold" href="pageHome.aspx">Pearson</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="pageAdminHome.aspx">Admin-Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="pageAdminEmp.aspx">Manage Employee</a></li>
                        <li class="nav-item"><a class="nav-link " href="pageAdminClient.aspx">Manage Clients</a></li>
                        <li class="nav-item"><a class="nav-link" href="pageAdminCandidate.aspx">Manage Candidates</a></li>
                        <li class="nav-item"><a class="nav-link" href="#page-top">Projects</a></li>
                         <li class="nav-item">
                            <asp:Label ID="Label1" class="nav-link" runat="server" Text="Welcome "></asp:Label>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

         <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                <div class="d-flex justify-content-center">

                        <!--Data-->
                        <div class="auto-style1 justify-content-center">
                            <h2 class="float-lg-center text-bold text-white" style="width:530px; padding-left:50px"><u>MANAGE PROJECTS</u></h2>
                            <br />
                            <table style="width:530px">
                                
                                <tr>
                                    <td style="text-align: Left" class="text-white">Project Id</td>
                                    <td>
                                        <asp:TextBox ID="pid" class="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Project Title</td>
                                    <td>
                                        <asp:TextBox ID="ptitle" class="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                
                                <tr>
                                    <td style="text-align: Left" class="text-white">Project Price</td>
                                    <td>
                                        <asp:TextBox ID="pprice" class="txtbx" runat="server"></asp:TextBox></td>
                                </tr>

                                <tr>

                                    <td></td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class=" text-white">Enter ID for Reform / Close</td>
                                    <td>
                                        <asp:TextBox ID="idd" class="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="10" align="center" class="auto-style3">
                                        <br/>
                                        <asp:Button class="btn" ID="Button1" runat="server" Text="Launch" OnClick="Button1_Click"  BackColor="#458a64" ForeColor="White"  />
                                        <asp:Button class="btn" ID="Button2" runat="server" Text="Close" OnClick="Button2_Click"  BackColor="#e36052" ForeColor="White" />
                                        <asp:Button class="btn" ID="Button3" runat="server" Text="Reform" OnClick="Button3_Click"  BackColor="#d1ad5e" ForeColor="White" />


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
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" style="background-color:burlywood; text-align:center" Width="534px">
                                <HeaderStyle BackColor="#993333" BorderColor="#FFCC99" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" />
                                <RowStyle BorderColor="White" BorderWidth="3px" />
                            </asp:GridView>
                        </div>
                        <!--End data-->
                    </div>
            </div>
        </header>

        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; Tajmilur Rahman </br> 1807100</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

    </form>
</body>
</html>
