<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="demoQLSV.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grvSinhVien" runat="server" AutoGenerateColumns="False" DataKeyNames="masv" OnRowCancelingEdit="grvSinhVien_RowCancelingEdit" OnRowDataBound="grvSinhVien_RowDataBound" OnRowDeleting="grvSinhVien_RowDeleting" OnRowEditing="grvSinhVien_RowEditing" OnRowUpdating="grvSinhVien_RowUpdating" OnSelectedIndexChanging="grvSinhVien_SelectedIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Mã sinh viên">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("masv") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="hoten" HeaderText="Họ tên" />
                    <asp:TemplateField HeaderText="Giới tính">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlGioiTinh" runat="server" Height="19px" Width="81px">
                                <asp:ListItem Value="1">Nam</asp:ListItem>
                                <asp:ListItem Value="0">Nữ</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# TranslateGT(Eval("gioitinh")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="lop" HeaderText="Lớp" />
                    <asp:BoundField DataField="dtb" HeaderText="Điểm TB" />
                    <asp:CommandField CancelText="Huỷ" DeleteText="Xoá" EditText="Sửa" HeaderText="Chức năng" InsertText="Thêm" NewText="Mới" SelectText="Xem" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Cập nhật" />
                </Columns>
            </asp:GridView>
            <asp:LinkButton ID="lbnThem" runat="server" PostBackUrl="~/StudentAdd.aspx">Thêm mới</asp:LinkButton>
        </div>
    </form>
</body>
</html>
