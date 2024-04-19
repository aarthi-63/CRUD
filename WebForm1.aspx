<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CRUD.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
        .auto-style2 {
            width: 161px;
        }
        .auto-style3 {
            width: 161px;
            height: 54px;
        }
        .auto-style4 {
            height: 54px;
        }
        .auto-style5 {
            width: 161px;
            height: 31px;
        }
        .auto-style6 {
            height: 31px;
        }
                
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <table class="auto-style1">
                <tr>
                    <td colspan="2" style="font-family: 'Lucida Calligraphy'; font-size: x-large; font-weight: bold; font-style: normal; color: #CC0099; text-align: center;">DATA COLLECTION - EMPLOYEE DETAILS</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color: #CCCCFF; text-align: left; padding-left: 400px; clip: rect(auto, auto, auto, auto);">
                        <asp:Label ID="Label1" runat="server" BackColor="#CCCCFF" Font-Bold="True" Font-Italic="False" Font-Names="Gabriola" Font-Size="Large" ForeColor="#660066" Text="Employee ID"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="id" runat="server" BackColor="White" BorderColor="#660066" BorderWidth="2px" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="50px" Width="400px"></asp:TextBox>
                    &nbsp;<asp:Button ID="Button4" runat="server" BackColor="#CCCCFF" BorderColor="#660066" BorderWidth="1px" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="42px" OnClick="Button4_Click" Text="GET" Width="68px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="background-color: #CCCCFF; padding-left: 400px;">
                        <asp:Label ID="Label2" runat="server" BackColor="#CCCCFF" Font-Bold="True" Font-Italic="False" Font-Names="Gabriola" Font-Size="Large" ForeColor="#660066" Text="Employee Name"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="name" runat="server" BackColor="White" BorderColor="#660066" BorderWidth="2px" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="50px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #CCCCFF; padding-left: 400px;">
                        <asp:Label ID="Label3" runat="server" BackColor="#CCCCFF" Font-Bold="True" Font-Italic="False" Font-Names="Gabriola" Font-Size="Large" ForeColor="#660066" Text="Employee City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="city" runat="server" BackColor="White" BorderColor="#660066" BorderWidth="2px" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="50px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #CCCCFF; padding-left: 400px;">
                        <asp:Label ID="Label4" runat="server" BackColor="#CCCCFF" Font-Bold="True" Font-Italic="False" Font-Names="Gabriola" Font-Size="Large" ForeColor="#660066" Text="Employee Sex"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderColor="#660066" BorderStyle="Solid" BorderWidth="2px" Font-Bold="False" Font-Names="Albany WT" ForeColor="#660066" RepeatDirection="Horizontal" Width="410px">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #CCCCFF; padding-left: 400px;">
                        <asp:Label ID="Label5" runat="server" BackColor="#CCCCFF" Font-Bold="True" Font-Italic="False" Font-Names="Gabriola" Font-Size="Large" ForeColor="#660066" Text="Contact No."></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="no" runat="server" BackColor="White" BorderColor="#660066" BorderWidth="2px" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="50px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #CCCCFF; padding-left: 400px;">
                        <asp:Label ID="Label6" runat="server" BackColor="#CCCCFF" Font-Bold="True" Font-Italic="False" Font-Names="Gabriola" Font-Size="Large" ForeColor="#660066" Text="Work Designation"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="94px" Width="408px">
                            <asp:ListItem>Marketing Manager</asp:ListItem>
                            <asp:ListItem>Intern</asp:ListItem>
                            <asp:ListItem>Product Manager</asp:ListItem>
                            <asp:ListItem>Supervisor</asp:ListItem>
                            <asp:ListItem>Packaging</asp:ListItem>
                            <asp:ListItem>Sales</asp:ListItem>
                            <asp:ListItem>Chief Information Officer</asp:ListItem>
                            <asp:ListItem>Business Analyst</asp:ListItem>
                            <asp:ListItem>Data Analyst</asp:ListItem>
                            <asp:ListItem>Team Lead</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                            <asp:ListItem>HR</asp:ListItem>
                            <asp:ListItem>Software Engineer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Font-Names="Consolas" ForeColor="Red" Height="52px" Width="508px"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="#CCCCFF" BorderColor="#660066" BorderWidth="1px" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="42px" OnClick="Button1_Click" Text="INSERT" Width="122px" />
                        <asp:Button ID="Button2" runat="server" BackColor="#CCCCFF" BorderColor="#660066" BorderWidth="1px" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="42px" OnClick="Button2_Click" Text="UPDATE" Width="122px" />
                        <asp:Button ID="Button3" runat="server" BackColor="#CCCCFF" BorderColor="#660066" BorderWidth="1px" Font-Bold="True" Font-Names="Albany WT" Font-Size="Medium" ForeColor="#660066" Height="42px" OnClick="Button3_Click" Text="DELETE" Width="122px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="1286px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
    
</body>
</html>
