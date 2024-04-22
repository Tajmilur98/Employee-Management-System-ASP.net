<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageAdminEmp.aspx.cs" Inherits="Home100page.pageAdminEmp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Manage Employee</title>
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
        .auto-style3 {
            font-weight: 700;
             font-size: medium; 
             color: #FFFFFF; 
             margin-top: 10px; 
             margin-left: 0px;
             align-content:center;
             
        }

        .auto-style4 {
            width: 186px;
            color:white;
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
                        <li class="nav-item"><a class="nav-link" href="#page-top">Manage Employee</a></li>
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

                        <!--Data-->
                        <div class="auto-style1 justify-content-center">
                            <h2 class="float-lg-center text-bold text-white" style="width:530px"><u>MANAGE SALARY AND BONUS</u></h2>
                            <table style="width:530px">
                                <tr>
                                    <td style="text-align: Left" class="text-white">Employee Id </td>
                                    <td>
                                        <asp:TextBox ID="e_id" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Name </td>
                                    <td>
                                        <asp:TextBox ID="E_name" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Post</td>
                                    <td>
                                        <asp:TextBox ID="post" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Salary</td>
                                    <td>
                                        <asp:TextBox ID="salary" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Issue Date</td>
                                    <td>
                                        <asp:TextBox ID="S_month" CssClass="txtbx" runat="server"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="cal1" PopupButtonID="Imbtn1" runat="server" TargetControlID="S_month"
                                            Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class="text-white p10" >Receive Date</td>
                                    <td>
                                        <asp:TextBox ID="R_date" CssClass="txtbx" runat="server"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" PopupButtonID="Imbtn1" runat="server" TargetControlID="R_date"
                                            Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Bonus</td>
                                    <td>
                                        <asp:TextBox ID="bonus" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>

                                    <td></td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class="text-white">Enter ID for Update / Delete</td>
                                    <td>
                                        <asp:TextBox ID="idd" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="10" align="center" class="auto-style3">
                                        <asp:Button class="btn" ID="Button1" runat="server" Text="Compansate" OnClick="Button1_Click"  BackColor="#458a64" ForeColor="White"  />
                                        <asp:Button class="btn" ID="Button2" runat="server" Text="Remove" OnClick="Button2_Click"  BackColor="#e36052" ForeColor="White" />
                                        <asp:Button class="btn" ID="Button3" runat="server" Text="Recast" OnClick="Button3_Click"  BackColor="#d1ad5e" ForeColor="White" />


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
                            <asp:GridView ID="GridView1" runat="server" style="background-color:burlywood; text-align:center">
                                <HeaderStyle BackColor="#993333" BorderColor="#FFCC99" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" />
                                <RowStyle BorderColor="White" BorderWidth="3px" />
                            </asp:GridView>
                        </div>
                        <!--End data-->
                    </div>
            </div>
        </header>

         <!-- Managements-->
        <section class="projects-section bg-black">
            <div class="container px-4 px-lg-5">
                <!-- Leave Manage -->
                <div class="row gx-0 mb-4 mb-lg-5 align-items-center">
                    <div class="col-xl-6 col-lg-5">

                        <h3 class="float-lg-center text-bold text-center text-white" style="width:530px"> REQUESTED LEAVE </h3> <br/>
                        <asp:GridView  ID="GridView2" runat="server" style="background-color:burlywood; margin-right:40px; text-align:center " AllowSorting="True" BorderWidth="2px">
                            <HeaderStyle BackColor="#993333" BorderColor="#FFCC99" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" />
                                <RowStyle BorderColor="White" BorderWidth="3px" />
                        </asp:GridView>

                    </div>
                    <div class="col-xl-6 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            
                            <h2 class="float-lg-center text-bold text-white" style="width:530px"> MANAGE LEAVE REQUEST </h2> <br/>
                            <table style="width:530px">
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Employee Id </td>
                                    <td>
                                        <asp:TextBox ID="lempid" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Name </td>
                                    <td>
                                        <asp:TextBox ID="lname" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Post</td>
                                    <td>
                                        <asp:TextBox ID="lpost" runat="server"></asp:TextBox></td>
                                </tr>
                                
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">From</td>
                                    <td>
                                        <asp:TextBox ID="from" runat="server"></asp:TextBox>

                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white p10" >To</td>
                                    <td>
                                        <asp:TextBox ID="to" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Reason</td>
                                    <td>
                                        <asp:TextBox ID="reason" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>

                                    <td></td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Enter ID To Issue Leave</td>
                                    <td>
                                        <asp:TextBox ID="issueid" Type="number" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="10" align="center" class="auto-style3">
                                        <br />
                                        <asp:Button class="btn" ID="btnIssue" runat="server" Text="Issue Leave" OnClick="btnIssue_Click"  BackColor="#d1ad5e" ForeColor="White"  />
                                        <asp:Button class="btn" ID="btnConf" runat="server" Text="Confirm" OnClick="btnConf_Click"  BackColor="#458a64" ForeColor="White" />
                                        <asp:Button class="btn" ID="btnRej" runat="server" Text="Reject" OnClick="btnRej_Click"  BackColor="#e36052" ForeColor="White" />
      


                                    </td>
                                </tr>
                            </table>
                        </div>
                        </div>
                </div>
                <!-- Project One Row-->
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <div class="col-lg-6">
                        </br>
                        </br>
                        </br>
                        <h3 class="float-lg-center text-bold text-center text-white" style="width:530px">ASSIGNED JOBS</h3> <br />

                        <asp:GridView  ID="GridView3" runat="server" style="background-color:burlywood; text-align:center ">
                            <HeaderStyle BackColor="#993333" BorderColor="#FFCC99" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" />
                                <RowStyle BorderColor="White" BorderWidth="3px" />
                        </asp:GridView>
                    </div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                     <div class="featured-text text-center text-lg-left">
                            
                            <h2 class="float-lg-center text-bold text-white">ASSIGN JOBS TO EMPLOYEES</h2> <br />

                            <table style="width:530px">
                                <tr>
                                    <td style="text-align: Left" class="auto-style4">Employee Id </td>
                                    <td>
                                        <asp:TextBox ID="jempid" CssClass="txtbx" runat="server" Width="180px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="auto-style4">Department</td>
                                    <td>
                                        <asp:TextBox ID="dept" CssClass="txtbx" runat="server" Width="180px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="auto-style4">Job Title</td>
                                    <td>
                                        <asp:TextBox ID="jobtitle" CssClass="txtbx" runat="server" Width="180px"></asp:TextBox></td>
                                </tr>
                                
                                <tr>
                                    <td style="text-align: Left" class="auto-style4">Project Id</td>
                                    <td>
                                        <asp:TextBox ID="proId" CssClass="txtbx" runat="server" Width="180px"></asp:TextBox>

                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class="auto-style4" >Assign Date</td>
                                    <td>
                                        <asp:TextBox ID="asdate" CssClass="txtbx" runat="server" Width="180px"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="asdate_CalendarExtender" runat="server" BehaviorID="asdate_CalendarExtender" TargetControlID="asdate" Format="dd/MM/yyyy" />
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="auto-style4">Dead Line</td>
                                    <td>
                                        <asp:TextBox ID="fndate" CssClass="txtbx" runat="server" Width="180px"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="fndate_CalendarExtender" runat="server" BehaviorID="fndate_CalendarExtender" TargetControlID="fndate" Format="dd/MM/yyyy" />
                                    </td>
                                
                                </tr>
                                <tr>

                                    <td class="auto-style4"></td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class="auto-style4">Status</td>
                                    <td>
                                        <asp:TextBox ID="status" CssClass="txtbx" runat="server" Width="180px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="10"  class="auto-style3">
                                        <br />
                                        <asp:Button class="btn" ID="assign" style="margin-left:5px" runat="server" Text="Assign" OnClick="btnAssign_Click"  BackColor="#458a64" ForeColor="White"  />
                                        <asp:Button class="btn" ID="update" runat="server" Text="Update" OnClick="btnUpdate_Click"  BackColor="#d1ad5e" ForeColor="White" />
                                        <asp:Button class="btn" ID="deljob" runat="server" Text="Dismiss" OnClick="btnDelJob_Click"  BackColor="#e36052" ForeColor="White" />


                                    </td>
                                </tr>
                            </table>
                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                </br>
                </br>
                </br>
                <!-- Project Two Row-->
                <div class="row gx-0 justify-content-center">
                    <div class="col-lg-6 justify-content-center">
                        </br>
                        </br>
                        </br>
                        <h3 class="float-lg-center text-bold text-center text-white" style="width:530px"><u>Preformance Schedule</u></h3>
                                     <asp:GridView  ID="GridView4" runat="server" style="background-color:burlywood; margin-left:200px; text-align:center ">
                                         <HeaderStyle BackColor="#993333" BorderColor="#FFCC99" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" />
                                <RowStyle BorderColor="White" BorderWidth="3px" />
                                     </asp:GridView>
                    </div>


                    <div class="col-lg-6 order-lg-first">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-right">
                                    <h2 class="float-lg-center text-bold text-white"><u>PERFORMANCE ANALYSYS</u></h2>
                            <table style="width:530px">
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Enter Min-Attendance</td>
                                    <td>
                                        <asp:TextBox ID="attendance" runat="server" Width="180px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Enter Min-Overtime</td>
                                    <td>
                                        <asp:TextBox ID="overtime" runat="server" Width="180px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Enter Min-Experience Year</td>
                                    <td>
                                        <asp:TextBox ID="experience" runat="server" Width="180px"></asp:TextBox></td>
                                </tr>
                                
                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white">Enter Min-Project Done</td>
                                    <td>
                                        <asp:TextBox ID="doneproject" runat="server" Width="180px"></asp:TextBox>

                                    </td>
                                </tr>

                                <tr>
                                    <td style="text-align: Left" class="bg-dark text-white p10" >Enter Max-Leaves </td>
                                    <td>
                                        <asp:TextBox ID="totleaves" runat="server" Width="180px"></asp:TextBox>
                                        
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td colspan="10" align="center" class="auto-style3">
                                        <asp:Button class="btn" ID="search" runat="server" Text="Search" OnClick="btnSrc_Click"  BackColor="#330000" ForeColor="White"/>

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
        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; Tajmilur Rahman </br>1807100 </div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

    </form>

</body>
</html>
