<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="SchoolWebApp_Phase4.Classes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 399px;
        height: 238px;
        position: absolute;
        top: 45px;
        left: 237px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h2>Classes List</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style9" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="classId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="classId" HeaderText="classId" ReadOnly="True" SortExpression="classId" />
                    <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                    <asp:BoundField DataField="SeatsCount" HeaderText="SeatsCount" SortExpression="SeatsCount" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Rainrow238ConnectionString %>" DeleteCommand="DELETE FROM [Classes] WHERE [classId] = @original_classId AND [ClassName] = @original_ClassName AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))" InsertCommand="INSERT INTO [Classes] ([classId], [ClassName], [SeatsCount]) VALUES (@classId, @ClassName, @SeatsCount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName, [SeatsCount] = @SeatsCount WHERE [classId] = @original_classId AND [ClassName] = @original_ClassName AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_classId" Type="Int32" />
                    <asp:Parameter Name="original_ClassName" Type="String" />
                    <asp:Parameter Name="original_SeatsCount" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="classId" Type="Int32" />
                    <asp:Parameter Name="ClassName" Type="String" />
                    <asp:Parameter Name="SeatsCount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClassName" Type="String" />
                    <asp:Parameter Name="SeatsCount" Type="Int32" />
                    <asp:Parameter Name="original_classId" Type="Int32" />
                    <asp:Parameter Name="original_ClassName" Type="String" />
                    <asp:Parameter Name="original_SeatsCount" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </center>
</asp:Content>
