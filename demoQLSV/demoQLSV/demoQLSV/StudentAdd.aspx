<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAdd.aspx.cs" Inherits="demoQLSV.StudentAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="2">THÊM MỚI SINH VIÊN</td>
                    
                   
                </tr>
                <tr>
                    <td class="auto-style1">Mã sinh viên</td>
                    <td>
                        <asp:TextBox ID="txtMaSV" runat="server" Width="179px"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Họ tên</td>
                    <td>
                        <asp:TextBox ID="txtHoTen" runat="server" Width="179px"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Ngày sinh</td>
                    <td>
                        <asp:TextBox ID="txtNgaySinh" runat="server" TextMode="Date" Width="179px"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Giới tính</td>
                    <td>
                        <asp:DropDownList ID="ddlGioiTinh" runat="server">
                            <asp:ListItem Value="1">Nam</asp:ListItem>
                            <asp:ListItem Value="0">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Lớp</td>
                    <td>
                        <asp:DropDownList ID="ddlLop" runat="server">
                        </asp:DropDownList>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Điểm trung bình</td>
                    <td>
                        <asp:TextBox ID="txtDiemTB" runat="server" Width="179px"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Ghi chú</td>
                    <td>
                        <asp:TextBox ID="txtGhiChu" runat="server" Width="515px"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Student.aspx">&lt;&lt; Quay lại</asp:LinkButton>
                    </td>
                    <td>
                        <asp:Button ID="btnLuu" runat="server" Height="27px" OnClick="btnLuu_Click" Text="Lưu" Width="78px" />
                    </td>
                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
