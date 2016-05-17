<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="attendance" Codebehind="attendance.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Add Attendance</p>
<table class="style1">
    <tr>
        <td>
            Attendance ID(Enter Unique id)</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Generate Random Id" 
                onclick="Button2_Click" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Numbers only" ForeColor="Red" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Student Id</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Class Id</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Month</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>JAN</asp:ListItem>
                <asp:ListItem>FEB</asp:ListItem>
                <asp:ListItem>MAR</asp:ListItem>
                <asp:ListItem>APR</asp:ListItem>
                <asp:ListItem>MAY</asp:ListItem>
                <asp:ListItem>JUNE</asp:ListItem>
                <asp:ListItem>JULY</asp:ListItem>
                <asp:ListItem>AUG</asp:ListItem>
                <asp:ListItem>SEPT</asp:ListItem>
                <asp:ListItem>OCT</asp:ListItem>
                <asp:ListItem>NOV</asp:ListItem>
                <asp:ListItem>DEC</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Date</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Status</td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem>Absent</asp:ListItem>
                <asp:ListItem>Present</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Add Attendance" 
                onclick="Button1_Click" />
        </td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

