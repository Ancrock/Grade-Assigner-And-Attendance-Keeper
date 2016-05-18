<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" Inherits="contact" Codebehind="contact.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-size: large;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 283px;
        }
        .auto-style1 {
            font-size: x-large;
            font-weight: normal;
        }
        .auto-style2 {
            width: 279px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p class="auto-style1">ContContact Us</p>
    <p></p>
    <table class="style2">
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" Height="252px" 
                    ImageUrl="C:\Users\Ancrock\Documents\Visual Studio 2013\Projects\WebApplication1\WebApplication1\contact.jpg" Width="276px" />
            </td>
            <td>Amit Chaudhari<br />
                Company Name: ANCROCK TECHNOLOGIES/>
                Phone Number: (714)-(804)-(4603)<br />
                E-Mail Id: ancrock@gmail.com<br />
            </td>
        </tr>
    </table>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
</asp:Content>

