<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="_class" Codebehind="class.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 570px;
    }
        .auto-style1 {
            width: 354px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Add Class</p>
<p>&nbsp;</p>
<table class="style1">
    <tr>
        <td class="auto-style1">
            Class Id (enter Unique ID)</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Generate Random Id" 
                onclick="Button2_Click" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Numbers Only" ForeColor="Red" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Class Name:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Subject Name:</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Start Date:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            End Date:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Professor Name:</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Class Description:</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" Height="109px" Width="369px" OnTextChanged="TextBox7_TextChanged" Rows="5" TextMode="MultiLine"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        </td>
    </tr>
</table>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
</asp:Content>

