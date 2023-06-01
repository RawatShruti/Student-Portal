<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="M20_Student_Portal.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        height: 31px;
    }
    .auto-style3 {
        height: 255px;
    }
        .auto-style6 {
            width: 76px;
            height: 52px;
        }
        .auto-style7 {
            height: 35px;
        }
        .auto-style8 {
            width: 276px;
        }
        .auto-style9 {
            height: 31px;
            width: 276px;
        }
        .auto-style10 {
            width: 276px;
            height: 52px;
        }
        .auto-style11 {
            height: 35px;
            width: 276px;
        }
        .auto-style12 {
            width: 321px;
        }
        .auto-style13 {
            height: 31px;
            width: 321px;
        }
        .auto-style14 {
            height: 35px;
            width: 321px;
        }
        .auto-style15 {
            width: 276px;
            height: 54px;
        }
        .auto-style16 {
            width: 321px;
            height: 54px;
        }
        .auto-style17 {
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Label ID="Label11" runat="server" Text="Admin" CssClass="Head"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style12">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only alphanumeric values allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Name" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style12">
        <asp:TextBox ID="TextBox2" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
        <asp:Label ID="Label13" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only alphabetes allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Date of Birth" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style16">
        <asp:TextBox ID="TextBox7" runat="server" CssClass="Text" TextMode="Date" Width="200px"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style17">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style13">
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" CssClass="Text" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" CssClass="Text" />
                    <br />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Gender" Text="Other" CssClass="Text" Width="70px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Date of Joining" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style12">
        <asp:TextBox ID="TextBox8" runat="server" CssClass="Text" TextMode="Date" Width="200px"></asp:TextBox>
        <asp:Label ID="Label16" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style6">
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Address" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style12">
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="Text" Width="200px"></asp:TextBox>
        <asp:Label ID="Label17" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Contact No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style12">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
        <asp:Label ID="Label18" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Email ID" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style14">
        <asp:TextBox ID="TextBox5" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
        <asp:Label ID="Label19" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid ID" ForeColor="Red" ValidationExpression="^[a-zA-z0-9+_]+@banasthali.in+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Password" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style12">
        <asp:TextBox ID="TextBox6" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
        <asp:Label ID="Label20" runat="server" Text="*" CssClass="Lable" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid password." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9!@#$%^&amp;*]{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" CssClass="Button" />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Data inserted successfully!" ForeColor="Green"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="3">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SmartcardID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SmartcardID" HeaderText="SmartcardID" ReadOnly="True" SortExpression="SmartcardID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Admin] WHERE [SmartcardID] = @SmartcardID" InsertCommand="INSERT INTO [Admin] ([SmartcardID], [Name], [DOB], [Gender], [DOJ], [Address], [ContactNo], [Email], [Password]) VALUES (@SmartcardID, @Name, @DOB, @Gender, @DOJ, @Address, @ContactNo, @Email, @Password)" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [Name] = @Name, [DOB] = @DOB, [Gender] = @Gender, [DOJ] = @DOJ, [Address] = @Address, [ContactNo] = @ContactNo, [Email] = @Email, [Password] = @Password WHERE [SmartcardID] = @SmartcardID">
            <DeleteParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter DbType="Date" Name="DOJ" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter DbType="Date" Name="DOJ" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="SmartcardID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div>
    </div>
</asp:Content>
