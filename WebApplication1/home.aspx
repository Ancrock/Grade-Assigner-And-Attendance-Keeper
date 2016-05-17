<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="home" Codebehind="home.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .auto-style1 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>

    
        Welcome To Grade Master</p>
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <table class="style1">
        <tr>
            <td>
                Student Report:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            Name:</td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            E-mail</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;Rank</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Grade</td>
                        <td>
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Total Points</td>
                        <td>
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Percentage</td>
                        <td>
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<p>

</p>
<p>

</p>
<p>

</p>
<p>

</p>
<p>

</p>
<p>

</p>
<p>

</p>
</asp:Content>

