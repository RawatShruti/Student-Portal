<%@ Page Title="Student" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="M20_Student_Portal.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style6 {
            width: 222px;
        }
        .auto-style7 {
            width: 222px;
            height: 31px;
        }
        .auto-style8 {
            width: 1232px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" Text="Student" CssClass="Head"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only alphanumeric values allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Name" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:TextBox ID="TextBox2" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only alphabetes allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
                </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Date of Birth" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="Text" TextMode="Date" Width="202px"></asp:TextBox>
                    <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" CssClass="Text" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" CssClass="Text" />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Gender" Text="Other" CssClass="Text" Width="200px" />
                &nbsp;<asp:Label ID="Label24" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>&nbsp;</td>
                </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Course" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Text" Width="206px">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>BCA</asp:ListItem>
            <asp:ListItem>MCA</asp:ListItem>
            <asp:ListItem>BTech CS</asp:ListItem>
            <asp:ListItem>BTech IT</asp:ListItem>
            <asp:ListItem>BTech EE</asp:ListItem>
            <asp:ListItem>BTech BT</asp:ListItem>
            <asp:ListItem>BTech MT</asp:ListItem>
        </asp:DropDownList>
                    <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                </td>
                </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Roll No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:TextBox ID="TextBox8" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                </td>
                </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Address" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="Text" Width="201px"></asp:TextBox>
                    <asp:Label ID="Label20" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                </td>
                </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Contact No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                </td>
                </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Email ID" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:TextBox ID="TextBox5" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label22" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid ID" ForeColor="Red" ValidationExpression="^[a-zA-z0-9+_]+@banasthali.in+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Password" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="TextBox6" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label23" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid password." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9!@#$%^&amp;*]{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <center class="auto-style8"><asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" CssClass="Button" />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Data inserted successfully!" ForeColor="Green"></asp:Label>
</center>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SmartcardID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SmartcardID" HeaderText="SmartcardID" ReadOnly="True" SortExpression="SmartcardID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            </table>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [SmartcardID] = @SmartcardID" InsertCommand="INSERT INTO [Student] ([SmartcardID], [Name], [DOB], [Gender], [Course], [RollNo], [ContactNo], [Email], [Address], [Password]) VALUES (@SmartcardID, @Name, @DOB, @Gender, @Course, @RollNo, @ContactNo, @Email, @Address, @Password)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [Name] = @Name, [DOB] = @DOB, [Gender] = @Gender, [Course] = @Course, [RollNo] = @RollNo, [ContactNo] = @ContactNo, [Email] = @Email, [Address] = @Address, [Password] = @Password WHERE [SmartcardID] = @SmartcardID">
            <DeleteParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Course" Type="String" />
                <asp:Parameter Name="RollNo" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Course" Type="String" />
                <asp:Parameter Name="RollNo" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="SmartcardID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
