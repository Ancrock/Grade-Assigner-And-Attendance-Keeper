<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="rgraph" Codebehind="rgraph.aspx.cs" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Distribution Graph</p>
    <p>
        <asp:Chart ID="Chart3" runat="server" OnLoad="Chart3_Load">
            <Series>
                <asp:Series ChartType="Line" Name="Assignment_1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" >
        </asp:DropDownList>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Generate Graph</asp:LinkButton>
</p>
</asp:Content>

