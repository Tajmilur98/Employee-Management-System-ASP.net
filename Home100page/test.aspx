<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Home100page.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        table{
            border: 2px;
            width:500px;
        }
        td{
            border:2px solid black;
            text-align:center;
        }
        th{
            border:2px solid black;
            text-align:center;
        }
        .txtbx {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border:2px solid black">
                <tr>
                    <th colspan="2">Telephone</th> <th>Grade</th> <th>students</th>
                   
                </tr>
                <tr>
                     <td>1234</td> <td>5678</td> <td>A+</td> <td>Alex</td>
                 </tr>
                <tr>
                     <td rowspan="2">MSE</td> <td rowspan="2"style="background-color:blue">ME</td> <td>EDGE</td> <td rowspan="3">EEE</td>
                 </tr>
                <tr>
                     <td>Flag</td>
                 </tr>
                <tr>
                     <td >A</td> <td>C</td> <td>G</td> 
                 </tr>
                <tr>
                     <td >B</td> <td colspan="2" style="background-color:green">CSE</td> <td>KUET</td>
                 </tr>
            </table>

            <!--2---->


            <h4>Students:</h4>
            <table style="width:530px">
                                <tr>
                                    <td style="text-align: Left" class="text-white"> Id </td>
                                    <td>
                                        <asp:TextBox ID="id" CssClass="txtbx" runat="server" Width="180px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Name </td>
                                    <td>
                                        <asp:TextBox ID="name" CssClass="txtbx" runat="server" Width="183px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Dept</td>
                                    <td>
                                        <asp:TextBox ID="dept" CssClass="txtbx" runat="server" Width="184px"></asp:TextBox></td>
                                </tr>
                <tr>
                                    <td colspan="2" align="center" class="auto-style3">
                                        <asp:Button class="btn" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"  BackColor="#458a64" ForeColor="White"  />
                                        

                                    </td>
                               


            </table>

             <h4>Salary:</h4>
            <table style="width:530px">
                                <tr>
                                    <td style="text-align: Left" class="text-white"> S-Id </td>
                                    <td>
                                        <asp:TextBox ID="sal_id" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Amount </td>
                                    <td>
                                        <asp:TextBox ID="amount" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="text-align: Left" class="text-white">Stu_id</td>
                                    <td>
                                        <asp:TextBox ID="stu_id" CssClass="txtbx" runat="server"></asp:TextBox></td>
                                </tr>
                <td colspan="2" align="center" class="auto-style3">
                                        <asp:Button class="btn" ID="Button2" runat="server" Text="Insert" OnClick="Button2_Click"  BackColor="#458a64" ForeColor="White"  />
                                        

                                    </td>
                               


            </table>




        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
