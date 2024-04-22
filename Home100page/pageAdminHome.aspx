<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageAdminHome.aspx.cs" Inherits="Home100page.pageAdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Control Panel</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <form id="form1" runat="server">
       <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand text-bold" href="#page-top">Pearson</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#page-top">Admin-Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="pageAdminEmp.aspx">Manage Employee</a></li>
                        <li class="nav-item"><a class="nav-link" href="pageAdminClient.aspx">Manage Clients</a></li>
                        <li class="nav-item"><a class="nav-link" href="pageAdminCandidate.aspx">Manage Candidates</a></li>
                        <li class="nav-item"><a class="nav-link" href="pageAdminProject.aspx">Projects</a></li>
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
                    <div class="text-center">
                        <h1 class="mx-auto my-0 text-uppercase-white">Control Panel</h1>
                        <h2 class="text-white-50 mx-auto mt-2 mb-5"> We aspire to Dream, Create, Discover and Invent. </h2>
                 <!--       <a class="btn btn-danger" href="pageLogin.aspx">Get Started</a>   -->
                        <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Log Out" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </header>

         <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; Tajmilur Rahman </br>1807100 </div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </form>
</body>
</html>
