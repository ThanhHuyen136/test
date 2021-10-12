<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetail.aspx.cs" Inherits="demoQLSV.StudentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="2">THÔNG TIN SINH VIÊN</td>
                    
                   
                </tr>
                <tr>
                    <td class="auto-style1">Mã sinh viên</td>
                    <td>
                        <asp:Label ID="lblMaSV" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Họ tên</td>
                    <td>
                        <asp:Label ID="lblHoTen" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Ngày sinh</td>
                    <td>
                        <asp:Label ID="lblNgaySinh" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Giới tính</td>
                    <td>
                        <asp:Label ID="lblGioiTinh" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Lớp</td>
                    <td>
                        <asp:Label ID="lblLop" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Điểm trung bình</td>
                    <td>
                        <asp:Label ID="lblDiemTB" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Ghi chú</td>
                    <td>
                        <asp:Label ID="lblGhiChu" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Student.aspx">&lt;&lt; Quay lại</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
