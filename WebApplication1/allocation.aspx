<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="allocation" Codebehind="allocation.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Assignment DIstribution</p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" AutoGenerateColumns="False" 
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            GridLines="Horizontal" Width="647px" 
            DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id" Height="16px">
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
            
            
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            
            
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="Assignment_1" HeaderText="Assignment_1" SortExpression="Assignment_1" />
                <asp:BoundField DataField="Mid_term" HeaderText="Mid_term" SortExpression="Mid_term" />
                <asp:BoundField DataField="Assignment_2" HeaderText="Assignment_2" SortExpression="Assignment_2" />



                <asp:BoundField DataField="Final" HeaderText="Final" SortExpression="Final" />
                <asp:BoundField DataField="Project" HeaderText="Project" SortExpression="Project" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />



            </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [allocate] WHERE [Id] = @Id" InsertCommand="INSERT INTO [allocate] ([Id], [Assignment_1], [Mid_term], [Assignment_2], [Final], [Project], [Total]) VALUES (@Id, @Assignment_1, @Mid_term, @Assignment_2, @Final, @Project, @Total)" SelectCommand="SELECT * FROM [allocate]" UpdateCommand="UPDATE [allocate] SET [Assignment_1] = @Assignment_1, [Mid_term] = @Mid_term, [Assignment_2] = @Assignment_2, [Final] = @Final, [Project] = @Project, [Total] = @Total WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Assignment_1" Type="String" />
            <asp:Parameter Name="Mid_term" Type="String" />
            <asp:Parameter Name="Assignment_2" Type="String" />
            <asp:Parameter Name="Final" Type="String" />
            <asp:Parameter Name="Project" Type="String" />
            <asp:Parameter Name="Total" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Assignment_1" Type="String" />
            <asp:Parameter Name="Mid_term" Type="String" />
            <asp:Parameter Name="Assignment_2" Type="String" />
            <asp:Parameter Name="Final" Type="String" />
            <asp:Parameter Name="Project" Type="String" />
            <asp:Parameter Name="Total" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
</asp:Content>

