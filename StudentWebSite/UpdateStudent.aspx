<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="UpdateStudent.aspx.cs" Inherits="UpdateStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form ID="frmUpdateStudent" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="lblID" for="txtOgrenciID" runat="server" Text="Öğrenci ID"></asp:Label>
                <asp:TextBox ID="txtOgrenciID" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblAd" for="txtOgrenciAd" runat="server" Text="Öğrenci Ad"></asp:Label>
                <asp:TextBox ID="txtOgrenciAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblSoyad" for="txtOgrenciSoyad" runat="server" Text="Öğrenci Soyad"></asp:Label>
                <asp:TextBox ID="txtOgrenciSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblKulup" for="ddlKulup" runat="server" Text="Kulüp"></asp:Label>
                <asp:DropDownList ID="ddlKulup" DataValueField="KulupId" DataSourceID="SqlDataSourceKulup" runat="server" CssClass="form-control" DataTextField="KulupAd"></asp:DropDownList><asp:SqlDataSource runat="server" ID="SqlDataSourceKulup" ConnectionString="<%$ ConnectionStrings:BilSisOkulConnectionString %>" SelectCommand="SELECT * FROM [tbl_Kulupler]"></asp:SqlDataSource>
            </div><br/>
            <div>
                <asp:Label ID="lblCinsiyet" for="txtCinsiyet" runat="server" Text="Cinsiyet"></asp:Label>
                <asp:TextBox ID="txtCinsiyet" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblTelefon" for="txtTelefon" runat="server" Text="Telefon"></asp:Label>
                <asp:TextBox ID="txtTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblMail" for="txtMail" runat="server" Text="Eposta"></asp:Label>
                <asp:TextBox ID="txtMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblFotograf" for="txtFotograf" runat="server" Text="Fotoğraf"></asp:Label>
                <asp:TextBox ID="txtFotograf" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblSifre" for="txtSifre" runat="server" Text="Şifre"></asp:Label>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />
        </div>
    </form>
</asp:Content>

