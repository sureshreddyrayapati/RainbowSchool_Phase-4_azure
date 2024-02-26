<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="SchoolWebApp_Phase4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 444px;
        height: 238px;
        position: absolute;
        top: 45px;
        left: 218px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h2>Ours Students List</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style9" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="Student_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" ReadOnly="True" SortExpression="Student_Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Student_Address" HeaderText="Student_Address" SortExpression="Student_Address" />
                    <asp:BoundField DataField="class_Id" HeaderText="class_Id" SortExpression="class_Id" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Rainrow238ConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Student_Id] = @original_Student_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [Student_Address] = @original_Student_Address AND (([class_Id] = @original_class_Id) OR ([class_Id] IS NULL AND @original_class_Id IS NULL))" InsertCommand="INSERT INTO [Students] ([Student_Id], [FirstName], [LastName], [Age], [Student_Address], [class_Id]) VALUES (@Student_Id, @FirstName, @LastName, @Age, @Student_Address, @class_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Student_Address] = @Student_Address, [class_Id] = @class_Id WHERE [Student_Id] = @original_Student_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [Student_Address] = @original_Student_Address AND (([class_Id] = @original_class_Id) OR ([class_Id] IS NULL AND @original_class_Id IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Student_Id" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Age" Type="Int32" />
                    <asp:Parameter Name="original_Student_Address" Type="String" />
                    <asp:Parameter Name="original_class_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Student_Id" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Student_Address" Type="String" />
                    <asp:Parameter Name="class_Id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Student_Address" Type="String" />
                    <asp:Parameter Name="class_Id" Type="Int32" />
                    <asp:Parameter Name="original_Student_Id" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Age" Type="Int32" />
                    <asp:Parameter Name="original_Student_Address" Type="String" />
                    <asp:Parameter Name="original_class_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </center>
</asp:Content>
