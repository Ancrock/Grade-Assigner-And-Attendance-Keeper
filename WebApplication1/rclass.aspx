<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="rclass.aspx.cs" Inherits="rclass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Class Summary</p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" AutoGenerateColumns="False" 
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            GridLines="Horizontal" Width="621px" 
            DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id" AllowSorting="True">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
            <Columns>
            
            
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Average" HeaderText="Average" SortExpression="Average" />
                <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />



            </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [class_view] WHERE [Id] = @Id" InsertCommand="INSERT INTO [class_view] ([Class], [Id], [Name], [Average], [Grade]) VALUES (@Class, @Id, @Name, @Average, @Grade)" SelectCommand="SELECT [Class], [Id], [Name], [Average], [Grade] FROM [class_view]" UpdateCommand="UPDATE [class_view] SET [Class] = @Class, [Name] = @Name, [Average] = @Average, [Grade] = @Grade WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Class" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Average" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Class" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Average" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p></p>
    <p></p>
    <p></p>
</asp:Content>

