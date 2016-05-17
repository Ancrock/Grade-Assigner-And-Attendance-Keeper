<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="rgrade" Codebehind="rgrade.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        background-color: #FF9966;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>GradeBook</p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="sid" DataValueField="sid">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [sid] FROM [student_data]"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </p>
<p></p>
<p></p>
<p>
         <asp:GridView ID="GridView1" runat="server" BackColor="White" AutoGenerateColumns="False" 
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            GridLines="Horizontal" Width="621px" 
            DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id" AllowPaging="True" AllowSorting="True">
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" />
                 <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                 <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                 <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                 <asp:BoundField DataField="Assignment_1" HeaderText="Assignment_1" SortExpression="Assignment_1" />
                 <asp:BoundField DataField="Mid_term" HeaderText="Mid_term" SortExpression="Mid_term" />
                 <asp:BoundField DataField="Assignment_2" HeaderText="Assignment_2" SortExpression="Assignment_2" />
                 <asp:BoundField DataField="Final" HeaderText="Final" SortExpression="Final" />
                 <asp:BoundField DataField="Project" HeaderText="Project" SortExpression="Project" />
                 <asp:BoundField DataField="Average" HeaderText="Average" SortExpression="Average" />
             </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [class_view] WHERE [Id] = @Id" InsertCommand="INSERT INTO [class_view] ([Class], [Id], [Name], [Assignment_1], [Mid_term], [Assignment_2], [Final], [Project], [Average]) VALUES (@Class, @Id, @Name, @Assignment_1, @Mid_term, @Assignment_2, @Final, @Project, @Average)" SelectCommand="SELECT [Class], [Id], [Name], [Assignment_1], [Mid_term], [Assignment_2], [Final], [Project], [Average] FROM [class_view]" UpdateCommand="UPDATE [class_view] SET [Class] = @Class, [Name] = @Name, [Assignment_1] = @Assignment_1, [Mid_term] = @Mid_term, [Assignment_2] = @Assignment_2, [Final] = @Final, [Project] = @Project, [Average] = @Average WHERE [Id] = @Id">
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Class" Type="String" />
                 <asp:Parameter Name="Id" Type="String" />
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Assignment_1" Type="String" />
                 <asp:Parameter Name="Mid_term" Type="String" />
                 <asp:Parameter Name="Assignment_2" Type="String" />
                 <asp:Parameter Name="Final" Type="String" />
                 <asp:Parameter Name="Project" Type="String" />
                 <asp:Parameter Name="Average" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Class" Type="String" />
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Assignment_1" Type="String" />
                 <asp:Parameter Name="Mid_term" Type="String" />
                 <asp:Parameter Name="Assignment_2" Type="String" />
                 <asp:Parameter Name="Final" Type="String" />
                 <asp:Parameter Name="Project" Type="String" />
                 <asp:Parameter Name="Average" Type="String" />
                 <asp:Parameter Name="Id" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
    </p>
</asp:Content>

