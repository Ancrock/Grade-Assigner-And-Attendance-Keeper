﻿<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="assign" Codebehind="assign.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 305px;
    }
        .auto-style5 {
            width: 305px;
            height: 13px;
        }
        .auto-style6 {
            height: 13px;
        }
        .auto-style11 {
            width: 305px;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
        }
        .auto-style17 {
            width: 305px;
            height: 23px;
        }
        .auto-style18 {
            height: 23px;
        }
        .auto-style23 {
            width: 305px;
            height: 25px;
        }
        .auto-style24 {
            height: 25px;
        }
        .auto-style25 {
            width: 305px;
            height: 21px;
        }
        .auto-style26 {
            height: 21px;
        }
        .auto-style27 {
            width: 305px;
            height: 26px;
        }
        .auto-style28 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Add Assignment&nbsp;</p>
<p>&nbsp;</p>
<table class="style1">
    <tr>
        <td class="style2">
            Student Id</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please check that the grades have not already been assigned for the ID. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Class Id</td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Load GradeScale</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;Make sure that the grade scale is aready defined.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
&nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            Assignment Type</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Assignment_1</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Points</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">
        </td>
        <td class="auto-style24">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Assignment Type</td>
        <td>
            <asp:DropDownList ID="DropDownList5" runat="server" Height="16px">
                <asp:ListItem>Mid_term</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            Points</td>
        <td class="auto-style12">
            <asp:DropDownList ID="DropDownList6" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style25">
            </td>
        <td class="auto-style26">
            </td>
    </tr>
    <tr>
        <td class="style2">
            Assignment Type</td>
        <td>
            <asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem>Assignment_2</asp:ListItem>

            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            Points</td>
        <td class="auto-style6">
            <asp:DropDownList ID="DropDownList8" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">
        </td>
        <td class="auto-style28">
        </td>
    </tr>
    <tr>
        <td class="style2">
            Assignment Type</td>
        <td>
            <asp:DropDownList ID="DropDownList9" runat="server">
                <asp:ListItem>Final</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Points</td>
        <td>
            <asp:DropDownList ID="DropDownList10" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">
        </td>
        <td class="auto-style28">
        </td>
    </tr>
    <tr>
        <td class="style2">
            Assignment Type</td>
        <td>
            <asp:DropDownList ID="DropDownList11" runat="server">
                <asp:ListItem>Project</asp:ListItem>

            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">
            Points</td>
        <td class="auto-style18">
            <asp:DropDownList ID="DropDownList12" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">
            &nbsp;</td>
        <td class="auto-style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label5" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="Submit" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            <br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<p>
    &nbsp;</p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
</asp:Content>

