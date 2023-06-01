<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="M20_Student_Portal.Student.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 447px;
        }
        .auto-style3 {
            width: 64px;
        }
        .auto-style4 {
            width: 492px;
            height: 35px;
        }
        .auto-style5 {
            height: 35px;
            width: 111px;
        }
        .auto-style6 {
            width: 64px;
            height: 35px;
        }
        .auto-style7 {
            width: 224px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style10 {
            width: 447px;
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="4">
                    <center>
                        <asp:Label ID="Label31" runat="server" CssClass="Head" Text="Forgot Password"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="SmartcardID" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td rowspan="4">
                    <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl="~/Assets/image/Forgot Password.jpg" Width="400px" CssClass="auto-style8" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="New Password" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox2" runat="server" CssClass="Text" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style3">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Confirm Password" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="Text" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style6">
        <!--><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password mismatch." ForeColor="Red"></asp:CompareValidator>-->
                </td>
            </tr>
            <tr>
                <td colspan="3">
        <center><asp:Button ID="Button1" runat="server" Text="Change" OnClick="Button1_Click" CssClass="Button" ForeColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="Button" ForeColor="White" />
            <br />
        <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label></center>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
