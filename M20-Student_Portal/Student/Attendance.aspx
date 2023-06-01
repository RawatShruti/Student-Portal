<%@ Page Title="Attendance" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="M20_Student_Portal.Student.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


.Head {
    font-size: 60px;
    text-align: center;
}

    .auto-style1 {
        width: 100%;
        height: 255px;
    }

    .auto-style2 {
            width: 349px;
        }
    .auto-style3 {
            width: 515px;
        }

        .auto-style6 {
            width: 457px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label30" runat="server" Text="Percentage" Visible="False"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <center><asp:Label ID="Label31" runat="server" Text="Attendance" CssClass="Head"></asp:Label></center>
                 </td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
                <td rowspan="5">
                    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Assets/image/Attendance.png" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Total Working" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Absent" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label6" runat="server" Text="Present" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox5" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Perentage" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox6" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
