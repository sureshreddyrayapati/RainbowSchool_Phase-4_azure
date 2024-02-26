<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="SchoolWebApp_Phase4.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 417px;
        height: 214px;
        position: absolute;
        top: 55px;
        left: 242px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h1>Teachers List</h1>
        <p>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style9" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="TeacherId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
                    <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher_Name" SortExpression="Teacher_Name" />
                    <asp:BoundField DataField="TSubject" HeaderText="TSubject" SortExpression="TSubject" />
                    <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Rainrow238ConnectionString %>" DeleteCommand="DELETE FROM [Teachers] WHERE [TeacherId] = @original_TeacherId AND [Teacher_Name] = @original_Teacher_Name AND [TSubject] = @original_TSubject AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL))" InsertCommand="INSERT INTO [Teachers] ([TeacherId], [Teacher_Name], [TSubject], [Experience]) VALUES (@TeacherId, @Teacher_Name, @TSubject, @Experience)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:Rainrow238ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Teachers]" UpdateCommand="UPDATE [Teachers] SET [Teacher_Name] = @Teacher_Name, [TSubject] = @TSubject, [Experience] = @Experience WHERE [TeacherId] = @original_TeacherId AND [Teacher_Name] = @original_Teacher_Name AND [TSubject] = @original_TSubject AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_TeacherId" Type="Int32" />
                    <asp:Parameter Name="original_Teacher_Name" Type="String" />
                    <asp:Parameter Name="original_TSubject" Type="String" />
                    <asp:Parameter Name="original_Experience" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TeacherId" Type="Int32" />
                    <asp:Parameter Name="Teacher_Name" Type="String" />
                    <asp:Parameter Name="TSubject" Type="String" />
                    <asp:Parameter Name="Experience" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Teacher_Name" Type="String" />
                    <asp:Parameter Name="TSubject" Type="String" />
                    <asp:Parameter Name="Experience" Type="Int32" />
                    <asp:Parameter Name="original_TeacherId" Type="Int32" />
                    <asp:Parameter Name="original_Teacher_Name" Type="String" />
                    <asp:Parameter Name="original_TSubject" Type="String" />
                    <asp:Parameter Name="original_Experience" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </center>
</asp:Content>
