<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="True" CodeBehind="student.aspx.cs" Inherits="student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 346px;
    }
       .style21
    {
        color:Red;
        width: 346px;
    }
        .auto-style1 {
            width: 346px;
            height: 24px;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            width: 346px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Add Student</p>
<p>&nbsp;</p>
<table class="style1">
    <tr>
        <td class="style2">
            Student Id (Enter Unique ID.)</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Generate Random ID" 
                onclick="Button2_Click" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter numbers Only" ForeColor="Red" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
        &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            First Name</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            Last Name</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Email</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style21">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        </td>
    </tr>
</table>
<p></p>
</asp:Content>

