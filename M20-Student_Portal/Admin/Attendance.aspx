<%@ Page Title="Attendance" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="M20_Student_Portal.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 327px;
        }
        .auto-style8 {
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td colspan="4">
                    <center>
                        <asp:Label ID="Label11" runat="server" Text="Attendance" CssClass="Head"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Smartcard ID" CssClass="Lable"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style8">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="Text"></asp:TextBox>
                    <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Search" CssClass="Button" />
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only alphanumeric values allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td rowspan="8">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SmartcardID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SmartcardID" HeaderText="SmartcardID" ReadOnly="True" SortExpression="SmartcardID" />
                <asp:BoundField DataField="WorkingDays" HeaderText="WorkingDays" SortExpression="WorkingDays" />
                <asp:BoundField DataField="Absent" HeaderText="Absent" SortExpression="Absent" />
                <asp:BoundField DataField="Present" HeaderText="Present" SortExpression="Present" />
                <asp:BoundField DataField="Percentage" HeaderText="Percentage" SortExpression="Percentage" />
            </Columns>
        </asp:GridView>

                </td>
            </tr>
            <tr>
                <td class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Roll No" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style8">
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" CssClass="Text"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Name" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style8">
        <asp:TextBox ID="TextBox10" runat="server" Enabled="False" CssClass="Text"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Total Working" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style8">
        <asp:TextBox ID="TextBox3" runat="server" CssClass="Text" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Absent" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style8">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="Text" TextMode="Number"></asp:TextBox>
                    <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" CssClass="Button" />
                    </center>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Present" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style8">
        <asp:TextBox ID="TextBox5" runat="server" Enabled="False" CssClass="Text"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Perentage" CssClass="Lable"></asp:Label>
                </td>
                <td class="auto-style8">
        <asp:TextBox ID="TextBox6" runat="server" Enabled="False" CssClass="Text"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>
    </div>
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Attendance] WHERE [SmartcardID] = @SmartcardID" InsertCommand="INSERT INTO [Attendance] ([SmartcardID], [WorkingDays], [Absent], [Present], [Percentage]) VALUES (@SmartcardID, @WorkingDays, @Absent, @Present, @Percentage)" SelectCommand="SELECT * FROM [Attendance]" UpdateCommand="UPDATE [Attendance] SET [WorkingDays] = @WorkingDays, [Absent] = @Absent, [Present] = @Present, [Percentage] = @Percentage WHERE [SmartcardID] = @SmartcardID">
            <DeleteParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SmartcardID" Type="String" />
                <asp:Parameter Name="WorkingDays" Type="Int32" />
                <asp:Parameter Name="Absent" Type="Int32" />
                <asp:Parameter Name="Present" Type="Int32" />
                <asp:Parameter Name="Percentage" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="WorkingDays" Type="Int32" />
                <asp:Parameter Name="Absent" Type="Int32" />
                <asp:Parameter Name="Present" Type="Int32" />
                <asp:Parameter Name="Percentage" Type="Decimal" />
                <asp:Parameter Name="SmartcardID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
