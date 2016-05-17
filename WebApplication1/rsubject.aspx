<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="True" CodeBehind="rsubject.aspx.cs" Inherits="rsubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Subject Summary</p>
<p></p>
<p>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" AutoGenerateColumns="False" CellSpacing="2" DataSourceID="SqlDataSource1" Height="196px" Width="931px" DataKeyNames="cid">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" ReadOnly="True" />
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
            <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [class_data] WHERE [cid] = @cid" InsertCommand="INSERT INTO [class_data] ([cid], [cname], [sname], [start_date], [end_date], [Professor], [Description]) VALUES (@cid, @cname, @sname, @start_date, @end_date, @Professor, @Description)" SelectCommand="SELECT * FROM [class_data]" UpdateCommand="UPDATE [class_data] SET [cname] = @cname, [sname] = @sname, [start_date] = @start_date, [end_date] = @end_date, [Professor] = @Professor, [Description] = @Description WHERE [cid] = @cid">
        <DeleteParameters>
            <asp:Parameter Name="cid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cid" Type="Int32" />
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter Name="start_date" Type="String" />
            <asp:Parameter Name="end_date" Type="String" />
            <asp:Parameter Name="Professor" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter Name="start_date" Type="String" />
            <asp:Parameter Name="end_date" Type="String" />
            <asp:Parameter Name="Professor" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="cid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p></p>
<p></p>
<p></p>
</asp:Content>

