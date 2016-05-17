<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="ratten" Codebehind="ratten.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 626px;
    }
        .auto-style1 {
            width: 136px;
        }
        .auto-style2 {
            width: 131px;
        }
        .auto-style3 {
            width: 165px;
        }
        .auto-style4 {
            width: 145px;
        }
        .auto-style5 {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Attendance Information</p>
    <p>&nbsp;</p>
<table class="style1">
    <tr>
        <td class="auto-style5">
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
                <asp:ListItem>NOV</asp:ListItem>
                <asp:ListItem>DEC</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            Student Id</td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View Attendance</asp:LinkButton>
        </td>
    </tr>
</table>
<p>&nbsp;</p>
<table class="style1">
    <tr>
        <td class="auto-style1">
            No. of days Present:</td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="auto-style2">
            No.of days Absent:</td>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
        <td class="auto-style3">
            Total Working Days:</td>
        <td>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="auto-style2">
            Total Percentage:</td>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" ForeColor="Black" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" DataKeyNames="aid" DataSourceID="SqlDataSource2">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField HeaderText="aid" DataField="aid" ReadOnly="True" SortExpression="aid" />
        <asp:BoundField HeaderText="sid" DataField="sid" SortExpression="sid" />
            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
            <asp:BoundField DataField="sdate" HeaderText="sdate" SortExpression="sdate" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="amonth" HeaderText="amonth" SortExpression="amonth" />

        </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [atten_data] WHERE [aid] = @aid" InsertCommand="INSERT INTO [atten_data] ([aid], [sid], [cid], [sdate], [status], [amonth]) VALUES (@aid, @sid, @cid, @sdate, @status, @amonth)" SelectCommand="SELECT * FROM [atten_data]" UpdateCommand="UPDATE [atten_data] SET [sid] = @sid, [cid] = @cid, [sdate] = @sdate, [status] = @status, [amonth] = @amonth WHERE [aid] = @aid">
        <DeleteParameters>
            <asp:Parameter Name="aid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="aid" Type="Int32" />
            <asp:Parameter Name="sid" Type="Int32" />
            <asp:Parameter Name="cid" Type="Int32" />
            <asp:Parameter Name="sdate" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="amonth" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="sid" Type="Int32" />
            <asp:Parameter Name="cid" Type="Int32" />
            <asp:Parameter Name="sdate" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="amonth" Type="String" />
            <asp:Parameter Name="aid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;
</asp:Content>

