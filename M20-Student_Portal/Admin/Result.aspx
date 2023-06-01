<%@ Page Title="Result" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="M20_Student_Portal.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 33px;
    }
    .auto-style2 {
            width: 439px;
        }
    .auto-style3 {
        height: 33px;
        width: 245px;
    }
        .auto-style6 {
            width: 449px;
        }
        .auto-style7 {
            width: 449px;
            height: 33px;
        }
        .auto-style11 {
            width: 329px;
        }
        .auto-style12 {
            width: 449px;
            height: 86px;
        }
        .auto-style13 {
            width: 439px;
            height: 86px;
        }
        .auto-style14 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    <center>
                        <asp:Label ID="Label13" runat="server" Text="Result" CssClass="Head"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                    <br />
                </td>
                <td class="auto-style13">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="Button" />
                </td>
                <td class="auto-style11">
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only alphanumeric values allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                    <br />
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Roll No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" CssClass="Text" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Name" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox10" runat="server" Enabled="False" CssClass="Text" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="AI" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox3" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="AI Lab" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Web D" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox5" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Web D Lab" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox6" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="CD" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox7" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label20" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="DCN" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox8" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Project Lab" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox9" runat="server" CssClass="Text" Width="200px" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label22" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
        <center><asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" CssClass="Button" /></center>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Max Marks" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox11" runat="server" Enabled="False" CssClass="Text" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Marks Obtained" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox12" runat="server" Enabled="False" CssClass="Text" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" Text="Percentage" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:TextBox ID="TextBox14" runat="server" Enabled="False" CssClass="Text" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style11"></td>
                </tr>
            <tr>
                <td colspan="3">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SmartcardID" DataSourceID="SqlDataSource1" CssClass="auto-style14" Width="124px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SmartcardID" HeaderText="SmartcardID" ReadOnly="True" SortExpression="SmartcardID" />
                <asp:BoundField DataField="AI" HeaderText="AI" SortExpression="AI" />
                <asp:BoundField DataField="AILab" HeaderText="AILab" SortExpression="AILab" />
                <asp:BoundField DataField="WebD" HeaderText="WebD" SortExpression="WebD" />
                <asp:BoundField DataField="WebDLab" HeaderText="WebDLab" SortExpression="WebDLab" />
                <asp:BoundField DataField="CD" HeaderText="CD" SortExpression="CD" />
                <asp:BoundField DataField="DCN" HeaderText="DCN" SortExpression="DCN" />
                <asp:BoundField DataField="ProjectLab" HeaderText="ProjectLab" SortExpression="ProjectLab" />
                <asp:BoundField DataField="MaxMarks" HeaderText="MaxMarks" SortExpression="MaxMarks" />
                <asp:BoundField DataField="Obtained" HeaderText="Obtained" SortExpression="Obtained" />
                <asp:BoundField DataField="Percentage" HeaderText="Percentage" SortExpression="Percentage" />
            </Columns>
        </asp:GridView>
                </td>
                </tr>
        </table>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Result] WHERE [SmartcardID] = @SmartcardID" InsertCommand="INSERT INTO [Result] ([SmartcardID], [AI], [AILab], [WebD], [WebDLab], [CD], [DCN], [ProjectLab], [MaxMarks], [Obtained], [Percentage]) VALUES (@SmartcardID, @AI, @AILab, @WebD, @WebDLab, @CD, @DCN, @ProjectLab, @MaxMarks, @Obtained, @Percentage)" SelectCommand="SELECT * FROM [Result]" UpdateCommand="UPDATE [Result] SET [AI] = @AI, [AILab] = @AILab, [WebD] = @WebD, [WebDLab] = @WebDLab, [CD] = @CD, [DCN] = @DCN, [ProjectLab] = @ProjectLab, [MaxMarks] = @MaxMarks, [Obtained] = @Obtained, [Percentage] = @Percentage WHERE [SmartcardID] = @SmartcardID">
            <DeleteParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
                <asp:Parameter Name="AI" Type="Decimal" />
                <asp:Parameter Name="AILab" Type="Decimal" />
                <asp:Parameter Name="WebD" Type="Decimal" />
                <asp:Parameter Name="WebDLab" Type="Decimal" />
                <asp:Parameter Name="CD" Type="Decimal" />
                <asp:Parameter Name="DCN" Type="Decimal" />
                <asp:Parameter Name="ProjectLab" Type="Decimal" />
                <asp:Parameter Name="MaxMarks" Type="Decimal" />
                <asp:Parameter Name="Obtained" Type="Decimal" />
                <asp:Parameter Name="Percentage" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AI" Type="Decimal" />
                <asp:Parameter Name="AILab" Type="Decimal" />
                <asp:Parameter Name="WebD" Type="Decimal" />
                <asp:Parameter Name="WebDLab" Type="Decimal" />
                <asp:Parameter Name="CD" Type="Decimal" />
                <asp:Parameter Name="DCN" Type="Decimal" />
                <asp:Parameter Name="ProjectLab" Type="Decimal" />
                <asp:Parameter Name="MaxMarks" Type="Decimal" />
                <asp:Parameter Name="Obtained" Type="Decimal" />
                <asp:Parameter Name="Percentage" Type="Decimal" />
                <asp:Parameter Name="SmartcardID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
