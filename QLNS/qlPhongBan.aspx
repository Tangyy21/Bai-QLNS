<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="qlPhongBan.aspx.cs" Inherits="QLNS.qlPhongBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        Phòng Ban
    </div>
    <asp:DropDownList ID="dplphongban" runat="server" DataSourceID="dsphongban" DataTextField="TenPhong" DataValueField="MaPhong" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource ID="dsphongban" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString2 %>" SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsphongbannv" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString3 %>" SelectCommand="SELECT * FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)">
        <SelectParameters>
            <asp:ControlParameter ControlID="dplphongban" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:GridView ID="grpphongban" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="dsphongbannv">
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
            <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV" />
            <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
            <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
        </Columns>
</asp:GridView>
</asp:Content>
