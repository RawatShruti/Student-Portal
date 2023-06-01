<%@ Page Title="Leave" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="M20_Student_Portal.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            width: 367px;
        }
        .auto-style3 {
            width: 103px;
        }
        .auto-style4 {
            width: 344px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="4">
                    <center>
                        <asp:Label ID="Label11" runat="server" Text="Leave" CssClass="Head"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text"></asp:TextBox>
                    <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" CssClass="Button" />
                </td>
                <td class="auto-style3">
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only alphanumeric values allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                    <br />
                </td>
                <td rowspan="9">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SmartcardID" DataSourceID="SqlDataSource1" CssClass="auto-style1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SmartcardID" HeaderText="SmartcardID" ReadOnly="True" SortExpression="SmartcardID" />
                <asp:BoundField DataField="Hostel" HeaderText="Hostel" SortExpression="Hostel" />
                <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
                <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
                <asp:BoundField DataField="To" HeaderText="To" SortExpression="To" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>

                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label2" runat="server" Text="Roll No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" CssClass="Text"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label10" runat="server" Text="Name" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox10" runat="server" Enabled="False" CssClass="Text"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label3" runat="server" Text="Hostel" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox3" runat="server" CssClass="Text"></asp:TextBox>
                    <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label4" runat="server" Text="Reason" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="Text"></asp:TextBox>
                    <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label5" runat="server" Text="From" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="Text" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label6" runat="server" Text="To" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="Text" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><asp:Label ID="Label7" runat="server" Text="Status" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Text">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Approved</asp:ListItem>
            <asp:ListItem>Pending</asp:ListItem>
            <asp:ListItem>Disapproved</asp:ListItem>
        </asp:DropDownList>
                    <asp:Label ID="Label20" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <center><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" CssClass="Button" />
</center>
                </td>
            </tr>
        </table>
    </div>
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Leave] WHERE [SmartcardID] = @SmartcardID" InsertCommand="INSERT INTO [Leave] ([SmartcardID], [Hostel], [Reason], [From], [To], [Status]) VALUES (@SmartcardID, @Hostel, @Reason, @From, @To, @Status)" SelectCommand="SELECT * FROM [Leave]" UpdateCommand="UPDATE [Leave] SET [Hostel] = @Hostel, [Reason] = @Reason, [From] = @From, [To] = @To, [Status] = @Status WHERE [SmartcardID] = @SmartcardID">
            <DeleteParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
                <asp:Parameter Name="Hostel" Type="String" />
                <asp:Parameter Name="Reason" Type="String" />
                <asp:Parameter DbType="Date" Name="From" />
                <asp:Parameter DbType="Date" Name="To" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Hostel" Type="String" />
                <asp:Parameter Name="Reason" Type="String" />
                <asp:Parameter DbType="Date" Name="From" />
                <asp:Parameter DbType="Date" Name="To" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="SmartcardID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
