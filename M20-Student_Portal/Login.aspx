<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M20_Student_Portal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <!--Style Sheet-->
    <link rel="stylesheet" type="text/css" href="Assets/Style/Style.css" />
    <!-- Favicons -->
    <link href="../Assets/image/BV Logo.png" rel="icon" />
    <link href="../Assets/image/BV Logo.png" rel="apple-touch-icon">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="LoginBanner">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" ImageUrl="~/Assets/image/BV Logo.png" Width="150px"/>
                <asp:Label ID="Label5" runat="server" Font-Size="80px" Text="Student Portal" CssClass="LoginHeader" Height="90px"></asp:Label>
            </div>
            <table style="width:100%;">
                <tr>
                    <td colspan="4">
                        <center><asp:Label ID="Label1" runat="server" Text="Login" CssClass="Head"></asp:Label>
                            <br />
                        </center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                    </td>
                    <td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            
                    </td>
                    <td rowspan="4">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/image/Login.svg" Height="300px" Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Password" CssClass="Lable"></asp:Label>
                    </td>
                    <td class="auto-style1">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="Text" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="You are?" CssClass="Lable"></asp:Label>
                    </td>
                    <td class="auto-style1">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Text" Width="308px">
                <asp:ListItem Value="0">---Select---</asp:ListItem>
                <asp:ListItem Value="1">Admin</asp:ListItem>
                <asp:ListItem Value="3">Student</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td class="auto-style3">
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select your account type." ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <center><asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" CssClass="Button" /></center>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
