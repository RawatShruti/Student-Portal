<%@ Page Title="Password" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="M20_Student_Portal.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Label ID="Label11" runat="server" Text="Password" CssClass="Head"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server" Text="SmartcardID" CssClass="Lable"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" CssClass="Text"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" Text="New Password" CssClass="Lable"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="Text"></asp:TextBox>
                </td>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label3" runat="server" Text="Confirm Password" CssClass="Lable"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="Text"></asp:TextBox>
                </td>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password mismatch." ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Change" OnClick="Button1_Click" CssClass="Button" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="Button" />
                    </center>
                    <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
