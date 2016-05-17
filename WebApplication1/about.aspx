<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" Inherits="about" Codebehind="about.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
            color: #FF0000;
        }
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style1"><p class="auto-style2">About Us</p>
    <p style="height: 38px"> </p>
    <p>&nbsp;</p>
        <p style="width: 688px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">&nbsp;We are a group of individuals that are currently pursuing Master's in Computer Science from
        California State University, Fullerton. We have developed this software 'TeacherAid" for a class
        where we had to develop the software according to the predefined requirements and to perform black box
        as well as white box testing. I hope this project will grow in the future and will flourish into an
        actual commercial software deployed across many universities. 
    </span> 
    </p>

</div>
</asp:Content>

