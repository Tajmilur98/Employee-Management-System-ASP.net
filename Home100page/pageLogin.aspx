﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageLogin.aspx.cs" Inherits="Home100page.pageLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Log in</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 330px;
            height: 420px;
            padding: 80px 55px;
            box-sizing: border-box;
            background: rgba(0, 0, 0,0.3);
        }

        .auto-style2 {
        }

        .t1 {
            padding: 0 0px 20px;
            margin: 0;
            color: #330000;
            text-align: center;
            font-size: x-large;
            position: absolute;
            top: 40px;
            left: 82px;
            width: 155px;
        }

        .auto-style3 {
            text-align: right;
            color: #666666;
        }

        .auto-style4 {
            text-align: right;
            height: 23px;
            color: #666666;
        }

        .auto-style5 {
            height: 23px;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            height: 23px;
        }

        #HyperLink1 {
            text-decoration: none;
            color: #000000;
            font-size: medium;
            text-align: center;
            margin-left: 25px;
        }

        body {
            background-image:url('assets/img/login-back-image.jpg');
            background-size: cover;
        }

        .form1 {
        }

        .auto-style8 {
            text-align: left;
            height: 28px;
        }
        .auto-style9 {
            text-align: left;
            height: 43px;
        }
        .auto-style10 {
            height: 43px;
        }
        .auto-style11 {
            height: 28px;
        }
    </style>
</head>
<body style="text-align: left">
    <form id="form1" runat="server">
        <div class="auto-style1">

            <p class="t1">Login Page</p>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px" placeholder="Enter User Name" CssClass="auto-style6"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBoxPassword" runat="server" Width="180px" placeholder="Enter Password" CssClass="auto-style6" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Invalid Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-atyle6">
                        <asp:Button ID="Button_Login" runat="server" Text="Login" Style="font-weight: 700; font-size: medium; color: #FFFFFF; margin-top: 10px; margin-left: 0px;" Width="81px" BackColor="#330000" Height="25px" OnClick="Button_Login_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style9">

                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Keep me sign in           " ForeColor="White" />

                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style8" style="color:white">No account?<asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" NavigateUrl="~/pageReg.aspx" BorderStyle="None" Height="16px" Width="70px" ForeColor="White">Register</asp:HyperLink>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
