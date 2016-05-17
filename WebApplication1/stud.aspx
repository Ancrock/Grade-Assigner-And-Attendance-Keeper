<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" Inherits="stud" Codebehind="stud.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Student data</p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" AutoGenerateColumns="False" 
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            GridLines="Horizontal" Width="621px" 
            DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="sid">
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
            
            
                <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" ReadOnly="True" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />



            </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [student_data] WHERE [sid] = @sid" InsertCommand="INSERT INTO [student_data] ([sid], [fname], [lname], [email]) VALUES (@sid, @fname, @lname, @email)" SelectCommand="SELECT [sid], [fname], [lname], [email] FROM [student_data]" UpdateCommand="UPDATE [student_data] SET [fname] = @fname, [lname] = @lname, [email] = @email WHERE [sid] = @sid">
        <DeleteParameters>
            <asp:Parameter Name="sid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sid" Type="Int32" />
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="sid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
</asp:Content>

