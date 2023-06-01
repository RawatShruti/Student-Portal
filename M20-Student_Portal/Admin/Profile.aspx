<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="M20_Student_Portal.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 255px;
        }
        .auto-style3 {
            width: 401px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Label ID="Label11" runat="server" Text="Profile" CssClass="Head"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" Enabled="False" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label3" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox9" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" Enabled="False" Width="80px" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" Enabled="False" Width="90px" />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Gender" Text="Other" Enabled="False" Width="80px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label5" runat="server" Text="Date of Joining"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox8" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" TextMode="MultiLine" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label7" runat="server" Text="Contact No"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label8" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox5" runat="server" Enabled="False" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox6" runat="server" Enabled="False" TextMode="Password" CssClass="Text" Width="300px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" CssClass="Button" />
                        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" Visible="False" CssClass="Button" />
                        <asp:Button ID="Button2" runat="server" Text="Change Password" OnClick="Button2_Click" Visible="False" CssClass="Button" />
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Label ID="Label12" runat="server" Text="Updated successfully!" ForeColor="Green"></asp:Label>
                        <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label>

                    </center>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
