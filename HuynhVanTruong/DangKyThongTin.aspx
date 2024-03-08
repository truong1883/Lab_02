<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="HuynhVanTruong.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center"> Đăng ký hồ sơ</h2>
            <div class="row border borger-primary bg-nen1">
                <div class="col-md-8 p-2 text-center">
                    thông tin đăng ký
                </div>
                <div class="col-4 pt-2 text-center borger border-left border-primary">
                    Hồ sơ đăng Khách hàng:
                </div>
            </div>
            <div class="row border border-primary">
                <div class="col-md-8">
                    <div class=" row mt-2 mb-2 ">
                        <div class="col-md-3">
                            tên Đăng nhập
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtTenDN" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTenDN" Text="(*)"  runat="server" ErrorMessage="tên dang nhap khong duoc bo trong" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtTenDN"> </asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class=" row mt-2 mb-2 ">
                        <div class="col-md-3">
                           Mật khẩu
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtMatKhau" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMatKhau" Text="(*)"  runat="server" ErrorMessage="MK  khong duoc bo trong" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtMatKhau">

                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class=" row mt-2 mb-2 ">
                        <div class="col-md-3">
                            Mật khẩu nhập lại
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtMKNL" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMKNL" Text="(*)"  runat="server" ErrorMessage="MK nhập lại khong duoc bo trong" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtMKNL"> </asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvMatKhau" Text="(*)" runat="server" ErrorMessage="Nhaapj lại MK không dúng" Display="Dynamic" ControlToValidate="txtMKNL" ControlToCompare="txtMatKhau" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row mb-2 bg-nen1">
                        <div class="col-md-12 text-center p-2">
                            Thôn tin cá nhân
                        </div>
                      </div>
                        <div class="row mb-2">
                            <div class="col-md-3">
                                họ tên Khách hàng
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="txtHoten" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvHoten" Text="(*)"  runat="server" ErrorMessage="chưa nhập họ tên" Display="Dynamic" ForeColor="#CC0000" ControlToValidate="txtTenDN"> </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-3">
                                Ngày sinh
                            </div>                         
                            <div class="col-md-9">
                                <div class="form-inline">
                                    <asp:DropDownList ID="ddlNgay" CssClass="form-control" runat="server"></asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="rfvNgay" Text="(*)"  runat="server" ErrorMessage="chưa chọn ngày"  ControlToValidate="ddlNgay"
                                         Display="Dynamic" ForeColor="#CC0000"> </asp:RequiredFieldValidator>

                                    <asp:DropDownList ID="ddlThang" CssClass="form-control" runat="server"></asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="rfvThang" Text="(*)"  runat="server" ErrorMessage="chưa chọn tháng"  ControlToValidate="ddlThang"
                                         Display="Dynamic" ForeColor="#CC0000"> </asp:RequiredFieldValidator>

                                    <asp:DropDownList ID="ddlNam" CssClass="form-control" runat="server"></asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="rfvNam" Text="(*)"  runat="server" ErrorMessage="chưa chọn tháng"  ControlToValidate="ddlNam"
                                         Display="Dynamic" ForeColor="#CC0000"> </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                     <div class="row mb-2">
                            <div class="col-md-3">
                                Email
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" Text="(*)" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Email không hợp lệ"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                     <div class="row mb-2">
                            <div class="col-md-3">
                                Thu nhập
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RangeValidator ID="rvThuNhap" Text="(*)" MinimumValue="1000000" MaximumValue="50000000" runat="server" ErrorMessage="thu nhập hơp lẹ từ [1-50] triệu" ControlToValidate="txtThuNhap"></asp:RangeValidator>
                            </div>
                        </div>
                     <div class="row mb-2">
                            <div class="col-md-3">
                               giới tính
                            </div>
                            <div class="col-md-9">                            
                                <asp:CheckBox ID="cbGT" runat="server"  Text="Nam"/>
                            </div>
                        </div>
                     <div class="row mb-2">
                            <div class="col-md-3">
                               Địa chỉ
                            </div>
                            <div class="col-md-9">                            
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </div>
                        </div>
                     <div class="row mb-2">
                            <div class="col-md-3">
                               Số diện thoại
                            </div>
                            <div class="col-md-9">                            
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </div>
                        </div>
                      <div class="row mb-2">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="btnDangKy" runat="server" OnClick="btDangKy" Text="đăng ký" />  
                    </div>                 
                </div>                                 
                </div>
                <div class="col-md-4">
                     <asp:Label ID="lblKetQua" ForeColor="#cc3300" runat="server" Text=""></asp:Label>
                  <asp:ValidationSummary ID="vsTongHopLoi" ForeColor="#ff3300" HeaderText="Danh Sach Loi" runat="server" />
                    </div>
            
            </div>                 
    </form>
</body>
</html>
