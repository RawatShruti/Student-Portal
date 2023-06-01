<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMst.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="M20_Student_Portal.Student.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 485px;
        }
        .auto-style3 {
            height: 29px;
            width: 485px;
        }
        .auto-style4 {
            width: 384px;
        }
        .auto-style5 {
            height: 29px;
            width: 384px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 384px;
        }
        .auto-style9 {
            height: 94px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Label ID="Label31" runat="server" CssClass="Head" Text="Profile"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" Width="300px" Enabled="False"></asp:TextBox>
                </td>
                <td rowspan="11">
                    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Assets/image/Profile.png" Width="300px" CssClass="auto-style6" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Name" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox2" runat="server" CssClass="Text" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Date of Birth" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox9" runat="server" CssClass="Text" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" Enabled="False" CssClass="Text" />
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" Enabled="False" CssClass="Text" />
                    &nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Gender" Text="Other" Enabled="False" CssClass="Text" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Course" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False" CssClass="Text" Width="308px">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>BCA</asp:ListItem>
            <asp:ListItem>MCA</asp:ListItem>
            <asp:ListItem>BTech CS</asp:ListItem>
            <asp:ListItem>BTech IT</asp:ListItem>
            <asp:ListItem>BTech EE</asp:ListItem>
            <asp:ListItem>BTech BT</asp:ListItem>
            <asp:ListItem>BTech MT</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Roll No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox8" runat="server" CssClass="Text" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Address" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="Text" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Contact No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="Text" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Email ID" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox5" runat="server" CssClass="Text" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Password" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox6" runat="server" CssClass="Text" Width="300px" Enabled="False" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style9">
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" CssClass="Button" />
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" Visible="False" CssClass="Button" />
                        <asp:Button ID="Button2" runat="server" Text="Change Password" OnClick="Button2_Click" Visible="False" CssClass="Button" />
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label12" runat="server" Text="Updated successfully!" ForeColor="Green"></asp:Label>
        <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
