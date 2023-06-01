<%@ Page Title="Fees" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="M20_Student_Portal.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
            width: 201px;
        }
        .auto-style2 {
            height: 31px;
            width: 88px;
        }
        .auto-style3 {
            width: 216px;
        }
        .auto-style4 {
            height: 31px;
            width: 377px;
        }
        .auto-style5 {
            width: 377px;
        }
        .auto-style6 {
            width: 287px;
        }
        .auto-style8 {
            position: absolute;
            top: 50px;
            left: 470px;
            width: 288px;
        }
        .auto-style9 {
            height: 31px;
            width: 288px;
        }
        .auto-style10 {
            width: 88px;
        }
        .auto-style11 {
            width: 287px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="4">
                    <center>
                        <asp:Label ID="Label11" runat="server" Text="Fees" CssClass="Head"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style9">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <br />
        <center>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="Button"/></center>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only alphanumeric values allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td rowspan="8">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SmartcardID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SmartcardID" HeaderText="SmartcardID" ReadOnly="True" SortExpression="SmartcardID" />
                <asp:BoundField DataField="TotalFee" HeaderText="TotalFee" SortExpression="TotalFee" />
                <asp:BoundField DataField="PaidFee" HeaderText="PaidFee" SortExpression="PaidFee" />
                <asp:BoundField DataField="DueFee" HeaderText="DueFee" SortExpression="DueFee" />
            </Columns>
        </asp:GridView>

                </td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Roll No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style9">
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" CssClass="Text" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Name" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style9">
        <asp:TextBox ID="TextBox10" runat="server" Enabled="False" Width="200px" CssClass="Text"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Total" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style9">
        <asp:TextBox ID="TextBox3" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Paid" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style9">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <center><asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" CssClass="Button" /></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Due" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style9">
        <asp:TextBox ID="TextBox5" runat="server" CssClass="Text" Width="200px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </div>
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Fee] WHERE [SmartcardID] = @SmartcardID" InsertCommand="INSERT INTO [Fee] ([SmartcardID], [TotalFee], [PaidFee], [DueFee]) VALUES (@SmartcardID, @TotalFee, @PaidFee, @DueFee)" SelectCommand="SELECT * FROM [Fee]" UpdateCommand="UPDATE [Fee] SET [TotalFee] = @TotalFee, [PaidFee] = @PaidFee, [DueFee] = @DueFee WHERE [SmartcardID] = @SmartcardID">
            <DeleteParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
                <asp:Parameter Name="TotalFee" Type="Decimal" />
                <asp:Parameter Name="PaidFee" Type="Decimal" />
                <asp:Parameter Name="DueFee" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TotalFee" Type="Decimal" />
                <asp:Parameter Name="PaidFee" Type="Decimal" />
                <asp:Parameter Name="DueFee" Type="Decimal" />
                <asp:Parameter Name="SmartcardID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
